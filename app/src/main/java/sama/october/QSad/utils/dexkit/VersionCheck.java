package sama.october.QSad.utils.dexkit;

import java.util.HashMap;
import java.util.Map;

import sama.october.QSad.BuildConfig;
import sama.october.QSad.utils.data.DataUtils;
import sama.october.QSad.utils.qq.HostInfo;

public class VersionCheck {
    public static boolean checkVersion() {
        Object obj = DataUtils.deserialize("dexkit", "lastVersionMap");
        if (obj != null) {
            Map<String, Long> lastVersionMap = (Map<String, Long>) obj;
            return (getModuleVersionCode() != lastVersionMap.get("module") ||
                    HostInfo.getVersionCode() != lastVersionMap.get("host"));
        }
        return true;
    }

    private static long getModuleVersionCode() {
        return Integer.toUnsignedLong(BuildConfig.VERSION_CODE);
    }

    public static Map<String, Long> getLatestVersionMap() {
        Map<String, Long> latestVersionMap = new HashMap<>();
        latestVersionMap.put("module", getModuleVersionCode());
        latestVersionMap.put("host", HostInfo.getVersionCode());
        return latestVersionMap;
    }
}