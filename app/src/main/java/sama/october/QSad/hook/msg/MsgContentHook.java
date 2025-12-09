package sama.october.QSad.hook.msg;

import android.content.Context;
import android.view.Gravity;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.app.AlertDialog;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import sama.october.QSad.hook.api.OnGetMsgRecord;
import sama.october.QSad.hook.api.OnMsgMenuOpen;
import sama.october.QSad.hook.base.BaseSwitchHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.utils.error.ErrorOutput;
import sama.october.QSad.utils.qq.QQCurrentEnv;
import sama.october.QSad.utils.reflect.FieldUtils;

@HookItemAnnotation(TAG = "修改本地消息文本", desc = "长按消息出现修改文本选项，滑动或重新进入聊天界面刷新")
public final class MsgContentHook extends BaseSwitchHookItem {
    private static final String MENU_KEY = "[QSad],,文本修改,2,9";

    private final Map<Long, Map<Integer, String>> mMsgMap = new LinkedHashMap<>();
    private OnMsgMenuOpen.OnMsgMenuClickListener mMenuClickListener;
    private OnGetMsgRecord.GetMsgRecordListener mGetMsgListener;

    @Override
    protected void initCallback() {
        mGetMsgListener = msgRecord -> {
            long msgId = (long) FieldUtils.create(msgRecord).withName("msgId").getValue();

            for (long storedMsgId : mMsgMap.keySet()) {
                if (storedMsgId == msgId) {
                    Map<Integer, String> items = mMsgMap.get(storedMsgId);
                    ArrayList<Object> msgElements = (ArrayList<Object>) FieldUtils.create(msgRecord)
                            .withName("elements").getValue();

                    for (int index : items.keySet()) {
                        Object textElement = FieldUtils.create(msgElements.get(index))
                                .withName("textElement").getValue();
                        FieldUtils.create(textElement).withName("content").setValue(items.get(index));
                    }
                }
            }
        };

        mMenuClickListener = msgData -> {
            Map<Integer, String> items = new LinkedHashMap<>();

            try {
                long msgId = msgData.msgId;
                ArrayList<Object> msgElements = (ArrayList<Object>) FieldUtils.create(msgData.data)
                        .withName("elements").getValue();

                for (int i = 0; i < msgElements.size(); i++) {
                    Object textElement = FieldUtils.create(msgElements.get(i))
                            .withName("textElement").getValue();

                    if (textElement == null) {
                        continue;
                    }

                    String content = FieldUtils.create(textElement).withName("content").getValue().toString();
                    int atType = (int) FieldUtils.create(textElement).withName("atType").getValue();

                    if (atType == 0) {
                        items.put(i, content);
                    }
                }

                showEditDialog(msgId, items);
            } catch (Exception e) {
                ErrorOutput.itemHookError(this, e);
            }
        };
    }

    @Override
    public void startHook() {
        ((OnMsgMenuOpen) OnMsgMenuOpen.INSTANCE).addListener(MENU_KEY, mMenuClickListener);
        OnGetMsgRecord.INSTANCE.addListener(mGetMsgListener);
    }

    @Override
    public void stopHook() {
        ((OnMsgMenuOpen) OnMsgMenuOpen.INSTANCE).removeListener(MENU_KEY);
        OnGetMsgRecord.INSTANCE.removeListener(mGetMsgListener);
    }

    private void showEditDialog(long msgId, Map<Integer, String> items) {
        Context context = QQCurrentEnv.getActivity();
        LinearLayout container = new LinearLayout(context);
        float density = context.getResources().getDisplayMetrics().density;
        int padding = (int) (density * 16);
        int fieldPadding = (int) (density * 8);
        container.setPadding(padding, padding, padding, padding);
        container.setOrientation(LinearLayout.VERTICAL);

        Integer[] keys = items.keySet().toArray(new Integer[0]);
        String[] values = items.values().toArray(new String[0]);
        Map<Integer, String> result = new LinkedHashMap<>();
        List<EditText> editTexts = new ArrayList<>();

        if (items.isEmpty()) {
            TextView textView = new TextView(context);
            textView.setText("无可修改文本");
            textView.setTextSize(16);
            LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.WRAP_CONTENT,
                    LinearLayout.LayoutParams.WRAP_CONTENT);
            params.gravity = Gravity.CENTER;
            container.addView(textView, params);
        } else {
            for (int i = 0; i < values.length; i++) {
                EditText editText = new EditText(context);
                editText.setHint(values[i]);
                editText.setText(values[i]);
                editText.setPadding(fieldPadding, fieldPadding, fieldPadding, fieldPadding);
                LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                        LinearLayout.LayoutParams.MATCH_PARENT,
                        LinearLayout.LayoutParams.WRAP_CONTENT);
                if (i > 0) {
                    params.topMargin = fieldPadding;
                }
                container.addView(editText, params);
                editTexts.add(editText);
            }
        }

        new AlertDialog.Builder(context)
                .setTitle("可修改文本")
                .setView(container)
                .setNegativeButton("取消", null)
                .setPositiveButton("确定", (dialog, which) -> {
                    if (editTexts.isEmpty()) {
                        return;
                    }

                    for (int i = 0; i < editTexts.size(); i++) {
                        String text = editTexts.get(i).getText().toString();
                        if (!text.isEmpty()) {
                            result.put(keys[i], text);
                        }
                    }

                    mMsgMap.put(msgId, result);
                })
                .show();
    }
}
