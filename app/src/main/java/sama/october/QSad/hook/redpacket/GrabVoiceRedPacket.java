package sama.october.QSad.hook.redpacket;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.nio.charset.StandardCharsets;
import java.util.LinkedHashMap;
import java.util.Map;
import sama.october.QSad.javaplugin.api.MsgData;
import sama.october.QSad.utils.data.DataUtils;
import sama.october.QSad.utils.dexkit.DexKit;
import sama.october.QSad.utils.error.ErrorOutput;
import sama.october.QSad.utils.qq.AudioConverterUtil;
import sama.october.QSad.utils.qq.QQCurrentEnv;
import sama.october.QSad.utils.qq.ToastUtils;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.MethodUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class GrabVoiceRedPacket {
    private static Class<?> BigDataUploader;
    private static Class<?> Listener;
    private static Method upload;
    private String authkey;
    private String listid;
    private MsgData msgData;
    private String title;

    public static void initMethod() {
        try {
            BigDataUploader = ClassUtils.load("com.tencent.qqnt.qwallet.bigdata.BigDataUploader");
            Listener = DexKit.getClass("GrabVoiceRedPacket");
            upload = MethodUtils.create(BigDataUploader).withReturnType(Void.TYPE).withParamTypes(String.class, byte[].class).findOne();
        } catch (Throwable e) {
            // 处理异常
        }
    }

    private Map<String, String> getHbgrabReqMap() {
        String currentUin = QQCurrentEnv.getCurrentUin();
        String currentNickname = QQCurrentEnv.getCurrentNickname();
        LinkedHashMap<String, String> map = new LinkedHashMap<>();
        map.put("subchanne", null);
        map.put("authkey", this.authkey);
        map.put("hb_from", null);
        map.put("agreement", "0");
        map.put("pay_flag", null);
        map.put("groupid", this.msgData.peerUin);
        map.put("channel", "65536");
        map.put("senderuin", this.msgData.userUin);
        map.put("listid", this.listid);
        map.put("grouptype", "1");
        map.put("sub_guild_id", null);
        map.put("answer", null);
        map.put("groupuin", this.msgData.peerUin);
        map.put("tinyid", null);
        map.put("guild_id", null);
        map.put("name", currentNickname);
        map.put("uin", currentUin);
        map.put("msg_id", null);
        map.put("msg_md5", null);
        map.put("msg_seq", null);
        return map;
    }

    private byte[] getReqBytes() throws JSONException {
        JSONObject json = new JSONObject();
        json.put("bill_no", this.listid);
        json.put("voice_text", this.title);
        json.put("make_uin", Long.valueOf(QQCurrentEnv.getCurrentUin()));
        json.put("platform", 0);
        return json.toString().getBytes(StandardCharsets.UTF_8);
    }

    public void doGrab(final RedPacketHook redPacketHook, String listid, String authkey, final MsgData msgData, String title, final boolean needCheck, final boolean isAggressive) throws IOException, SecurityException, IllegalArgumentException {
        this.listid = listid;
        this.authkey = authkey;
        this.title = title;
        this.msgData = msgData;

        final File tempFile = DataUtils.createFile("temp", "temp.slk");
        final String filePath = tempFile.getAbsolutePath();

        final Object uploader = ClassUtils.makeDefaultObject(BigDataUploader, Proxy.newProxyInstance(ClassUtils.getHostClassLoader(), new Class[]{Listener}, new InvocationHandler() {
            @Override
            public Object invoke(Object proxy, Method method, Object[] args) {
                try {
                    if (method.getParameterCount() == 1) {
                        JSONObject response = new JSONObject(new String((byte[]) args[0], StandardCharsets.UTF_8));
                        if (response.getInt("status") == 1) {
                            new DoGrabRedPacket(redPacketHook, msgData, getHbgrabReqMap(), needCheck, isAggressive).doGrabHb();
                            tempFile.delete();
                        }
                    } else {
                        // 激进模式禁用错误Toast
                        if (!isAggressive) {
                            ToastUtils.QQToast(1, "未知错误");
                        }
                    }
                } catch (Throwable th) {
                    ErrorOutput.itemHookError(redPacketHook, th);
                }
                return null;
            }
        }));

        AudioConverterUtil.convertMp3ApiToSilk("https://api.jkyai.top/API/xsyyhc.php?msg=" + title, filePath, new AudioConverterUtil.ConversionCallback() {
            @Override
            public void onProgress(int progress, String message) {
            }

            @Override
            public void onSuccess(String outputPath) throws IOException {
                try {
                    upload.invoke(uploader, filePath, getReqBytes());
                } catch (Throwable th) {
                    ErrorOutput.itemHookError(redPacketHook, th);
                }
            }

            @Override
            public void onError(Throwable error) throws IOException {
                ErrorOutput.itemHookError(redPacketHook, error);
            }
        });
    }
}
