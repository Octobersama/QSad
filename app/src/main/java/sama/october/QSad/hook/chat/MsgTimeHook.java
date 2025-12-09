package sama.october.QSad.hook.chat;

import android.graphics.Color;
import android.view.Gravity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import sama.october.QSad.R;
import sama.october.QSad.ui.host.HostUIFactory;
import sama.october.QSad.hook.api.OnAIOViewUpdate;
import sama.october.QSad.hook.base.BaseWithDataHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.utils.data.DataUtils;
import sama.october.QSad.utils.reflect.FieldUtils;

@HookItemAnnotation(TAG = "显示消息时间", desc = "显示消息发送时间，点击可设置时间格式及颜色")
public final class MsgTimeHook extends BaseWithDataHookItem {
    private static final String DATA_KEY = "MsgTimeConfig";
    private static final String KEY_COLOR = "color";
    private static final String KEY_FORMAT = "format";
    private static final int DEFAULT_COLOR = Color.BLUE;
    private static final String DEFAULT_FORMAT = "HH:mm:ss";

    private OnAIOViewUpdate.AIOViewUpdateListener mAddViewToMsgView;
    private int mCurrentColor = DEFAULT_COLOR;
    private String mCurrentFormat = DEFAULT_FORMAT;

    @Override
    protected void initCallback() {
        mAddViewToMsgView = this::setView;
    }

    @Override
    public void startHook() {
        OnAIOViewUpdate.INSTANCE.addListener(mAddViewToMsgView);
    }

    @Override
    public void stopHook() {
        OnAIOViewUpdate.INSTANCE.removeListener(mAddViewToMsgView);
    }

    private boolean checkFormat(String time) {
        if (time == null) {
            return false;
        }
        try {
            SimpleDateFormat formatter = new SimpleDateFormat(mCurrentFormat, Locale.getDefault());
            formatter.parse(time);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    @Override
    public void initData() {
        Object obj = DataUtils.deserialize("data", DATA_KEY);
        if (obj != null) {
            Map<String, String> config = (Map<String, String>) obj;
            mCurrentColor = Integer.parseInt(config.get(KEY_COLOR));
            mCurrentFormat = config.get(KEY_FORMAT);
        }
    }

    @Override
    public void savaData() {
        Map<String, String> config = new HashMap<>();
        config.put(KEY_COLOR, String.valueOf(mCurrentColor));
        config.put(KEY_FORMAT, mCurrentFormat);
        DataUtils.serialize("data", DATA_KEY, config);
    }

    @Override
    public void onClick(View v) {
        HostUIFactory.showMsgTimeFormatDialog(v.getContext(), mCurrentColor, mCurrentFormat,
                (color, format) -> {
                    mCurrentColor = color;
                    mCurrentFormat = format;
                });
    }

    private void setView(FrameLayout frameLayout, Object msgRecord) {
        long timeStamp = (long) FieldUtils.create(msgRecord).withName("msgTime").getValue() * 1000;
        SimpleDateFormat formatter = new SimpleDateFormat(mCurrentFormat, Locale.getDefault());
        String msgTime = formatter.format(new Date(timeStamp));
        TextView timeView = null;

        for (int i = 0; i < frameLayout.getChildCount(); i++) {
            View v = frameLayout.getChildAt(i);
            if (v instanceof TextView) {
                TextView tv = (TextView) v;
                if (checkFormat(tv.getText().toString())) {
                    timeView = tv;
                }
            }
        }

        if (timeView == null) {
            timeView = new TextView(frameLayout.getContext());
            timeView.setTextSize(10);
            timeView.setTextColor(mCurrentColor);
            timeView.setText(msgTime);
            FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(
                    FrameLayout.LayoutParams.WRAP_CONTENT, FrameLayout.LayoutParams.WRAP_CONTENT);
            params.gravity = Gravity.RIGHT | Gravity.BOTTOM;
            frameLayout.addView(timeView, params);
        } else {
            timeView.setText(msgTime);
        }
    }

}
