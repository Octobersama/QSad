package sama.october.QSad.hook.redpacket;

import android.content.Intent;
import android.os.Bundle;
import java.io.IOException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Map;
import java.util.Random;
import sama.october.QSad.javaplugin.api.MsgData;
import sama.october.QSad.utils.error.ErrorOutput;
import sama.october.QSad.utils.hook.xpcompat.XposedHelpers;
import sama.october.QSad.utils.qq.HostInfo;
import sama.october.QSad.utils.qq.MsgTool;
import sama.october.QSad.utils.qq.QQCurrentEnv;
import sama.october.QSad.utils.qq.ToastUtils;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.FieldUtils;
import sama.october.QSad.utils.reflect.MethodUtils;
import sama.october.QSad.utils.thread.SyncUtils;

public class DoGrabRedPacket {
    // 缓存类,避免重复查找
    private static Class<?> psKeyProcessorClass;
    private static Class<?> sessionKeyClass;
    private static Class<?> encryptProcessorClass;
    private static Class<?> byteStringClass;
    private static Class<?> qqhbRequestClass;
    private static Class<?> qqhbReplyClass;
    private static Class<?> newIntentClass;
    private static Class<?> businessObserverClass;
    private static Method getPsKeyMethod;
    private static Method processEncryptMethod;

    private final MsgData msgData;
    private final boolean needCheck;
    private final RedPacketHook redPacketHook;
    private final Map<String, String> reqMap;
    private boolean isAggressive;

    static {
        try {
            psKeyProcessorClass = ClassUtils.load("com.tenpay.sdk.net.core.processor.PsKeyProcessor");
            sessionKeyClass = ClassUtils.load("com.tenpay.sdk.net.core.comm.SessionKey");
            encryptProcessorClass = ClassUtils.load("com.tenpay.sdk.net.core.processor.EncryptProcessor");
            byteStringClass = ClassUtils.load("com.tencent.mobileqq.pb.ByteStringMicro");
            qqhbRequestClass = ClassUtils.load("tencent.im.qqwallet.QWalletHbPreGrab$QQHBRequest");
            qqhbReplyClass = ClassUtils.load("tencent.im.qqwallet.QWalletHbPreGrab$QQHBReply");
            newIntentClass = ClassUtils.load("mqq.app.NewIntent");
            businessObserverClass = ClassUtils.load("mqq.observer.BusinessObserver");
            getPsKeyMethod = MethodUtils.create(psKeyProcessorClass).withMethodName("getPsKey").findOne();
            processEncryptMethod = MethodUtils.create(encryptProcessorClass).withMethodName("processEncrypt").findOne();
        } catch (Exception e) {
            // 初始化失败,运行时会报错
        }
    }

    public DoGrabRedPacket(RedPacketHook redPacketHook, MsgData msgData, Map<String, String> reqMap, boolean needCheck, boolean isAggressive) {
        this.redPacketHook = redPacketHook;
        this.msgData = msgData;
        this.reqMap = reqMap;
        this.needCheck = needCheck;
        this.isAggressive = isAggressive;
    }

    private Object getEncryptResult() throws Exception {
        // 使用缓存的类和方法
        Object sessionKey = ClassUtils.makeDefaultObject(sessionKeyClass, "qpay_hb_na_grap",
                getPsKeyMethod.invoke(ClassUtils.makeDefaultObject(psKeyProcessorClass, new Object[0]),
                        "https://mqq.tenpay.com/cgi-bin/hongbao/qpay_hb_na_grap.cgi?"),
                QQCurrentEnv.getCurrentUin());

        Object encryptProcessor = ClassUtils.makeDefaultObject(encryptProcessorClass, new Object[0]);
        return processEncryptMethod.invoke(encryptProcessor,
                "https://mqq.tenpay.com/cgi-bin/hongbao/qpay_hb_na_grap.cgi?",
                sessionKey,
                this.reqMap,
                Boolean.TRUE,
                Boolean.TRUE,
                null);
    }

