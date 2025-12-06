package sama.october.QSad.loader.xp51;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import de.robv.android.xposed.XposedBridge;
import sama.october.QSad.common.CheckUtils;
import sama.october.QSad.common.ModuleLoader;


public class Xp51ExtCmd {

    private Xp51ExtCmd() {
    }

    public static Object handleQueryExtension(@NonNull String cmd, @Nullable Object[] arg) {
        CheckUtils.checkNonNull(cmd, "cmd");
        return switch (cmd) {
            case "GetXposedBridgeClass" -> XposedBridge.class;
            case "GetLoadPackageParam" -> Xp51HookEntry.getLoadPackageParam();
            case "GetInitZygoteStartupParam" -> Xp51HookEntry.getInitZygoteStartupParam();
            case "GetInitErrors" -> ModuleLoader.getInitErrors();
            default -> null;
        };
    }

}
