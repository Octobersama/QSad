.class public Lme/yxp/qfun/utils/qq/AudioConverterUtil;
.super Ljava/lang/Object;
.source "AudioConverterUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioConverterUtil"

.field private static sAppendBuffer:Ljava/lang/reflect/Method;

.field private static sCreateBufferTask:Ljava/lang/reflect/Method;

.field private static final sExecutor:Ljava/util/concurrent/ExecutorService;

.field private static sFlushMethod:Ljava/lang/reflect/Method;

.field private static sInitSilkCodecWrapper:Ljava/lang/reflect/Method;

.field private static sPttBufferImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sReadMethod:Ljava/lang/reflect/Method;

.field private static sReleaseMethod:Ljava/lang/reflect/Method;

.field private static sSilkCodecWrapper:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$XrzozcJkuaq6mcQYaytAnOqEKzI(Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 52
    :try_start_0
    const-string v0, "开始下载MP3数据"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;->onProgress(ILjava/lang/String;)V

    .line 53
    invoke-static {p1}, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->fetchMp3FromApi(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_43

    .line 55
    array-length v0, p1

    if-nez v0, :cond_10

    goto :goto_43

    .line 60
    :cond_10
    const-string v0, "MP3数据下载完成，开始转换为PCM"

    const/16 v1, 0x1e

    invoke-interface {p0, v1, v0}, Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;->onProgress(ILjava/lang/String;)V

    .line 61
    invoke-static {p1}, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->convertMp3ToPcm([B)[B

    move-result-object p1

    if-eqz p1, :cond_38

    .line 63
    array-length v0, p1

    if-nez v0, :cond_21

    goto :goto_38

    .line 68
    :cond_21
    const-string v0, "PCM转换完成，开始转换为SILK"

    const/16 v1, 0x46

    invoke-interface {p0, v1, v0}, Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;->onProgress(ILjava/lang/String;)V

    .line 69
    invoke-static {p1, p2}, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->convertAndWriteSilkFile([BLjava/lang/String;)V

    .line 70
    const-string p1, "转换完成"

    const/16 v0, 0x64

    invoke-interface {p0, v0, p1}, Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;->onProgress(ILjava/lang/String;)V

    .line 71
    invoke-interface {p0, p2}, Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;->onSuccess(Ljava/lang/String;)V

    return-void

    :catchall_36
    move-exception p1

    goto :goto_4e

    .line 64
    :cond_38
    :goto_38
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MP3转PCM失败"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 56
    :cond_43
    :goto_43
    new-instance p1, Ljava/io/IOException;

    const-string p2, "获取MP3数据失败"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_36

    return-void

    .line 74
    :goto_4e
    invoke-interface {p0, p1}, Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vjzpHd5siEpEIyXilI6QOU_eTfU(Ljava/lang/reflect/Method;)Z
    .registers 2

    .line 287
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sExecutor:Ljava/util/concurrent/ExecutorService;

    .line 43
    :try_start_6
    invoke-static {}, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->initMethod()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    .line 45
    const-string v1, "AudioConverterUtil"

    invoke-static {v1, v0}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanupResources(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;Ljava/io/File;)V
    .registers 3

    if-eqz p0, :cond_8

    .line 204
    invoke-virtual {p0}, Landroid/media/MediaCodec;->stop()V

    .line 205
    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    :cond_8
    if-eqz p1, :cond_d

    .line 208
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->release()V

    :cond_d
    if-eqz p2, :cond_18

    .line 210
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 211
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_18
    return-void
.end method

.method private static convertAndWriteSilkFile([BLjava/lang/String;)V
    .registers 7

    .line 216
    sget-object v0, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sSilkCodecWrapper:Ljava/lang/Class;

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 217
    sget-object v1, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sPttBufferImpl:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 219
    sget-object v2, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sInitSilkCodecWrapper:Ljava/lang/reflect/Method;

    const/16 v3, 0x3e80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v2, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sCreateBufferTask:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xa

    .line 222
    new-array v3, v2, [B

    fill-array-data v3, :array_5c

    .line 223
    sget-object v4, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sAppendBuffer:Ljava/lang/reflect/Method;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {p0, v0, v1, p1}, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->processPcmData([BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    sget-object p0, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sFlushMethod:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object p0, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sReleaseMethod:Ljava/lang/reflect/Method;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_5c
    .array-data 1
        0x2t
        0x23t
        0x21t
        0x53t
        0x49t
        0x4ct
        0x4bt
        0x5ft
        0x56t
        0x33t
    .end array-data
.end method

.method public static convertMp3ApiToSilk(Ljava/lang/String;Ljava/lang/String;Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;)V
    .registers 5

    .line 50
    sget-object v0, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lme/yxp/qfun/utils/qq/AudioConverterUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p0, p1}, Lme/yxp/qfun/utils/qq/AudioConverterUtil$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static convertMp3ToPcm([B)[B
    .registers 7

    .line 105
    const-string v0, "AudioConverterUtil"

    const/4 v1, 0x0

    .line 110
    :try_start_3
    const-string v2, "temp"

    const-string v3, "temp.mp3"

    invoke-static {v2, v3}, Lme/yxp/qfun/utils/data/DataUtils;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_71
    .catchall {:try_start_3 .. :try_end_b} :catchall_6d

    .line 111
    :try_start_b
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_5f
    .catchall {:try_start_b .. :try_end_10} :catchall_5c

    .line 112
    :try_start_10
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_63

    .line 113
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 115
    new-instance p0, Landroid/media/MediaExtractor;

    invoke-direct {p0}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1b} :catch_5f
    .catchall {:try_start_13 .. :try_end_1b} :catchall_5c

    .line 116
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 118
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->findAudioTrack(Landroid/media/MediaExtractor;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_37

    .line 120
    const-string v3, "未找到音频轨道"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2e} :catch_34
    .catchall {:try_start_1b .. :try_end_2e} :catchall_32

    .line 138
    invoke-static {v1, p0, v2}, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->cleanupResources(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;Ljava/io/File;)V

    return-object v1

    :catchall_32
    move-exception v0

    goto :goto_7e

    :catch_34
    move-exception v3

    move-object v4, v1

    goto :goto_75

    .line 124
    :cond_37
    :try_start_37
    invoke-virtual {p0, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 125
    invoke-virtual {p0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 127
    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_48} :catch_34
    .catchall {:try_start_37 .. :try_end_48} :catchall_32

    const/4 v5, 0x0

    .line 129
    :try_start_49
    invoke-virtual {v4, v3, v1, v1, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 130
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 132
    invoke-static {p0, v4}, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->decodeAudioData(Landroid/media/MediaExtractor;Landroid/media/MediaCodec;)[B

    move-result-object v0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_53} :catch_5a
    .catchall {:try_start_49 .. :try_end_53} :catchall_57

    .line 138
    invoke-static {v4, p0, v2}, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->cleanupResources(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;Ljava/io/File;)V

    return-object v0

    :catchall_57
    move-exception v0

    move-object v1, v4

    goto :goto_7e

    :catch_5a
    move-exception v3

    goto :goto_75

    :catchall_5c
    move-exception v0

    move-object p0, v1

    goto :goto_7e

    :catch_5f
    move-exception v3

    move-object p0, v1

    move-object v4, p0

    goto :goto_75

    :catchall_63
    move-exception p0

    .line 111
    :try_start_64
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_6c

    :catchall_68
    move-exception v3

    :try_start_69
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6c
    throw p0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6d} :catch_5f
    .catchall {:try_start_69 .. :try_end_6d} :catchall_5c

    :catchall_6d
    move-exception v0

    move-object p0, v1

    move-object v2, p0

    goto :goto_7e

    :catch_71
    move-exception v3

    move-object p0, v1

    move-object v2, p0

    move-object v4, v2

    .line 135
    :goto_75
    :try_start_75
    const-string v5, "MP3转PCM失败"

    invoke-static {v0, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_57

    .line 138
    invoke-static {v4, p0, v2}, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->cleanupResources(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;Ljava/io/File;)V

    return-object v1

    :goto_7e
    invoke-static {v1, p0, v2}, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->cleanupResources(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;Ljava/io/File;)V

    .line 139
    throw v0
.end method

.method private static decodeAudioData(Landroid/media/MediaExtractor;Landroid/media/MediaCodec;)[B
    .registers 20

    move-object/from16 v0, p1

    .line 154
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 155
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 156
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 159
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v11, 0x0

    move v12, v11

    move v13, v12

    :cond_17
    :goto_17
    if-nez v12, :cond_80

    const-wide/16 v1, 0x2710

    if-nez v13, :cond_51

    move-wide v2, v1

    .line 163
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    if-ltz v1, :cond_4f

    .line 165
    aget-object v4, v7, v1

    move-object/from16 v15, p0

    .line 166
    invoke-virtual {v15, v4, v11}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    if-gez v4, :cond_3e

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move-wide/from16 v16, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-wide/from16 v14, v16

    .line 170
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    move-object/from16 v0, p1

    const/4 v13, 0x1

    goto :goto_52

    :cond_3e
    move-wide v14, v2

    move v3, v4

    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    .line 173
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_52

    :cond_4f
    move-wide v14, v2

    goto :goto_52

    :cond_51
    move-wide v14, v1

    .line 179
    :goto_52
    invoke-virtual {v0, v9, v14, v15}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    if-ltz v1, :cond_17

    .line 181
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v2, :cond_75

    .line 182
    aget-object v2, v8, v1

    .line 183
    iget v3, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 184
    iget v3, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 186
    iget v3, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v3, v3, [B

    .line 187
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 188
    invoke-virtual {v10, v3}, Ljava/io/OutputStream;->write([B)V

    .line 191
    :cond_75
    invoke-virtual {v0, v1, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 193
    iget v1, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_17

    const/4 v12, 0x1

    goto :goto_17

    .line 199
    :cond_80
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static fetchMp3FromApi(Ljava/lang/String;)[B
    .registers 5

    .line 81
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 83
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_41

    .line 86
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 87
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    .line 89
    new-array v1, v1, [B

    .line 91
    :goto_25
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_31

    const/4 v3, 0x0

    .line 92
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_25

    .line 95
    :cond_31
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 96
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    return-object p0

    :catch_39
    move-exception p0

    .line 99
    const-string v0, "AudioConverterUtil"

    const-string v1, "获取MP3数据失败"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_41
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findAudioTrack(Landroid/media/MediaExtractor;)I
    .registers 4

    const/4 v0, 0x0

    .line 143
    :goto_1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 144
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    .line 145
    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string v2, "audio/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 p0, -0x1

    return p0
.end method

.method private static getOutputLength(Ljava/lang/Object;)I
    .registers 8

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_2b

    aget-object v4, v0, v3

    .line 264
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_28

    const/4 v5, 0x1

    .line 265
    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 266
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_28

    return v4

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_2b
    return v2
.end method

.method private static initMethod()V
    .registers 4

    .line 274
    const-class v0, [B

    const-string v1, "com.tencent.mobileqq.utils.SilkCodecWrapper"

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sSilkCodecWrapper:Ljava/lang/Class;

    .line 275
    const-string v1, "com.tencent.mobileqq.pttlogic.api.impl.PttBufferImpl"

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sPttBufferImpl:Ljava/lang/Class;

    .line 277
    sget-object v1, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sSilkCodecWrapper:Ljava/lang/Class;

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 278
    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v2, v2}, [Ljava/lang/Class;

    move-result-object v3

    .line 279
    invoke-virtual {v1, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    .line 280
    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sInitSilkCodecWrapper:Ljava/lang/reflect/Method;

    .line 283
    :try_start_2e
    sget-object v1, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sSilkCodecWrapper:Ljava/lang/Class;

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    filled-new-array {v0, v2, v2}, [Ljava/lang/Class;

    move-result-object v3

    .line 284
    invoke-virtual {v1, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    .line 285
    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findAll()Ljava/util/List;

    move-result-object v1

    .line 286
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lme/yxp/qfun/utils/qq/AudioConverterUtil$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lme/yxp/qfun/utils/qq/AudioConverterUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 287
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 288
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    .line 289
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    sput-object v1, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sReadMethod:Ljava/lang/reflect/Method;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_60} :catch_61

    goto :goto_75

    .line 291
    :catch_61
    sget-object v1, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sSilkCodecWrapper:Ljava/lang/Class;

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    filled-new-array {v2, v2, v0}, [Ljava/lang/Class;

    move-result-object v0

    .line 292
    invoke-virtual {v1, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sReadMethod:Ljava/lang/reflect/Method;

    .line 296
    :goto_75
    sget-object v0, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sSilkCodecWrapper:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "release"

    .line 297
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sReleaseMethod:Ljava/lang/reflect/Method;

    .line 300
    sget-object v0, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sPttBufferImpl:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "createBufferTask"

    .line 301
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sCreateBufferTask:Ljava/lang/reflect/Method;

    .line 304
    sget-object v0, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sPttBufferImpl:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "appendBuffer"

    .line 305
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sAppendBuffer:Ljava/lang/reflect/Method;

    .line 308
    sget-object v0, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sPttBufferImpl:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "flush"

    .line 309
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sFlushMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static processDataBlock(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[B)V
    .registers 7

    const/4 v0, 0x0

    .line 250
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :try_start_5
    sget-object v1, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sReadMethod:Ljava/lang/reflect/Method;

    array-length v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p3, v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_24

    .line 252
    :catch_15
    sget-object v1, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sReadMethod:Ljava/lang/reflect/Method;

    array-length v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 254
    :goto_24
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p3

    const-class v0, [B

    invoke-virtual {p3, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p3

    invoke-virtual {p3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    .line 256
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->getOutputLength(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_47

    .line 258
    sget-object v0, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->sAppendBuffer:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    return-void
.end method

.method private static processPcmData([BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 10

    .line 231
    array-length v0, p0

    .line 233
    div-int/lit16 v1, v0, 0x280

    .line 234
    rem-int/lit16 v2, v0, 0x280

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_16

    mul-int/lit16 v4, v3, 0x280

    add-int/lit8 v3, v3, 0x1

    mul-int/lit16 v5, v3, 0x280

    .line 237
    invoke-static {p0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 238
    invoke-static {p1, p2, p3, v4}, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->processDataBlock(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[B)V

    goto :goto_6

    :cond_16
    if-lez v2, :cond_21

    mul-int/lit16 v1, v1, 0x280

    .line 242
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 243
    invoke-static {p1, p2, p3, p0}, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->processDataBlock(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[B)V

    :cond_21
    return-void
.end method
