package sama.october.QSad.hook.device;

import android.app.AlertDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.lang.reflect.Method;

import sama.october.QSad.hook.base.BaseWithDataHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.utils.hook.HookUtils;
import sama.october.QSad.utils.qq.HostInfo;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.MethodUtils;

@HookItemAnnotation(TAG = "伪装设备在线状态", desc = "点击设置机型，可用于设置在线状态机型（包含文字可能无效，重启生效）", TargetProcess = "All")
public final class CustomDeviceHook extends BaseWithDataHookItem {
    private static final String SHARED_PREFS_NAME = "QSad_Config";
    private static final String KEY_FAKE_MODEL = "FAKE_MODEL";

    private static Method sGetModelMethod;
    private String mFakeModel;

    @Override
    public void initData() {
        SharedPreferences sp = HostInfo.getHostContext().getSharedPreferences(
                SHARED_PREFS_NAME, Context.MODE_MULTI_PROCESS);
        mFakeModel = sp.getString(KEY_FAKE_MODEL, "");
    }

    @Override
    public void savaData() {
        SharedPreferences sp = HostInfo.getHostContext().getSharedPreferences(
                SHARED_PREFS_NAME, Context.MODE_MULTI_PROCESS);
        sp.edit().putString(KEY_FAKE_MODEL, mFakeModel).apply();
    }

    @Override
    public void onClick(View v) {
        Context baseContext = v.getContext();
        Context dialogContext = new ContextThemeWrapper(baseContext, android.R.style.Theme_DeviceDefault_Light_Dialog_Alert);

        int padding = (int) (dialogContext.getResources().getDisplayMetrics().density * 16);
        LinearLayout container = new LinearLayout(dialogContext);
        container.setOrientation(LinearLayout.VERTICAL);
        container.setPadding(padding, padding, padding, padding);

        TextView label = new TextView(dialogContext);
        label.setText("伪装设备信息");
        label.setTextSize(14);
        container.addView(label);

        EditText editText = new EditText(dialogContext);
        editText.setHint("例如：MI 13 / Pixel");
        editText.setText(mFakeModel);
        container.addView(editText);

        new AlertDialog.Builder(dialogContext)
                .setTitle("设备信息")
                .setView(container)
                .setPositiveButton("确定", (dialogInterface, i) -> mFakeModel = editText.getText() == null ? "" : editText.getText().toString())
                .setNegativeButton("取消", null)
                .show();
    }

    @Override
    protected void initCallback() {
        HookUtils.hookIfEnable(this, sGetModelMethod, param -> {
            initData();
            param.setResult(mFakeModel);
        }, null);
    }

    @Override
    protected boolean initMethod() throws Throwable {
        sGetModelMethod = MethodUtils.create(ClassUtils._DeviceInfoMonitor())
                .withMethodName("getModel")
                .findOne();
        return true;
    }
}