    public void doGrabHb() {
        SyncUtils.runOnNewThread(this.redPacketHook.getNAME(), new SyncUtils.MyRunnable() {
            @Override
            public void run() throws Exception {
                executeGrab();
            }
        });
    }

    private void executeGrab() throws Exception {
        Map<String, String> bodyData = (Map<String, String>) FieldUtils.create(getEncryptResult()).withName("bodyData").getValue();

        // 使用缓存的类
        Object byteString = ClassUtils.makeDefaultObject(byteStringClass, this.redPacketHook.processMap(bodyData).getBytes(StandardCharsets.UTF_8));
        Object qqhbRequest = ClassUtils.makeDefaultObject(qqhbRequestClass, new Object[0]);

        Object cgiName = FieldUtils.create(qqhbRequest).withName("cgiName").getValue();
        Object reqBody = FieldUtils.create(qqhbRequest).withName("reqBody").getValue();

        XposedHelpers.callMethod(cgiName, "set", new Class[]{String.class}, "qpay_hb_na_grap");
        XposedHelpers.callMethod(reqBody, "set", new Class[]{byteStringClass}, byteString);

        byte[] requestBytes = this.redPacketHook.add4byte((byte[]) XposedHelpers.callMethod(qqhbRequest, "toByteArray", new Class[0], new Object[0]));

        Object observer = Proxy.newProxyInstance(ClassUtils.getHostClassLoader(), new Class[]{businessObserverClass}, new InvocationHandler() {
            @Override
            public Object invoke(Object proxy, Method method, Object[] args) {
                if (!method.getName().equals("onReceive")) {
                    return null;
                }
                try {
                    checkResult((Bundle) args[2]);
                } catch (Throwable th) {
                    ErrorOutput.Error(redPacketHook.getNAME(), th);
                }
                return null;
            }
        });

        Intent intent = (Intent) ClassUtils.makeDefaultObject(newIntentClass, HostInfo.getHostContext(), this.redPacketHook.Servlet);
        intent.putExtra("cmd", "trpc.qqhb.qqhb_proxy.Handler.sso_handle");
        intent.putExtra("data", requestBytes);
        intent.putExtra("timeout", 30000L);
        XposedHelpers.callMethod(intent, "setObserver", new Class[]{businessObserverClass}, observer);
        this.redPacketHook.startServlet.invoke(QQCurrentEnv.getQQAppInterface(), intent);
    }

    private void checkResult(Bundle bundle) {
        try {
            Object qqhbReply = ClassUtils.makeDefaultObject(qqhbReplyClass, new Object[0]);
            Object retCode = FieldUtils.create(XposedHelpers.callMethod(qqhbReply, "mergeFrom", new Class[]{byte[].class}, bundle.getByteArray("rsp_bytes"))).withName("retCode").getValue();

            if (XposedHelpers.callMethod(retCode, "get", new Class[0], new Object[0]).toString().equals("0")) {
                onSuccess(this.msgData);
            }
        } catch (Exception e) {
            ErrorOutput.Error(this.redPacketHook.getNAME(), e);
        }
    }

    private void onSuccess(final MsgData msgData) {
        // 激进模式禁用Toast通知，减少UI干扰
        if (!this.isAggressive) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.needCheck ? "自" : "手");
            sb.append("动抢红包成功");
            ToastUtils.QQToast(2, sb.toString());
        }

        if (this.redPacketHook.autoGrabHbConfig.getIsAvailable("replys") && this.needCheck) {
            SyncUtils.runOnNewThread(this.redPacketHook.getNAME(), new SyncUtils.MyRunnable() {
                @Override
                public void run() throws Exception {
                    sendReply(msgData);
                }
            });
        }
    }

    private void sendReply(MsgData msgData) throws Exception {
        Random random = new Random();
        List<String> replyList = (List<String>) this.redPacketHook.autoGrabHbConfig.getValue("replys");
        MsgTool.sendMsg(msgData.contact, replyList.get(random.nextInt(replyList.size())));
    }
}
