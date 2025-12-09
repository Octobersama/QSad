package sama.october.QSad.hook.social;

import android.app.Activity;

import java.lang.reflect.Method;

import sama.october.QSad.ui.host.HostUIFactory;
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
        HostUIFactory.showPaiYiPaiCountDialog(activity, 1, num -> sendMultiplePaiYiPai(param, num));
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
