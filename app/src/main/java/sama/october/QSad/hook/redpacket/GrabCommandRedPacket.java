package sama.october.QSad.hook.redpacket;

import java.io.IOException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import sama.october.QSad.javaplugin.api.MsgData;
import sama.october.QSad.utils.error.ErrorOutput;
import sama.october.QSad.utils.qq.MsgTool;
import sama.october.QSad.utils.qq.QQCurrentEnv;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.FieldUtils;
import sama.october.QSad.utils.thread.SyncUtils;

public class GrabCommandRedPacket {
    private static Class<?> IMsgOperateCallback;
    private String answer;
    private String authkey;
    private String listid;
    private MsgData msgData;
    private String msg_id;
    private String msg_md5;
    private String msg_seq;
    private boolean needCheck;
    private RedPacketHook redPacketHook;
    private boolean isAggressive;

    public static void initMethod() {
        try {
            IMsgOperateCallback = ClassUtils.load("com.tencent.qqnt.kernel.nativeinterface.IMsgOperateCallback");
        } catch (Exception e) {
            // 处理异常
        }
    }

    private Map<String, String> getHbgrabReqMap() {
        String currentUin = QQCurrentEnv.getCurrentUin();
        String currentNickname = QQCurrentEnv.getCurrentNickname();
        LinkedHashMap<String, String> map = new LinkedHashMap<>();
        map.put("subchanne", null);
        map.put("authkey", this.authkey);
        map.put("hb_from", "0");
        map.put("agreement", "0");
        map.put("pay_flag", "0");
        map.put("groupid", this.msgData.peerUin);
        map.put("channel", "32");
        map.put("senderuin", this.msgData.userUin);
        map.put("listid", this.listid);
        map.put("grouptype", "1");
        map.put("sub_guild_id", null);
        map.put("answer", this.answer);
        map.put("groupuin", this.msgData.userUin);
        map.put("tinyid", null);
        map.put("guild_id", null);
        map.put("name", currentNickname);
        map.put("uin", currentUin);
        map.put("msg_id", this.msg_id);
        map.put("msg_md5", this.msg_md5);
        map.put("msg_seq", this.msg_seq);
        return map;
    }

    private String getMd5(String input) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(input.getBytes(StandardCharsets.UTF_8));
            char[] hexChars = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
            if (digest.length == 16) {
                char[] result = new char[32];
                int index = 0;
                for (int i = 0; i < 16; i++) {
                    byte b = digest[i];
                    int nextIndex = index + 1;
                    result[index] = hexChars[(b >>> 4) & 15];
                    index += 2;
                    result[nextIndex] = hexChars[b & 15];
                }
                return new String(result).toLowerCase(Locale.ROOT);
            }
            return "";
        } catch (Exception e) {
            return "";
        }
    }

    public void doGrab(final RedPacketHook redPacketHook, String listid, String authkey, final MsgData msgData, final String answer, boolean needCheck, boolean isAggressive) {
        this.redPacketHook = redPacketHook;
        this.listid = listid;
        this.authkey = authkey;
        this.msgData = msgData;
        this.answer = answer;
        this.needCheck = needCheck;
        this.isAggressive = isAggressive;

        SyncUtils.runOnNewThread(redPacketHook.getNAME(), new SyncUtils.MyRunnable() {
            @Override
            public void run() throws Throwable {
                sendAnswer(answer, redPacketHook, msgData);
            }
        });
    }

    private void sendAnswer(String answer, final RedPacketHook redPacketHook, MsgData msgData) throws Throwable {
        this.msg_md5 = getMd5(answer);
        MsgTool.sendTextWithInterface(msgData, answer, Proxy.newProxyInstance(ClassUtils.getHostClassLoader(), new Class[]{IMsgOperateCallback}, new InvocationHandler() {
            @Override
            public Object invoke(Object proxy, Method method, Object[] args) {
                if (!method.getName().equals("onResult")) {
                    return null;
                }
                List<?> list = (List<?>) args[2];
                if (list.isEmpty()) {
                    return null;
                }
                try {
                    processResult(list.get(0));
                } catch (Throwable th) {
                    ErrorOutput.itemHookError(redPacketHook, th);
                }
                return null;
            }
        }));
    }

    private void processResult(Object msgRecord) throws Exception {
        this.msg_id = FieldUtils.create(msgRecord).withName("msgRandom").getValue().toString();
        this.msg_seq = FieldUtils.create(msgRecord).withName("clientSeq").getValue().toString();
        long msgId = ((Long) FieldUtils.create(msgRecord).withName("msgId").getValue()).longValue();

        new DoGrabRedPacket(this.redPacketHook, this.msgData, getHbgrabReqMap(), this.needCheck, this.isAggressive).doGrabHb();
        // 激进模式进一步减少延迟
        Thread.sleep(this.isAggressive ? 20L : 50L);
        MsgTool.recallMsg(this.msgData.contact, msgId);
    }
}
