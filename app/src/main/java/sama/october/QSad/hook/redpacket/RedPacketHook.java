package sama.october.QSad.hook.redpacket;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import android.view.View;
import java.net.URLEncoder;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import sama.october.QSad.R;
import sama.october.QSad.ui.host.HostUIFactory;
import sama.october.QSad.hook.api.OnMsg;
import sama.october.QSad.hook.api.OnMsgMenuOpen;
import sama.october.QSad.hook.base.BaseWithDataHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.javaplugin.api.MsgData;
import sama.october.QSad.utils.data.DataUtils;
import sama.october.QSad.utils.data.TernaryDataList;
import sama.october.QSad.utils.dexkit.DexKit;
import sama.october.QSad.utils.qq.EnableInfo;
import sama.october.QSad.utils.qq.MsgTool;
import sama.october.QSad.utils.qq.QQCurrentEnv;
import sama.october.QSad.utils.qq.TroopTool;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.FieldUtils;
import sama.october.QSad.utils.reflect.MethodUtils;
import sama.october.QSad.utils.thread.SyncUtils;

@HookItemAnnotation(TAG = "自动抢红包", desc = "点击可设置一些参数")
public final class RedPacketHook extends BaseWithDataHookItem {
    public Class<?> Servlet;
    public TernaryDataList<Object> autoGrabHbConfig = new TernaryDataList<>();
    private Map<String, Boolean> commonHbConfig = new HashMap<>();
    private EnableInfo.TroopEnableInfo mTroopEnableInfo;
    private OnMsgMenuOpen.OnMsgMenuClickListener onClick;
    private OnMsg.MsgListener onReceiveRedPacket;
    public Method startServlet;

    @Override
    public boolean initMethod() {
        try {
            GrabCommandRedPacket.initMethod();
            GrabVoiceRedPacket.initMethod();
            this.startServlet = MethodUtils.create(ClassUtils._AppRuntime()).withMethodName("startServlet").findOne();
            this.Servlet = DexKit.getClass(getNAME());
            return true;
        } catch (Throwable e) {
            return false;
        }
    }

    @Override
    public void initCallback() {
        this.mTroopEnableInfo = new EnableInfo.TroopEnableInfo("HbWhitelist");
        this.onReceiveRedPacket = new OnMsg.MsgListener() {
            @Override
            public void onMsg(Object obj) throws SecurityException {
                try {
                    if (commonHbConfig.get("isAuto").booleanValue()) {
                        grabHb(new MsgData(obj), true);
                    }
                } catch (Exception e) {
                    // 处理异常
                }
            }
        };
        this.onClick = new OnMsgMenuOpen.OnMsgMenuClickListener() {
            @Override
            public void onClick(MsgData msgData) throws SecurityException {
                grabHb(msgData, false);
            }
        };
    }

    @Override
    public void stopHook() {
        OnMsg.INSTANCE.removeListener(this.onReceiveRedPacket);
        ((OnMsgMenuOpen) OnMsgMenuOpen.INSTANCE).removeListener("[QSad],,打开红包,10");
    }

    @Override
    public void startHook() {
        OnMsg.INSTANCE.addListener(this.onReceiveRedPacket);
        if (this.commonHbConfig.get("isManual").booleanValue()) {
            ((OnMsgMenuOpen) OnMsgMenuOpen.INSTANCE).addListener("[QSad],,打开红包,10", this.onClick);
        } else {
            ((OnMsgMenuOpen) OnMsgMenuOpen.INSTANCE).removeListener("[QSad],,打开红包,10");
        }
    }

    @Override
    public void initData() {
        try {
            Object objDeserialize = DataUtils.deserialize("data", "AutoGrabHbConfig");
            if (objDeserialize != null) {
                this.autoGrabHbConfig = (TernaryDataList) objDeserialize;
            }
            this.autoGrabHbConfig.add("average", 0, false);
            this.autoGrabHbConfig.add("delay", 0L, false);
            this.autoGrabHbConfig.add("keywords", new ArrayList<String>(), false);
            this.autoGrabHbConfig.add("replys", new ArrayList<String>(), false);
            Object objDeserialize2 = DataUtils.deserialize("data", "CommonHbConfig");
            if (objDeserialize2 != null) {
                this.commonHbConfig = (Map<String, Boolean>) objDeserialize2;
            } else {
                this.commonHbConfig.put("isAuto", Boolean.FALSE);
                this.commonHbConfig.put("isManual", Boolean.FALSE);
                this.commonHbConfig.put("isAggressive", Boolean.FALSE);
            }
            // 确保激进模式配置存在
            if (!this.commonHbConfig.containsKey("isAggressive")) {
                this.commonHbConfig.put("isAggressive", Boolean.FALSE);
            }
            this.mTroopEnableInfo.initInfo();
        } catch (Exception e) {
            // 处理异常
        }
    }

    @Override
    public void savaData() {
        try {
            DataUtils.serialize("data", "AutoGrabHbConfig", this.autoGrabHbConfig);
            DataUtils.serialize("data", "CommonHbConfig", this.commonHbConfig);
            this.mTroopEnableInfo.savaInfo();
        } catch (Exception e) {
            // 处理异常
        }
    }

