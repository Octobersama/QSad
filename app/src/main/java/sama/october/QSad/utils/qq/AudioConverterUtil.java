package sama.october.QSad.utils.qq;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.util.Log;
import android.view.Surface;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import sama.october.QSad.BuildConfig;
import sama.october.QSad.utils.data.DataUtils;
import sama.october.QSad.utils.error.ErrorOutput;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.FieldUtils;
import sama.october.QSad.utils.reflect.MethodUtils;

public class AudioConverterUtil {
    private static final String TAG = "AudioConverterUtil";
    private static Method sAppendBuffer;
    private static Method sCreateBufferTask;
    private static final ExecutorService sExecutor = Executors.newSingleThreadExecutor();
    private static Method sFlushMethod;
    private static Method sInitSilkCodecWrapper;
    private static Class<?> sPttBufferImpl;
    private static Method sReadMethod;
    private static Method sReleaseMethod;
    private static Class<?> sSilkCodecWrapper;

    public interface ConversionCallback {
        void onError(Throwable th) throws IOException;

        void onProgress(int i, String str);

        void onSuccess(String str) throws IOException;
    }

    static {
        try {
            initMethod();
        } catch (Throwable th) {
            ErrorOutput.Error(TAG, th);
        }
    }

    public static void convertMp3ApiToSilk(final String url, final String outputPath, final ConversionCallback callback) {
        sExecutor.execute(new Runnable() {
            @Override
            public void run() {
                try {
                    callback.onProgress(0, "开始下载MP3数据");
                    byte[] mp3Data = fetchMp3FromApi(url);
                    if (mp3Data != null && mp3Data.length != 0) {
                        callback.onProgress(30, "MP3数据下载完成，开始转换为PCM");
                        byte[] pcmData = convertMp3ToPcm(mp3Data);
                        if (pcmData != null && pcmData.length != 0) {
                            callback.onProgress(70, "PCM转换完成，开始转换为SILK");
                            convertAndWriteSilkFile(pcmData, outputPath);
                            callback.onProgress(100, "转换完成");
                            callback.onSuccess(outputPath);
                            return;
                        }
                        callback.onError(new IOException("MP3转PCM失败"));
                        return;
                    }
                    callback.onError(new IOException("获取MP3数据失败"));
                } catch (Throwable th) {
                    try {
                        callback.onError(th);
                    } catch (IOException e) {
                        ErrorOutput.Error(TAG, e);
                    }
                }
            }
        });
    }

