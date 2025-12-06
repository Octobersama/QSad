package sama.october.QSad.hook.api;

import java.lang.reflect.Method;
import java.util.ArrayList;

import sama.october.QSad.hook.base.ApiHookItem;
import sama.october.QSad.utils.hook.HookUtils;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.MethodUtils;

public final class OnSendMsg extends ApiHookItem {
    public static final ApiHookItem INSTANCE = new OnSendMsg();

    @Override
    public void loadHook() throws Throwable {
        Method sendMsg = MethodUtils.create(ClassUtils._IKernelMsgService$CppProxy())
                .withMethodName("sendMsg")
                .findOne();

        HookUtils.hookAlways(sendMsg, param -> {
            ArrayList<?> msgElements = (ArrayList<?>) param.args[2];
            for (Listener listener : mListenerSet) {
                if (listener instanceof SendMsgListener) {
                    ((SendMsgListener) listener).onSend(msgElements);
                }
            }
        }, null);
    }

    public interface SendMsgListener extends Listener {
        void onSend(ArrayList<?> msgElements) throws Throwable;
    }
}