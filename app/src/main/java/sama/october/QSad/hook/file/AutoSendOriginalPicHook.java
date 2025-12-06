package sama.october.QSad.hook.file;

import java.lang.reflect.Method;

import sama.october.QSad.hook.base.BaseSwitchHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.utils.hook.HookUtils;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.MethodUtils;

@HookItemAnnotation(TAG = "自动勾选原图", desc = "发送图片时自动勾选原图（半屏相册）")
public final class AutoSendOriginalPicHook extends BaseSwitchHookItem {
    private static Method sHandleUIState;
    private static Method sSetChecked;

    @Override
    protected boolean initMethod() throws Throwable {

        sHandleUIState = MethodUtils.create(ClassUtils._PhotoPanelVB())
                .withReturnType(void.class)
                .withParamTypes(ClassUtils.load("com.tencent.mvi.base.mvi.MviUIState"))
                .findOne();

        sSetChecked = MethodUtils.create(ClassUtils._PhotoPanelVB())
                .withAccessModifier(MethodUtils.AccessModifier.PUBLIC)
                .withReturnType(void.class)
                .withParamTypes(boolean.class)
                .findOne();

        return true;
    }

    @Override
    protected void initCallback() {
        HookUtils.hookIfEnable(this, sHandleUIState, null,
                param -> sSetChecked.invoke(param.thisObject, true));
    }
}