    @Override
    public void onClick(View view) {
        final Context context = view.getContext();
        HostUIFactory.showRedPacketConfig(context, autoGrabHbConfig, commonHbConfig, mTroopEnableInfo);
    }

    private void grabHb(MsgData msgData, boolean isAuto) throws SecurityException {
        if (msgData.msgType == 10 && msgData.type == 2) {
            Object walletElement = FieldUtils.create(((ArrayList) FieldUtils.create(msgData.data).withName("elements").getValue()).get(0)).withName("walletElement").getValue();
            String title = FieldUtils.create(FieldUtils.create(walletElement).withName("receiver").getValue()).withName("title").getValue().toString();
            String billNo = FieldUtils.create(walletElement).withName("billNo").getValue().toString();
            String authkey = FieldUtils.create(walletElement).withName("authkey").getValue().toString();
            int redChannel = ((Integer) FieldUtils.create(walletElement).withName("redChannel").getValue()).intValue();

            boolean isAggressive = this.commonHbConfig.get("isAggressive").booleanValue();

            // 如果是已抢红包，忽略
            if (redChannel == 1024) {
                return;
            }

            // 检查白名单（激进模式也要检查）
            if (this.mTroopEnableInfo.dataList.getIsAvailable(msgData.peerUin) && isAuto) {
                return;
            }

            // 检查关键字过滤（激进模式跳过）
            if (!isAggressive) {
                String matchedKeywords = "";
                boolean hasKeyword = false;
                for (String keyword : (List<String>) this.autoGrabHbConfig.getValue("keywords")) {
                    if (title.contains(keyword) && this.autoGrabHbConfig.getIsAvailable("keywords")) {
                        matchedKeywords = matchedKeywords + " " + keyword;
                        hasKeyword = true;
                    }
                }
                if (hasKeyword && isAuto) {
                    sendReasonMsg(msgData, title + "->" + matchedKeywords, 0, redChannel);
                    return;
                }
            }

            // 开始抢红包（传递激进模式标志）
            new PreGrabRedPacket().preGrabHb(this, billNo, authkey, title, redChannel, msgData, isAuto, isAggressive);
        }
    }

    public byte[] add4byte(byte[] data) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeInt(data.length + 4);
            dataOutputStream.write(data);
            byte[] result = byteArrayOutputStream.toByteArray();
            dataOutputStream.close();
            byteArrayOutputStream.close();
            return result;
        } catch (Exception e) {
            return null;
        }
    }

    public String processMap(Map<String, String> map) {
        try {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String value = entry.getValue();
                if (value != null) {
                    if (sb.length() > 0) {
                        sb.append("&");
                    }
                    sb.append(entry.getKey());
                    sb.append("=");
                    sb.append(URLEncoder.encode(value, "UTF-8"));
                }
            }
            return sb.toString();
        } catch (Exception e) {
            return "";
        }
    }

    public void sendReasonMsg(final MsgData msgData, final String reason, final int reasonType, final int channel) {
        SyncUtils.runOnNewThread(getNAME(), new SyncUtils.MyRunnable() {
            @Override
            public void run() throws Exception {
                String channelName;
                StringBuilder sb = new StringBuilder();
                String troopName = FieldUtils.create(TroopTool.getTroopInfo(msgData.peerUin)).withName("troopNameFromNT").getValue().toString();

                if (channel == 1) {
                    channelName = "拼手气或普通红包";
                } else if (channel == 32) {
                    channelName = "口令红包";
                } else if (channel == 65536) {
                    channelName = "语音红包";
                } else {
                    channelName = "";
                }

                String timeStr = LocalDateTime.ofInstant(Instant.ofEpochMilli(msgData.time * 1000), ZoneId.systemDefault())
                        .format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));

                sb.append("[QSad]未领取红包\n[红包类型:");
                sb.append(channelName);
                sb.append("]\n[群聊:");
                sb.append(troopName);
                sb.append("(");
                sb.append(msgData.peerUin);
                sb.append(")]\n[发送者:");
                sb.append(TroopTool.getMemberName(msgData.peerUin, msgData.userUin));
                sb.append("(");
                sb.append(msgData.userUin);
                sb.append(")]\n[发送时间:");
                sb.append(timeStr);
                sb.append("]\n[原因:");

                if (reasonType == 0) {
                    String title = reason.split("->")[0];
                    String keywords = reason.split("->")[1];
                    sb.append(title);
                    sb.append(" 包含关键字");
                    sb.append(keywords);
                } else if (reasonType == 1) {
                    String actualAvg = reason.split("->")[0];
                    String expectedAvg = reason.split("->")[1];
                    sb.append("实际平均金额");
                    sb.append(actualAvg);
                    sb.append("分低于预期平均金额");
                    sb.append(expectedAvg);
                    sb.append("分");
                }
                sb.append("]");

                MsgTool.sendMsg(QQCurrentEnv.getCurrentUin(), sb.toString(), 1);
            }
        });
    }
}
