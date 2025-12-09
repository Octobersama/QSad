package sama.october.QSad.hook.social;

import android.app.Activity;
import android.content.Context;
import android.text.Editable;
import android.text.InputType;
import android.text.TextWatcher;
import android.view.ContextThemeWrapper;
import android.widget.EditText;

import androidx.appcompat.app.AlertDialog;

import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;

import java.lang.reflect.Method;

import sama.october.QSad.hook.base.BaseSwitchHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.utils.hook.HookUtils;
import sama.october.QSad.utils.hook.xpcompat.XC_MethodHook;
import sama.october.QSad.utils.hook.xpcompat.XposedBridge;
import sama.october.QSad.utils.qq.QQCurrentEnv;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.MethodUtils;

@HookItemAnnotation(TAG = "拍一拍连拍", desc = "双击头像后可输入次数(单日上限200)")
public final class PaiYiPaiHook extends BaseSwitchHookItem {
    private static Method sSendPaiYiPaiMethod;
    private static Method sLiftTimeMethod;

    @Override
    protected boolean initMethod() throws Throwable {

        try {
            sSendPaiYiPaiMethod = MethodUtils.create(ClassUtils._PaiYiPaiHandler())
                    .withReturnType(void.class)
                    .withParamTypes(String.class, String.class, int.class, int.class)
                    .findOne();
        } catch (Exception e) {
            sSendPaiYiPaiMethod = MethodUtils.create(ClassUtils._PaiYiPaiHandler())
                    .withReturnType(void.class)
                    .withParamTypes(int.class, int.class, String.class, String.class)
                    .findOne();
        }

        sLiftTimeMethod = MethodUtils.create(ClassUtils._PaiYiPaiHandler())
                .withReturnType(boolean.class)
                .withParamTypes(String.class)
                .findOne();

        return true;
    }

    @Override
    protected void initCallback() {
        HookUtils.hookIfEnable(this, sLiftTimeMethod, null,
                param -> param.setResult(true));

        HookUtils.hookIfEnable(this, sSendPaiYiPaiMethod, param -> {
            param.setResult(null);
            Activity activity = QQCurrentEnv.getActivity();
            showInputDialog(activity, param);
        }, null);
    }

    private void showInputDialog(Activity activity, XC_MethodHook.MethodHookParam param) {
        Context themed = new ContextThemeWrapper(activity, sama.october.QSad.R.style.Theme_QSad_Compose);
        TextInputLayout layout = new TextInputLayout(themed);
        layout.setHint("连拍次数 (1-200)");
        TextInputEditText editText = new TextInputEditText(themed);

        editText.setText("1");
        editText.setInputType(InputType.TYPE_CLASS_NUMBER);
        editText.addTextChangedListener(createTextWatcher(editText));
        layout.addView(editText);

        new MaterialAlertDialogBuilder(themed, com.google.android.material.R.style.ThemeOverlay_Material3_MaterialAlertDialog)
                .setTitle("请输入次数")
                .setView(layout)
                .setPositiveButton("确定", (dialogInterface, which) -> {
                    String input = editText.getText() == null ? "" : editText.getText().toString();
                    int num = input.isEmpty() ? 1 : Integer.parseInt(input);
                    sendMultiplePaiYiPai(param, num);
                })
                .create()
                .show();
    }

    private TextWatcher createTextWatcher(EditText editText) {
        return new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override
            public void afterTextChanged(Editable s) {
                String text = s.toString();
                if (!text.isEmpty()) {
                    try {
                        int value = Integer.parseInt(text);
                        if (value < 1 || value > 200) {
                            editText.removeTextChangedListener(this);
                            editText.setText(String.valueOf(1));
                            editText.setSelection(editText.getText().length());
                            editText.addTextChangedListener(this);
                        }
                    } catch (NumberFormatException e) {
                        editText.removeTextChangedListener(this);
                        editText.setText("");
                        editText.addTextChangedListener(this);
                    }
                }
            }
        };
    }

    private void sendMultiplePaiYiPai(XC_MethodHook.MethodHookParam param, int count) {
        try {
            for (int i = 0; i < count; i++) {
                XposedBridge.invokeOriginalMethod(param.method, param.thisObject, param.args);
            }
        } catch (Exception e) {
            // 忽略异常
        }
    }
}
