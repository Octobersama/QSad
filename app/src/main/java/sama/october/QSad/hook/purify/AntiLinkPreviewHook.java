package sama.october.QSad.hook.purify;

import java.lang.reflect.Method;

import sama.october.QSad.hook.base.BaseSwitchHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.utils.hook.HookUtils;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.MethodUtils;

@HookItemAnnotation(TAG = "屏蔽链接预览", desc = "屏蔽连接文本的预览信息")
public final class AntiLinkPreviewHook extends BaseSwitchHookItem {

    private static Method addPreview;

    @Override
    protected boolean initMethod() throws Throwable {

        Class<?> LinkInfo = ClassUtils.load("com.tencent.qqnt.kernel.nativeinterface.LinkInfo");

        addPreview = MethodUtils.create(ClassUtils._TextMsgContent())
                .withReturnType(void.class)
                .withParamTypes(null, LinkInfo)
                .findOne();

        return true;
    }

    @Override
    protected void initCallback() {

        HookUtils.replaceIfEnable(this, addPreview, param -> null);


    }
}
