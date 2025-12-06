package sama.october.QSad.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.ArrayList;
import java.util.List;

import sama.october.QSad.loader.hookapi.IHookBridge;
import sama.october.QSad.loader.hookapi.ILoaderService;
import sama.october.QSad.startup.StartUp;
import sama.october.QSad.utils.reflect.ClassUtils;

public class ModuleLoader {

    private static final ArrayList<Throwable> sInitErrors = new ArrayList<>(1);

    private static boolean sLoaded = false;

    private static IHookBridge hookBridge;

    private static ILoaderService loaderService;

    private static String MODULE_PATH;

    public static void initialize(
            @NonNull ClassLoader hostClassLoader,
            @NonNull ILoaderService loaderService,
            @Nullable IHookBridge hookBridge,
            @NonNull String selfPath
    ) throws ReflectiveOperationException {
        if (sLoaded) {
            return;
        }
        ModuleLoader.hookBridge = hookBridge;
        ModuleLoader.loaderService = loaderService;
        ModuleLoader.MODULE_PATH = selfPath;
        ClassUtils.setHostClassLoader(hostClassLoader);

        StartUp.hookApplicationCreate(hostClassLoader);
        sLoaded = true;

    }

    public static List<Throwable> getInitErrors() {
        return sInitErrors;
    }

    public static IHookBridge getHookBridge() {
        return hookBridge;
    }

    public static ILoaderService getLoaderService() {
        return loaderService;
    }

    public static String getMODULE_PATH() {
        return MODULE_PATH;
    }

}
