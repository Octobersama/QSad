package sama.october.QSad.hook.msg;

import java.lang.reflect.Method;

import sama.october.QSad.hook.base.BaseSwitchHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.utils.dexkit.DexKit;
import sama.october.QSad.utils.hook.HookUtils;
import sama.october.QSad.utils.qq.HostInfo;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.MethodUtils;

@HookItemAnnotation(TAG = "查看聊天记录回复消息", desc = "强制查看聊天记录回复消息中包含的图片消息（QQ9.1.71(9906)后添加限制，请以实际为准）")
public final class RecordsReplyMsgHook extends BaseSwitchHookItem {
    private static Method sCheckMethod;

    @Override
    protected boolean initMethod() throws Throwable {
        if (HostInfo.getVersionCode() <= 9906) {
            return false;
        }

        sCheckMethod = MethodUtils.create(DexKit.getClass(getNAME()))
                .withReturnType(long.class)
                .withParamTypes(ClassUtils._MsgRecord(), ClassUtils._AIOMsgItem())
                .findOne();

        return true;
    }

    @Override
    protected void initCallback() {
        HookUtils.hookIfEnable(this, sCheckMethod, null,
                param -> param.setResult(1L));
    }
}