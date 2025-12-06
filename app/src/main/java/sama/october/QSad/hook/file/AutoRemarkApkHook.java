package sama.october.QSad.hook.file;

import sama.october.QSad.hook.api.OnSendMsg;
import sama.october.QSad.hook.base.BaseSwitchHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.utils.reflect.FieldUtils;

@HookItemAnnotation(TAG = "上传apk重命名", desc = "防止上传apk文件时被QQ添加.1后缀")
public final class AutoRemarkApkHook extends BaseSwitchHookItem {
    private OnSendMsg.SendMsgListener mAutoRemarkListener;

    @Override
    public void initCallback() {
        mAutoRemarkListener = msgElements -> {
            for (Object msgElement : msgElements) {
                Object fileElement = FieldUtils.create(msgElement).withName("fileElement").getValue();
                if (fileElement == null) {
                    continue;
                }

                String fileName = (String) FieldUtils.create(fileElement).withName("fileName").getValue();
                if (!fileName.endsWith(".apk")) {
                    return;
                }

                fileName = fileName.substring(0, fileName.length() - 4) + ".APK";
                FieldUtils.create(fileElement).withName("fileName").setValue(fileName);
            }
        };
    }

    @Override
    public void startHook() {
        OnSendMsg.INSTANCE.addListener(mAutoRemarkListener);
    }

    @Override
    public void stopHook() {
        OnSendMsg.INSTANCE.removeListener(mAutoRemarkListener);
    }
}