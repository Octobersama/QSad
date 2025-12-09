package sama.october.QSad.hook.social;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.ContextWrapper;
import android.widget.TextView;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;

import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import sama.october.QSad.R;
import sama.october.QSad.activity.ModuleComponentActivity;
import sama.october.QSad.hook.base.BaseWithDataHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.utils.alarm.DailyAlarmHelper;
import sama.october.QSad.utils.data.DataUtils;
import sama.october.QSad.utils.qq.EnableInfo;
import sama.october.QSad.utils.qq.MsgTool;
import sama.october.QSad.utils.thread.LoopHolder;
import sama.october.QSad.utils.ui.EnableDialog;

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

        mTroopEnableInfo.updateInfo();
        mFriendEnableInfo.updateInfo();
        if (isHostPackage(context)) {
            float density = context.getResources().getDisplayMetrics().density;
            int padding = (int) (density * 16);
            LinearLayout parent = new LinearLayout(context);
            parent.setOrientation(LinearLayout.VERTICAL);
            parent.setPadding(padding, padding, padding, padding);

            EditText msgEditText = new EditText(context);
            msgEditText.setHint("续火消息内容");
            msgEditText.setText(msg);
            parent.addView(msgEditText);

            LinearLayout buttonRow = new LinearLayout(context);
            buttonRow.setOrientation(LinearLayout.VERTICAL);
            buttonRow.setPadding(0, padding / 2, 0, 0);

            Button friendButton = new Button(context);
            friendButton.setText("设置续火好友");
            friendButton.setOnClickListener(view -> new EnableDialog(context, mFriendEnableInfo).show());
            buttonRow.addView(friendButton);

            Button troopButton = new Button(context);
            troopButton.setText("设置续火群聊");
            troopButton.setOnClickListener(view -> new EnableDialog(context, mTroopEnableInfo).show());
            LinearLayout.LayoutParams troopParams = new LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
            troopParams.topMargin = padding / 4;
            buttonRow.addView(troopButton, troopParams);

            parent.addView(buttonRow);

            AlertDialog dialog = new AlertDialog.Builder(context)
                    .setTitle("续火设置")
                    .setView(parent)
                    .setPositiveButton("确定", (d, w) -> msg = msgEditText.getText().toString())
                    .setNegativeButton("取消", null)
                    .create();
            dialog.setOnDismissListener(d -> msg = msgEditText.getText().toString());
            dialog.show();
        } else {
            LinearLayout parent = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.keepsparkview, null);
            EditText msgEditText = parent.findViewById(R.id.keepspark_msg);
            msgEditText.setText(msg);
            TextView troopButton = parent.findViewById(R.id.keepspark_troop);
            TextView friendButton = parent.findViewById(R.id.keepspark_friend);
            troopButton.setOnClickListener(view -> new EnableDialog(context, mTroopEnableInfo).show());
            friendButton.setOnClickListener(view -> new EnableDialog(context, mFriendEnableInfo).show());

            new MaterialAlertDialogBuilder(context, com.google.android.material.R.style.ThemeOverlay_Material3_MaterialAlertDialog)
                    .setTitle("续火设置")
                    .setView(parent)
                    .setOnCancelListener(view -> msg = msgEditText.getText().toString())
                    .show();
        }
    }

    private boolean isHostPackage(Context context) {
        if (isModuleUiContext(context)) {
            return false;
        }
        String pkg = context.getApplicationContext().getPackageName();
        return "com.tencent.mobileqq".equals(pkg) || "com.tencent.tim".equals(pkg);
    }

    private boolean isModuleUiContext(Context context) {
        Context current = context;
        while (current instanceof ContextWrapper) {
            if (current instanceof ModuleComponentActivity) {
                return true;
            }
            Context base = ((ContextWrapper) current).getBaseContext();
            if (base == current) {
                break;
            }
            current = base;
        }
        return false;
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
