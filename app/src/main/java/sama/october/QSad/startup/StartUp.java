package sama.october.QSad.startup;

import android.content.Context;

import sama.october.QSad.lifecycle.Parasitics;
import sama.october.QSad.utils.dexkit.DexKit;
import sama.october.QSad.utils.error.ErrorOutput;
import sama.october.QSad.utils.hook.xpcompat.XC_MethodHook;
import sama.october.QSad.utils.hook.xpcompat.XposedHelpers;
import sama.october.QSad.utils.qq.HostInfo;

public class StartUp {

    public static void hookApplicationCreate(ClassLoader classLoader) {
        XposedHelpers.findAndHookMethod("com.tencent.common.app.BaseApplicationImpl",
                classLoader, "onCreate", new XC_MethodHook() {

                    private boolean mIsFirst = true;

                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        if (!mIsFirst) {
                            return;
                        }
                        mIsFirst = false;
                        Context hostContext = (Context) param.thisObject;
                        HostInfo.setHostInfo(hostContext);
                        Parasitics.initForStubActivity(hostContext);
                        Parasitics.injectModuleResources(hostContext.getResources());
                        DexKit.checkVersion();
                        ErrorOutput.recordEnvironmentInfo();

                    }
                });
    }
}