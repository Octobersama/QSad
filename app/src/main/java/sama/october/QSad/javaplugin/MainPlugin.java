package sama.october.QSad.javaplugin;

import sama.october.QSad.javaplugin.loader.PluginManager;
import sama.october.QSad.ui.host.plugin.PluginViewLoader;
import sama.october.QSad.utils.error.ErrorOutput;

public class MainPlugin {

    public static void initPlugins() {

        PluginManager.stopAllPlugin();
        PluginManager.pluginInfos.clear();
        PluginManager.getAllPlugin();
        PluginManager.autoLoadPlugin();

    }

    public static void initView() {
        try {
            PluginViewLoader.loadFloatButton();
        } catch (Throwable th) {
            ErrorOutput.Error("MainPlugin", th);
        }
    }

}
