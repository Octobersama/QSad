package sama.october.QSad.utils.classloader;

import android.content.Context;

import java.util.Objects;

import sama.october.QSad.utils.reflect.ClassUtils;

/**
 * 自定义ClassLoader用于解决模块Activity与宿主应用之间的ClassLoader冲突
 * 参考QAuxiliary的SavedInstanceStatePatchedClassReferencer实现
 */
public class ModuleClassLoader extends ClassLoader {

    private static final ClassLoader BOOTSTRAP = Context.class.getClassLoader();
    private final ClassLoader mModuleClassLoader;
    private final ClassLoader mHostClassLoader;

    public ModuleClassLoader(ClassLoader moduleClassLoader) {
        super(BOOTSTRAP);
        mModuleClassLoader = Objects.requireNonNull(moduleClassLoader);
        mHostClassLoader = ClassUtils.getHostClassLoader();
    }

    @Override
    protected Class<?> findClass(String name) throws ClassNotFoundException {
        // 1. 首先尝试从Bootstrap ClassLoader加载
        try {
            return BOOTSTRAP.loadClass(name);
        } catch (ClassNotFoundException ignored) {
        }

        // 2. 对于特定的类，从宿主ClassLoader加载以避免冲突
        if (mHostClassLoader != null) {
            try {
                if ("androidx.lifecycle.ReportFragment".equals(name)) {
                    return mHostClassLoader.loadClass(name);
                }
            } catch (ClassNotFoundException ignored) {
            }
        }

        // 3. 其他类从模块的ClassLoader加载
        return mModuleClassLoader.loadClass(name);
    }
}
