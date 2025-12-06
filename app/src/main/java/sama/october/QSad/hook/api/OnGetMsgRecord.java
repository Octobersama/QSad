package sama.october.QSad.hook.api;

import java.lang.reflect.Method;

import sama.october.QSad.hook.base.ApiHookItem;
import sama.october.QSad.utils.hook.HookUtils;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.MethodUtils;

public final class OnGetMsgRecord extends ApiHookItem {
    public static final ApiHookItem INSTANCE = new OnGetMsgRecord();

    @Override
    public void loadHook() throws Throwable {
        Method getMsgRecord = MethodUtils.create(ClassUtils._AIOMsgItem())
                .withMethodName("getMsgRecord")
                .findOne();

        HookUtils.hookAlways(getMsgRecord, null, param -> {
            Object msgRecord = param.getResult();
            for (Listener listener : mListenerSet) {
                if (listener instanceof GetMsgRecordListener) {
                    ((GetMsgRecordListener) listener).onGet(msgRecord);
                }
            }
        });
    }

    public interface GetMsgRecordListener extends Listener {
        void onGet(Object msgRecord) throws Throwable;
    }
}