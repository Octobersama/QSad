package sama.october.QSad.hook.browser;

import java.lang.reflect.Method;

import sama.october.QSad.hook.base.BaseSwitchHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.utils.hook.HookUtils;
import sama.october.QSad.utils.hook.xpcompat.XposedBridge;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.MethodUtils;

@HookItemAnnotation(TAG = "解除风险网页拦截", desc = "点击消息中链接时不再拦截风险网页", TargetProcess = ":tool")
public final class RemoveRiskWebpageBlockHook extends BaseSwitchHookItem {
    private static Method sLoadUrl;

    private String targetUrl;

    @Override
    protected boolean initMethod() throws Throwable {

        sLoadUrl = MethodUtils.create(ClassUtils._CustomWebView())
                .withMethodName("loadUrl")
                .findOne();

        return true;
    }

    @Override
    protected void initCallback() {
        HookUtils.replaceIfEnable(this, sLoadUrl, param -> {
            String url = (String) param.args[0];
            if (url.contains("c.pc.qq.com")) {
                return XposedBridge.invokeOriginalMethod(param.method, param.thisObject, new Object[]{targetUrl});
            } else {
                targetUrl = url;
                return XposedBridge.invokeOriginalMethod(param.method, param.thisObject, param.args);
            }
        });
    }
}