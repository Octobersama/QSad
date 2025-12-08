package sama.october.QSad.activity;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.activity.ComponentActivity;

import sama.october.QSad.R;
import sama.october.QSad.lifecycle.Parasitics;
import sama.october.QSad.utils.classloader.ModuleClassLoader;
import sama.october.QSad.utils.qq.HostInfo;

/**
 * ComponentActivity 版本的基础类，避免依赖 AppCompat 主题。
 * 保留 ClassLoader/资源注入能力，支持在宿主进程使用模块资源。
 */
public abstract class ModuleComponentActivity extends ComponentActivity {

    private ClassLoader mModuleClassLoader = null;

    @Override
    public ClassLoader getClassLoader() {
        if (mModuleClassLoader == null) {
            mModuleClassLoader = new ModuleClassLoader(ModuleComponentActivity.class.getClassLoader());
        }
        return mModuleClassLoader;
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(newBase);
    }

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        // 使用 Material3 主题，确保不走 AppCompat 路径
        setTheme(R.style.Theme_QSad_Compose);
        super.onCreate(savedInstanceState);
    }

    @Override
    public Resources getResources() {
        Resources res = super.getResources();
        if (HostInfo.isInHostProcess()) {
            Parasitics.injectModuleResources(res);
        }
        return res;
    }

    @Override
    public void onConfigurationChanged(@NonNull Configuration newConfig) {
        if (HostInfo.isInHostProcess()) {
            Parasitics.injectModuleResources(getResources());
        }
        super.onConfigurationChanged(newConfig);
    }
}
