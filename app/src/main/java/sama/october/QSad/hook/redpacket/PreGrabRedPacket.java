package sama.october.QSad.hook.redpacket;

import android.content.Intent;
import android.os.Bundle;
import java.io.IOException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;
import sama.october.QSad.javaplugin.api.MsgData;
import sama.october.QSad.utils.hook.xpcompat.XposedHelpers;
import sama.october.QSad.utils.qq.CookieTool;
import sama.october.QSad.utils.qq.HostInfo;
import sama.october.QSad.utils.qq.QQCurrentEnv;
import sama.october.QSad.utils.qq.ToastUtils;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.FieldUtils;
import sama.october.QSad.utils.reflect.MethodUtils;
import sama.october.QSad.utils.thread.SyncUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class PreGrabRedPacket {
    // 缓存类和方法,避免重复查找
    private static Class<?> encryptRequestClass;
    private static Class<?> qWalletApiClass;
    private static Class<?> qqhbRequestClass;
    private static Class<?> newIntentClass;
    private static Class<?> businessObserverClass;
    private static Method encryptMethod;
    private static Method hexGuidMethod;

    private String answer;
    private String authkey;
    private int channel;
    private String listid;
    private MsgData msgData;
    private boolean needCheck;
    private int randomInt;
    private RedPacketHook redPacketHook;
    private boolean isAggressive;

    static {
        try {
            encryptRequestClass = ClassUtils.load("com.tenpay.sdk.basebl.EncryptRequest");
            qWalletApiClass = ClassUtils.load("com.tencent.mobileqq.qwallet.api.impl.NewQWalletApiImpl");
            qqhbRequestClass = ClassUtils.load("tencent.im.qqwallet.QWalletHbPreGrab$QQHBRequest");
            newIntentClass = ClassUtils.load("mqq.app.NewIntent");
            businessObserverClass = ClassUtils.load("mqq.observer.BusinessObserver");
            encryptMethod = MethodUtils.create(encryptRequestClass).withMethodName("encypt").findOne();
            hexGuidMethod = MethodUtils.create(qWalletApiClass).withMethodName("hexGuid").findOne();
        } catch (Exception e) {
            // 初始化失败,运行时会报错
        }
    }

    private Map<String, String> getHbPreGrabReqMap() {
        LinkedHashMap<String, String> map = new LinkedHashMap<>();
        map.put("listid", this.listid);
        map.put("channel", String.valueOf(this.channel));
        map.put("groupid", this.msgData.peerUin);
        map.put("grouptype", "1");
        map.put("groupuin", this.msgData.userUin);
        map.put("name", QQCurrentEnv.getCurrentNickname());
        map.put("pay_flag", "0");
        map.put("authkey", this.authkey);
        map.put("uin", QQCurrentEnv.getCurrentUin());
        map.put("trans_seq", String.valueOf(this.randomInt));
        map.put("hb_from", "0");
        return map;
    }

    public void preGrabHb(final RedPacketHook redPacketHook, String listid, String authkey, String answer, int channel, MsgData msgData, final boolean needCheck, final boolean isAggressive) {
        this.redPacketHook = redPacketHook;
        this.listid = listid;
        this.authkey = authkey;
        this.answer = answer;
        this.channel = channel;
        this.msgData = msgData;
        this.needCheck = needCheck;
        this.isAggressive = isAggressive;
        this.randomInt = Math.abs(new Random().nextInt()) % 16;

        SyncUtils.runOnNewThread(redPacketHook.getNAME(), new SyncUtils.MyRunnable() {
            @Override
            public void run() throws Exception {
                // 激进模式提升线程优先级
                if (isAggressive) {
                    Thread.currentThread().setPriority(Thread.MAX_PRIORITY);
                }
                doPreGrab(redPacketHook, needCheck);
            }
        });
    }

    private void doPreGrab(final RedPacketHook redPacketHook, boolean needCheck) throws Exception {
        // 延迟处理（激进模式降低延迟）
        if (redPacketHook.autoGrabHbConfig.getIsAvailable("delay") && needCheck) {
            long delay = ((Long) redPacketHook.autoGrabHbConfig.getValue("delay")).longValue();
            if (this.isAggressive && delay > 0) {
                // 激进模式：延迟减少70%，最低10ms
                delay = Math.max(10L, (long)(delay * 0.3));
            }
            Thread.sleep(delay);
        }

        // 使用缓存的类和方法,无需重复查找
        Object encryptRequest = ClassUtils.makeDefaultObject(encryptRequestClass, HostInfo.getHostContext());
        Object qWalletApi = ClassUtils.makeDefaultObject(qWalletApiClass, new Object[0]);
        Object qqhbRequest = ClassUtils.makeDefaultObject(qqhbRequestClass, new Object[0]);

        String encText = FieldUtils.create(encryptMethod.invoke(encryptRequest,
                QQCurrentEnv.getCurrentUin(),
                "hb_pre_grapver=2.0&chv=3",
                Integer.valueOf(this.randomInt),
                redPacketHook.processMap(getHbPreGrabReqMap()),
                CookieTool.getPskey("tenpay.com"),
                hexGuidMethod.invoke(qWalletApi, (Object[]) null).toString()
        )).withName("encText").getValue().toString();

        Object cgiName = FieldUtils.create(qqhbRequest).withName("cgiName").getValue();
        Object reqText = FieldUtils.create(qqhbRequest).withName("reqText").getValue();
        Object random = FieldUtils.create(qqhbRequest).withName("random").getValue();
        Object enType = FieldUtils.create(qqhbRequest).withName("enType").getValue();

        XposedHelpers.callMethod(cgiName, "set", new Class[]{String.class}, "hb_pre_grap");
        XposedHelpers.callMethod(reqText, "set", new Class[]{String.class}, encText);
        XposedHelpers.callMethod(random, "set", new Class[]{String.class}, String.valueOf(this.randomInt));
        XposedHelpers.callMethod(enType, "set", new Class[]{Integer.TYPE}, 0);

        byte[] requestBytes = redPacketHook.add4byte((byte[]) XposedHelpers.callMethod(qqhbRequest, "toByteArray", new Class[0], new Object[0]));

        Object observer = Proxy.newProxyInstance(ClassUtils.getHostClassLoader(), new Class[]{businessObserverClass}, new InvocationHandler() {
            @Override
            public Object invoke(Object proxy, Method method, Object[] args) {
                if (!method.getName().equals("onReceive")) {
                    return null;
                }
                final Bundle bundle = (Bundle) args[2];
                SyncUtils.runOnNewThread(redPacketHook.getNAME(), new SyncUtils.MyRunnable() {
                    @Override
                    public void run() throws Exception {
                        checkResult(bundle);
                    }
                });
                return null;
            }
        });

        Intent intent = (Intent) ClassUtils.makeDefaultObject(newIntentClass, HostInfo.getHostContext(), redPacketHook.Servlet);
        intent.putExtra("cmd", "trpc.qqhb.qqhb_proxy.Handler.sso_handle");
        intent.putExtra("data", requestBytes);
        intent.putExtra("timeout", 30000L);
        XposedHelpers.callMethod(intent, "setObserver", new Class[]{businessObserverClass}, observer);
        redPacketHook.startServlet.invoke(QQCurrentEnv.getQQAppInterface(), intent);
    }

    private void checkResult(Bundle bundle) throws Exception {
        Class<?> qqhbReplyClass = ClassUtils.load("tencent.im.qqwallet.QWalletHbPreGrab$QQHBReply");
        Class<?> encryptRequestClass = ClassUtils.load("com.tenpay.sdk.basebl.EncryptRequest");
        Method decryptMethod = MethodUtils.create(encryptRequestClass).withMethodName("decypt").findOne();

        Object qqhbReply = ClassUtils.makeDefaultObject(qqhbReplyClass, new Object[0]);
        Object encryptRequest = ClassUtils.makeDefaultObject(encryptRequestClass, HostInfo.getHostContext());

        Object rspText = FieldUtils.create(XposedHelpers.callMethod(qqhbReply, "mergeFrom", new Class[]{byte[].class}, bundle.getByteArray("rsp_bytes"))).withName("rspText").getValue();
        String decryptStr = (String) FieldUtils.create(decryptMethod.invoke(encryptRequest,
                QQCurrentEnv.getCurrentUin(),
                "hb_pre_grap",
                Integer.valueOf(this.randomInt),
                (String) XposedHelpers.callMethod(rspText, "get", new Class[0], new Object[0])
        )).withName("decryptStr").getValue();

        checkHbdetail(decryptStr);
    }

    private void checkHbdetail(String jsonStr) throws Exception {
        JSONObject json = new JSONObject(jsonStr);
        if (json.getInt("retcode") != 0) {
            return;
        }

        JSONObject sendObject = json.getJSONObject("send_object");
        double totalAmount = Double.parseDouble(sendObject.getString("total_amount"));
        double totalNum = Double.parseDouble(sendObject.getString("total_num"));
        double averageAmount = totalAmount / totalNum;

        // 检查红包是否已被抢完
        if (Double.valueOf(totalNum).equals(Double.valueOf(Double.parseDouble(sendObject.getString("recv_num"))))) {
            if (this.needCheck) {
                return;
            }
            ToastUtils.QQToast(1, "这个红包已经被领完了！");
            return;
        }

        // 检查平均金额（激进模式跳过）
        if (!this.isAggressive
                && averageAmount < Double.parseDouble(this.redPacketHook.autoGrabHbConfig.getValue("average").toString())
                && this.redPacketHook.autoGrabHbConfig.getIsAvailable("average")
                && this.needCheck) {
            this.redPacketHook.sendReasonMsg(this.msgData,
                    averageAmount + "->" + this.redPacketHook.autoGrabHbConfig.getValue("average"),
                    1,
                    this.channel);
            return;
        }

        // 根据不同的红包类型进行抢红包
        if (this.channel == 1) {
            // 普通红包或拼手气红包
            if (json.has("pre_grap_token")) {
                new GrabLuckyRedPacket().doGrab(this.redPacketHook, this.listid, this.authkey, this.msgData, json.getString("pre_grap_token"), this.needCheck, this.isAggressive);
            }
        } else if (this.channel == 32) {
            // 口令红包
            new GrabCommandRedPacket().doGrab(this.redPacketHook, this.listid, this.authkey, this.msgData, this.answer, this.needCheck, this.isAggressive);
        } else if (this.channel == 65536) {
            // 语音红包
            new GrabVoiceRedPacket().doGrab(this.redPacketHook, this.listid, this.authkey, this.msgData, this.answer, this.needCheck, this.isAggressive);
        }
    }
}
