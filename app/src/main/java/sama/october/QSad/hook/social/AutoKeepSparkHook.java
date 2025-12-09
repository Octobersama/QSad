package sama.october.QSad.hook.social;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.view.View;

import sama.october.QSad.hook.base.BaseWithDataHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.ui.host.HostUIFactory;
import sama.october.QSad.utils.alarm.DailyAlarmHelper;
import sama.october.QSad.utils.data.DataUtils;
import sama.october.QSad.utils.qq.EnableInfo;
import sama.october.QSad.utils.qq.MsgTool;
import sama.october.QSad.utils.thread.LoopHolder;

@HookItemAnnotation(TAG = "自动续火", desc = "点击选择聊天和设置消息，支持图文消息（见脚本开发文档）")
public final class AutoKeepSparkHook extends BaseWithDataHookItem {
    private static final int SEND_PREPARE = 1003;

    private LoopHolder mLoopHolder;
    private BroadcastReceiver receiver;
    private EnableInfo mTroopEnableInfo;
    private EnableInfo mFriendEnableInfo;
    private String msg;

    @Override
    protected void initCallback() {

        mFriendEnableInfo = new EnableInfo.FriendEnableInfo(getNAME() + "_Friend");
        mTroopEnableInfo = new EnableInfo.TroopEnableInfo(getNAME() + "_Troop");

        receiver = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                if (intent.getIntExtra("result_code", 0) != SEND_PREPARE) return;
                startLoop();
                setAlarm();
            }
        };

        mLoopHolder = new LoopHolder();
        mLoopHolder.setRunnable(this::sendMsg);
    }

    @Override
    public void startHook() {
        if (DailyAlarmHelper.isAroundMidnight(180000, 1)) {
            startLoop();
        }
        setAlarm();
    }

    @Override
    public void stopHook() {
        mLoopHolder.stop();
        cancelAlarm();
    }

    public void setAlarm() {
        if (!DailyAlarmHelper.isAlarmSet(SEND_PREPARE)) {
            DailyAlarmHelper.setupDailyAlarm(23, 57, 0, SEND_PREPARE, receiver);
        }

    }

    public void cancelAlarm() {
        if (DailyAlarmHelper.isAlarmSet(SEND_PREPARE)) {
            DailyAlarmHelper.cancelDailyAlarm(SEND_PREPARE);
        }

    }

    @Override
    public void initData() {
        mTroopEnableInfo.initInfo();
        mFriendEnableInfo.initInfo();
        msg = (String) DataUtils.deserialize("data", "AutoSendText");
    }

    @Override
    public void savaData() {
        mTroopEnableInfo.savaInfo();
        mFriendEnableInfo.savaInfo();
        DataUtils.serialize("data", "AutoSendText", msg);
    }

    @Override
    public void onClick(View v) {
        Context context = v.getContext();
        HostUIFactory.showKeepSparkConfig(context, msg, mTroopEnableInfo, mFriendEnableInfo, updated -> msg = updated);
    }

    private void startLoop() {
        long stopTime = ((System.currentTimeMillis() + 2880000) / 86400000 + 1) * 86400000 + 60000;
        mLoopHolder.setStopTime(stopTime);
        mLoopHolder.start();
    }

    private void sendMsg() throws Throwable {
        if (!DailyAlarmHelper.isAroundMidnight(0, 60000)) return;
        for (String uin : mFriendEnableInfo.dataList.getKeyArray()) {
            if (mFriendEnableInfo.dataList.getIsAvailable(uin)) {
                MsgTool.sendMsg(uin, msg, 1);
            }
        }
        for (String troopUin : mTroopEnableInfo.dataList.getKeyArray()) {
            if (mTroopEnableInfo.dataList.getIsAvailable(troopUin)) {
                MsgTool.sendMsg(troopUin, msg, 2);
            }
        }
        mLoopHolder.stop();
    }

}
