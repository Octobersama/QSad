package sama.october.QSad.ui.host.plugin;

import java.lang.reflect.Method;

import sama.october.QSad.javaplugin.loader.PluginInfo;
import sama.october.QSad.javaplugin.loader.PluginManager;
import sama.october.QSad.utils.error.ErrorOutput;
import sama.october.QSad.utils.hook.HookUtils;
import sama.october.QSad.utils.qq.QQCurrentEnv;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.MethodUtils;
import sama.october.QSad.utils.thread.SyncUtils;

public class PluginViewLoader {
    private static PluginView sPluginView;

    public static void loadFloatButton() throws Throwable {
        sPluginView = new PluginView();

        Class<?> ChatFragment = ClassUtils.load("com.tencent.aio.main.fragment.ChatFragment");

        Method onHiddenChanged = MethodUtils.create(ChatFragment)
                .withMethodName("onHiddenChanged")
                .findOne();

        HookUtils.hookAlways(onHiddenChanged, null, param -> {

            boolean status = (boolean) param.args[0];
            SyncUtils.post(() -> {
                for (PluginInfo pluginInfo : PluginManager.pluginInfos) {
                    if (pluginInfo.isRunning && QQCurrentEnv.getActivity() != null) {
                        if (status) {
                            sPluginView.dismissFloatButton();
                            return;
                        } else {
                            try {
                                sPluginView.initPopupWindow();
                                sPluginView.showFloatingButton();
                                return;
                            } catch (Throwable th) {
                                ErrorOutput.Error("PluginViewLoader", th);
                            }
                        }
                    }
                }
            });
        });

    }

}