    private static byte[] fetchMp3FromApi(String url) throws IOException {
        try {
            HttpURLConnection connection = (HttpURLConnection) new URL(url).openConnection();
            connection.setRequestMethod("GET");
            if (connection.getResponseCode() != 200) {
                return null;
            }
            InputStream inputStream = connection.getInputStream();
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            byte[] buffer = new byte[4096];
            while (true) {
                int bytesRead = inputStream.read(buffer);
                if (bytesRead != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                } else {
                    inputStream.close();
                    return outputStream.toByteArray();
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "获取MP3数据失败", e);
            return null;
        }
    }

    private static byte[] convertMp3ToPcm(byte[] mp3Data) throws Throwable {
        MediaExtractor extractor = null;
        File tempFile = null;
        MediaCodec decoder = null;
        try {
            tempFile = DataUtils.createFile("temp", "temp.mp3");
            try {
                FileOutputStream fos = new FileOutputStream(tempFile);
                try {
                    fos.write(mp3Data);
                    fos.close();
                    extractor = new MediaExtractor();
                } catch (Throwable th) {
                    try {
                        fos.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Exception e) {
                Log.e(TAG, "MP3转PCM失败", e);
                cleanupResources(decoder, extractor, tempFile);
                return null;
            } catch (Throwable th) {
                cleanupResources(decoder, extractor, tempFile);
                throw th;
            }
            try {
                extractor.setDataSource(tempFile.getAbsolutePath());
                int audioTrack = findAudioTrack(extractor);
                if (audioTrack == -1) {
                    Log.e(TAG, "未找到音频轨道");
                    cleanupResources(null, extractor, tempFile);
                    return null;
                }
                extractor.selectTrack(audioTrack);
                MediaFormat format = extractor.getTrackFormat(audioTrack);
                decoder = MediaCodec.createDecoderByType(format.getString("mime"));
                try {
                    try {
                        decoder.configure(format, (Surface) null, (MediaCrypto) null, 0);
                        decoder.start();
                        byte[] pcmData = decodeAudioData(extractor, decoder);
                        cleanupResources(decoder, extractor, tempFile);
                        return pcmData;
                    } catch (Exception e) {
                        Log.e(TAG, "MP3转PCM失败", e);
                        cleanupResources(decoder, extractor, tempFile);
                        return null;
                    }
                } catch (Throwable th) {
                    cleanupResources(decoder, extractor, tempFile);
                    throw th;
                }
            } catch (Exception e) {
                Log.e(TAG, "MP3转PCM失败", e);
                cleanupResources(decoder, extractor, tempFile);
                return null;
            } catch (Throwable th) {
                cleanupResources(decoder, extractor, tempFile);
                throw th;
            }
        } catch (Exception e) {
            Log.e(TAG, "MP3转PCM失败", e);
            cleanupResources(decoder, extractor, tempFile);
            return null;
        } catch (Throwable th) {
            cleanupResources(decoder, extractor, tempFile);
            throw th;
        }
    }

    private static int findAudioTrack(MediaExtractor extractor) {
        for (int i = 0; i < extractor.getTrackCount(); i++) {
            if (extractor.getTrackFormat(i).getString("mime").startsWith("audio/")) {
                return i;
            }
        }
        return -1;
    }

    private static byte[] decodeAudioData(MediaExtractor extractor, MediaCodec decoder) throws MediaCodec.CryptoException, IOException {
        ByteBuffer[] inputBuffers = decoder.getInputBuffers();
        ByteBuffer[] outputBuffers = decoder.getOutputBuffers();
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        boolean isEOS = false;
        boolean inputDone = false;
        while (!isEOS) {
            if (!inputDone) {
                int inputBufferIndex = decoder.dequeueInputBuffer(10000L);
                if (inputBufferIndex >= 0) {
                    int sampleSize = extractor.readSampleData(inputBuffers[inputBufferIndex], 0);
                    if (sampleSize < 0) {
                        decoder.queueInputBuffer(inputBufferIndex, 0, 0, 0L, MediaCodec.BUFFER_FLAG_END_OF_STREAM);
                        inputDone = true;
                    } else {
                        decoder.queueInputBuffer(inputBufferIndex, 0, sampleSize, extractor.getSampleTime(), 0);
                        extractor.advance();
                    }
                }
            }
            int outputBufferIndex = decoder.dequeueOutputBuffer(bufferInfo, 10000L);
            if (outputBufferIndex >= 0) {
                if (bufferInfo.size > 0) {
                    ByteBuffer outputBuffer = outputBuffers[outputBufferIndex];
                    outputBuffer.position(bufferInfo.offset);
                    outputBuffer.limit(bufferInfo.offset + bufferInfo.size);
                    byte[] pcmChunk = new byte[bufferInfo.size];
                    outputBuffer.get(pcmChunk);
                    outputStream.write(pcmChunk);
                }
                decoder.releaseOutputBuffer(outputBufferIndex, false);
                if ((bufferInfo.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) {
                    isEOS = true;
                }
            }
        }
        return outputStream.toByteArray();
    }

    private static void cleanupResources(MediaCodec decoder, MediaExtractor extractor, File file) {
        if (decoder != null) {
            decoder.stop();
            decoder.release();
        }
        if (extractor != null) {
            extractor.release();
        }
        if (file != null && file.exists()) {
            file.delete();
        }
    }

    private static void convertAndWriteSilkFile(byte[] pcmData, String outputPath) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Object silkCodec = ClassUtils.makeDefaultObject(sSilkCodecWrapper, HostInfo.getHostContext());
        Object pttBuffer = ClassUtils.makeDefaultObject(sPttBufferImpl, new Object[0]);
        sInitSilkCodecWrapper.invoke(silkCodec, 16000, 16000, 1);
        sCreateBufferTask.invoke(pttBuffer, outputPath);
        sAppendBuffer.invoke(pttBuffer, outputPath, new byte[]{2, 35, 33, 83, 73, 76, 75, 95, 86, 51}, 10);
        processPcmData(pcmData, silkCodec, pttBuffer, outputPath);
        sFlushMethod.invoke(pttBuffer, outputPath);
        sReleaseMethod.invoke(silkCodec, (Object[]) null);
    }

    private static void processPcmData(byte[] pcmData, Object silkCodec, Object pttBuffer, String outputPath) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int totalLength = pcmData.length;
        int blockCount = totalLength / 640;
        int remainder = totalLength % 640;
        int blockIndex = 0;
        while (blockIndex < blockCount) {
            int startOffset = blockIndex * 640;
            blockIndex++;
            processDataBlock(silkCodec, pttBuffer, outputPath, Arrays.copyOfRange(pcmData, startOffset, blockIndex * 640));
        }
        if (remainder > 0) {
            processDataBlock(silkCodec, pttBuffer, outputPath, Arrays.copyOfRange(pcmData, blockCount * 640, totalLength));
        }
    }

    private static void processDataBlock(Object silkCodec, Object pttBuffer, String outputPath, byte[] block) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Object result;
        try {
            result = sReadMethod.invoke(silkCodec, block, 0, Integer.valueOf(block.length));
        } catch (Exception unused) {
            result = sReadMethod.invoke(silkCodec, 0, Integer.valueOf(block.length), block);
        }
        byte[] encodedData = (byte[]) FieldUtils.create(result).ofType(byte[].class).getValue();
        int outputLength = getOutputLength(result);
        if (outputLength > 0) {
            sAppendBuffer.invoke(pttBuffer, outputPath, encodedData, Integer.valueOf(outputLength));
        }
    }

    private static int getOutputLength(Object result) throws SecurityException {
        for (Field field : result.getClass().getDeclaredFields()) {
            if (field.getType() == Integer.TYPE) {
                field.setAccessible(true);
                try {
                    int value = ((Integer) field.get(result)).intValue();
                    if (value != 0) {
                        return value;
                    }
                } catch (IllegalAccessException e) {
                    // 忽略并继续
                }
            }
        }
        return 0;
    }

    private static void initMethod() throws Exception {
        sSilkCodecWrapper = ClassUtils.load("com.tencent.mobileqq.utils.SilkCodecWrapper");
        sPttBufferImpl = ClassUtils.load("com.tencent.mobileqq.pttlogic.api.impl.PttBufferImpl");
        MethodUtils.Finder finder = MethodUtils.create(sSilkCodecWrapper).withReturnType(Void.TYPE);
        Class intClass = Integer.TYPE;
        sInitSilkCodecWrapper = finder.withParamTypes(intClass, intClass, intClass).findOne();
        try {
            sReadMethod = (Method) ((List) MethodUtils.create(sSilkCodecWrapper).withParamTypes(byte[].class, intClass, intClass).findAll().stream().filter(new Predicate<Method>() {
                @Override
                public boolean test(Method method) {
                    return method.getReturnType() != Integer.TYPE;
                }
            }).collect(Collectors.toList())).get(0);
        } catch (Exception unused) {
            sReadMethod = MethodUtils.create(sSilkCodecWrapper).withParamTypes(intClass, intClass, byte[].class).findOne();
        }
        sReleaseMethod = MethodUtils.create(sSilkCodecWrapper).withMethodName("release").findOne();
        sCreateBufferTask = MethodUtils.create(sPttBufferImpl).withMethodName("createBufferTask").findOne();
        sAppendBuffer = MethodUtils.create(sPttBufferImpl).withMethodName("appendBuffer").findOne();
        sFlushMethod = MethodUtils.create(sPttBufferImpl).withMethodName("flush").findOne();
    }
}
