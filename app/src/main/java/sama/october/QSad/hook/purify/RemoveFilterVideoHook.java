package sama.october.QSad.hook.purify;

import java.lang.reflect.Method;
import java.util.List;

import sama.october.QSad.hook.base.BaseSwitchHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.utils.dexkit.DexKit;
import sama.october.QSad.utils.hook.HookUtils;
import sama.october.QSad.utils.qq.HostInfo;
import sama.october.QSad.utils.reflect.MethodUtils;

@HookItemAnnotation(TAG = "去除滤镜视频", desc = "去除新版QQ底部选项中的滤镜视频（QQ9.2.10（11310）及以上）")
public final class RemoveFilterVideoHook extends BaseSwitchHookItem {
    private static Method sAddFilterVideoItem;

    @Override
    protected boolean initMethod() throws Throwable {
        if (HostInfo.isTIM() || (HostInfo.isQQ() && HostInfo.getVersionCode() < 11310)) {
            return false;
        }
        sAddFilterVideoItem = MethodUtils.create(DexKit.getClass(getNAME())).withParamTypes(void.class).withParamTypes(List.class, null).findOne();
        return true;
    }

    @Override
    protected void initCallback() {
        HookUtils.replaceIfEnable(this, sAddFilterVideoItem, param -> null);
    }
}
