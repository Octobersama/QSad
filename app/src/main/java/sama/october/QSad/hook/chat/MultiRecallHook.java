package sama.october.QSad.hook.chat;

import android.view.View;
import android.widget.LinearLayout;

import java.lang.reflect.Method;
import java.util.List;
import java.util.Objects;

import sama.october.QSad.R;
import sama.october.QSad.hook.base.BaseSwitchHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.javaplugin.api.MsgData;
import sama.october.QSad.utils.dexkit.DexKit;
import sama.october.QSad.utils.error.ErrorOutput;
import sama.october.QSad.utils.hook.HookUtils;
import sama.october.QSad.utils.hook.xpcompat.XposedHelpers;
import sama.october.QSad.utils.qq.HostInfo;
import sama.october.QSad.utils.qq.MsgTool;
import sama.october.QSad.utils.qq.QQCurrentEnv;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.FieldUtils;
import sama.october.QSad.utils.reflect.MethodUtils;
import sama.october.QSad.utils.thread.SimpleIntervalExecutor;

@HookItemAnnotation(TAG = "多选撤回", desc = "为多选菜单中添加批量撤回功能")
public final class MultiRecallHook extends BaseSwitchHookItem {
    private static Method sInvoke;
    private static Method sMakeView;
    private static Method getMsgList;
    private static Method sCreateVM;
    private final SimpleIntervalExecutor executor = new SimpleIntervalExecutor(300);
    private Class<?> sMultiForward;
    private Object multiSelectBarVM;

    @Override
    protected boolean initMethod() throws Throwable {

        String className = "";
        String innerClassName = "$mOperationLayout$2";
        if (HostInfo.isTIM()) {
            className = "com.tencent.tim.aio.inputbar.TimMultiSelectBarVB";
        } else if (HostInfo.isQQ()) {
            className = "com.tencent.mobileqq.aio.input.multiselect.MultiSelectBarVB";
        }
        Class<?> MultiSelectBarVB = ClassUtils.load(className);
        Class<?> mOperationLayout = ClassUtils.load(className + innerClassName);
        Class<?> BaseVM = ClassUtils.load("com.tencent.mvi.mvvm.BaseVM");
        sMultiForward = DexKit.getClass(getNAME());
        getMsgList = MethodUtils.create(sMultiForward)
                .withReturnType(List.class)
                .withParamCount(1)
                .findOne();

        sInvoke = MethodUtils.create(mOperationLayout)
                .withMethodName("invoke")
                .findOne();
        sMakeView = MethodUtils.create(MultiSelectBarVB)
                .withReturnType(View.class)
                .withParamTypes(MultiSelectBarVB, int.class, int.class, View.OnClickListener.class)
                .findOne();
        sCreateVM = MethodUtils.create(MultiSelectBarVB)
                .withReturnType(BaseVM)
                .withParamCount(0)
                .findOne();


        return true;

    }

    @Override
    protected void initCallback() {

        HookUtils.hookIfEnable(this, sCreateVM, null, param -> multiSelectBarVM = param.getResult());

        HookUtils.hookIfEnable(this, sInvoke, null, param -> {

            LinearLayout operationLayout = (LinearLayout) param.getResult();
            Object multiSelectBarVB = FieldUtils.create(param.thisObject).withName("this$0").getValue();

            View recallButton = (View) sMakeView.invoke(null, multiSelectBarVB, R.drawable.recall, R.drawable.recall, (View.OnClickListener) view -> {

                try {

                    Object multiForward = ClassUtils.makeDefaultObject(sMultiForward);

                    Object mContext = null;

                    if (HostInfo.isQQ()) {
                        mContext = XposedHelpers.callMethod(multiSelectBarVM, "getMContext");
                    } else if (HostInfo.isTIM()) {

                        Method getMContext = MethodUtils.create(ClassUtils.load("com.tencent.mvi.mvvm.framework.FrameworkVM"))
                                .withReturnType(getMsgList.getParameterTypes()[0].getSuperclass())
                                .withParamCount(0)
                                .findOne();
                        mContext = getMContext.invoke(multiSelectBarVM);

                    }

                    List<Object> msgList = (List<Object>) getMsgList.invoke(multiForward, mContext);

                    for (Object aIOMsgItem : Objects.requireNonNull(msgList)) {

                        if (msgList.size() > 10) {
                            executor.addTask(() -> recallByAIOMsgItem(aIOMsgItem));
                        } else {
                            recallByAIOMsgItem(aIOMsgItem);
                        }

                    }

                    executor.startExecute();
                    Objects.requireNonNull(QQCurrentEnv.getActivity()).onBackPressed();

                } catch (Throwable th) {
                    ErrorOutput.itemHookError(MultiRecallHook.this, th);
                }
            });
            operationLayout.addView(recallButton, operationLayout.getChildCount() - 2);

        });

    }

    private void recallByAIOMsgItem(Object aIOMsgItem) {

        try {

            Object msgRecord = FieldUtils.create(aIOMsgItem)
                    .ofType(ClassUtils._MsgRecord())
                    .inParent(ClassUtils._AIOMsgItem())
                    .getValue();
            MsgData msgData = new MsgData(msgRecord);

            MsgTool.recallMsg(msgData.contact, msgData.msgId);
        } catch (Throwable th) {
            ErrorOutput.itemHookError(this, th);
        }

    }
}
