package sama.october.QSad.hook.device;

import android.app.AlertDialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.EditText;

import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;

import java.lang.reflect.Method;

import sama.october.QSad.activity.ModuleComponentActivity;
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
        Context context = v.getContext();
        if (isHostPackage(context)) {
            EditText editText = new EditText(context);
            editText.setText(mFakeModel);
            editText.setHint("伪装设备信息");

            new AlertDialog.Builder(context)
                    .setTitle("设备信息")
                    .setView(editText)
                    .setPositiveButton("确定", (dialogInterface, i) -> mFakeModel = editText.getText() == null ? "" : editText.getText().toString())
                    .setNegativeButton("取消", null)
                    .show();
        } else {
            TextInputLayout layout = new TextInputLayout(context);
            layout.setHint("伪装设备信息");
            TextInputEditText editText = new TextInputEditText(context);
            editText.setText(mFakeModel);
            layout.addView(editText);

            new MaterialAlertDialogBuilder(context, com.google.android.material.R.style.ThemeOverlay_Material3_MaterialAlertDialog)
                    .setTitle("设备信息")
                    .setView(layout)
                    .setPositiveButton("确定", (dialogInterface, i) -> mFakeModel = editText.getText() == null ? "" : editText.getText().toString())
                    .setNegativeButton("取消", null)
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
