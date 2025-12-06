package sama.october.QSad.hook.purify;

import java.lang.reflect.Method;

import sama.october.QSad.hook.base.BaseSwitchHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.utils.dexkit.DexKit;
import sama.october.QSad.utils.hook.HookUtils;

@HookItemAnnotation(TAG = "移除表情回应", desc = "长按消息时不再显示回应表情的菜单")
public final class RemoveEmoReplyHook extends BaseSwitchHookItem {

    private static Method needShow;

    @Override
    protected boolean initMethod() throws Throwable {
        needShow = DexKit.getMethod(getNAME());
        return true;
    }

    @Override
    protected void initCallback() {
        HookUtils.replaceIfEnable(this, needShow, param -> false);
    }
}
