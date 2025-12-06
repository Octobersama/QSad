package sama.october.QSad.hook.purify;

import java.lang.reflect.Method;

import kotlin.jvm.functions.Function0;
import sama.october.QSad.hook.base.BaseSwitchHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.utils.hook.HookUtils;
import sama.october.QSad.utils.qq.HostInfo;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.MethodUtils;

@HookItemAnnotation(TAG = "屏蔽弹出动画", desc = "屏蔽某些特定文本消息弹出的与游戏相关的烦人动画")
public final class AntiInteractivePopHook extends BaseSwitchHookItem {
    private static Method sPopMethod;

    @Override
    protected boolean initMethod() throws Throwable {
        if (HostInfo.isTIM()) return false;
        Class<?> Fragment = ClassUtils.load("androidx.fragment.app.Fragment");
        Class<?> Function0 = ClassUtils.load(Function0.class.getName());

        sPopMethod = MethodUtils.create(ClassUtils._InteractivePopManager()).withReturnType(void.class).withParamTypes(Fragment, null, null, Function0).findOne();

        return true;
    }

    @Override
    protected void initCallback() {
        HookUtils.replaceIfEnable(this, sPopMethod, param -> null);
    }

}