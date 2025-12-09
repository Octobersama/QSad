package sama.october.QSad.hook.msg;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.widget.ImageView;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import kotlin.Lazy;
import sama.october.QSad.R;
import sama.october.QSad.ui.module.InjectSettings;
import sama.october.QSad.hook.base.BaseWithDataHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.javaplugin.api.MsgData;
import sama.october.QSad.utils.data.DataUtils;
import sama.october.QSad.utils.error.ErrorOutput;
import sama.october.QSad.utils.hook.HookUtils;
import sama.october.QSad.utils.hook.xpcompat.XposedHelpers;
import sama.october.QSad.utils.qq.MsgTool;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.FieldUtils;
import sama.october.QSad.utils.reflect.MethodUtils;

@HookItemAnnotation(TAG = "消息复读", desc = "部分特殊消息无法复读，点击可自定义加一图标")
public final class RepeatMsgHook extends BaseWithDataHookItem {
    public static Bitmap sBitmap;
    private static Method sGetMsgMethod;

    @Override
    protected boolean initMethod() throws Throwable {

        sGetMsgMethod = MethodUtils.create(ClassUtils._AIOMsgFollowComponent())
                .withReturnType(void.class)
                .withParamTypes(int.class, ClassUtils._AIOMsgItem(), List.class)
                .findOne();

        return true;
    }

    @Override
    protected void initCallback() {

        HookUtils.hookIfEnable(this, sGetMsgMethod, null, param -> {

            Object lazy = FieldUtils.create(param.thisObject).ofType(ClassUtils.load(Lazy.class.getName())).getValue();

            ImageView imageView = (ImageView) XposedHelpers.callMethod(lazy, "getValue");
            if (sBitmap != null) {
                imageView.setImageDrawable(new BitmapDrawable(sBitmap));
            } else {
                imageView.setImageResource(R.drawable.repeat);
            }
            if (imageView.getContext().getClass().getName().contains("MultiForwardActivity")) {
                return;
            }
            imageView.setOnClickListener(v -> sendMsg(param.args[1]));
            imageView.setVisibility(View.VISIBLE);
        });
    }

    private void sendMsg(Object aioMsgItem) {
        try {
            Object msgRecord = FieldUtils.create(aioMsgItem)
                    .ofType(ClassUtils._MsgRecord())
                    .inParent(ClassUtils._AIOMsgItem())
                    .getValue();

            MsgData msgData = new MsgData(msgRecord);
            MsgTool.repeatByMsgRecord(msgData);
        } catch (Exception e) {
            ErrorOutput.itemHookError(this, e);
        }
    }

    @Override
    public void initData() {
        File file = DataUtils.createFile("data", "repeat");
        sBitmap = BitmapFactory.decodeFile(file.getAbsolutePath());
    }

    @Override
    public void savaData() {
        File file = DataUtils.createFile("data", "repeat");

        try (FileOutputStream fos = new FileOutputStream(file)) {
            if (sBitmap == null) {
                return;
            }
            sBitmap.compress(Bitmap.CompressFormat.PNG, 100, fos);
            fos.flush();
        } catch (IOException e) {
            ErrorOutput.itemHookError(this, e);
        }
    }

    @Override
    public void onClick(View v) {
        Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        intent.setType("image/*");
        ((Activity) v.getContext()).startActivityForResult(intent, InjectSettings.PICK_IMAGE_REQUEST);
    }
}
