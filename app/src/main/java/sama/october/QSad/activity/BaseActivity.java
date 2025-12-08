package sama.october.QSad.activity;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;

import sama.october.QSad.R;
import sama.october.QSad.lifecycle.Parasitics;
import sama.october.QSad.utils.classloader.ModuleClassLoader;
import sama.october.QSad.utils.qq.HostInfo;

/**
 * 模块Activity基类
 * 解决了以下问题：
 * 1. ClassLoader冲突 - 通过自定义ClassLoader隔离模块和宿主的类
 * 2. 主题设置 - 在onCreate之前正确设置Material主题
 * 3. 资源注入 - 确保模块资源在宿主进程中可用
 *
 * 参考QAuxiliary的BaseActivity和AppCompatTransferActivity实现
 */
public abstract class BaseActivity extends AppCompatActivity {

    private ClassLoader mModuleClassLoader = null;

    /**
     * 覆盖getClassLoader方法，返回自定义的ModuleClassLoader
     * 这是解决ClassLoader冲突的关键
     */
    @Override
    public ClassLoader getClassLoader() {
        if (mModuleClassLoader == null) {
            mModuleClassLoader = new ModuleClassLoader(BaseActivity.class.getClassLoader());
        }
        return mModuleClassLoader;
    }

    /**
     * 在attachBaseContext中设置夜间模式
     */
    @Override
    protected void attachBaseContext(Context newBase) {
        if (!HostInfo.isInHostProcess()) {
            // 如果不在宿主进程中运行，同步夜间模式设置
            // 简单起见，这里使用默认的日间模式
            AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_NO);
        }
        super.attachBaseContext(newBase);
    }

    /**
     * 在onCreate之前设置主题
     * 这样Material Design组件才能正确工作
     */
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        // 在设置主题前注入模块资源，避免宿主主题导致AppCompat校验失败
        if (HostInfo.isInHostProcess()) {
            Parasitics.injectModuleResources(getResources());
        }
        // 在super.onCreate()之前设置主题
        setTheme(R.style.AppTheme);
        super.onCreate(savedInstanceState);
    }

    /**
     * 覆盖getResources方法，确保模块资源在宿主进程中可用
     */
    @Override
    public Resources getResources() {
        Resources res = super.getResources();
        // 在宿主进程中确保模块资源已注入，避免主题解析失败
        if (HostInfo.isInHostProcess()) {
            Parasitics.injectModuleResources(res);
        }
        return res;
    }

    /**
     * 配置变更时重新注入资源
     */
    @Override
    public void onConfigurationChanged(@NonNull Configuration newConfig) {
        try {
            getString(R.string.app_name);
        } catch (Resources.NotFoundException e) {
            // 资源未注入，尝试注入
            if (HostInfo.isInHostProcess()) {
                Parasitics.injectModuleResources(getResources());
            }
        }
        super.onConfigurationChanged(newConfig);
    }
}
