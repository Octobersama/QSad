package sama.october.QSad.hook.chat;

import android.app.AlertDialog;
import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Color;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import sama.october.QSad.R;
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
        new TimeFormatDialog(v.getContext()).show();
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

    private String colorToHex(int color) {
        return String.format("#%08X", color);
    }

    private int parseColor(String colorStr) throws IllegalArgumentException {
        String cleanColor = colorStr.replaceAll("[^a-fA-F0-9]", "");
        if (cleanColor.length() == 6) {
            return Color.parseColor("#FF" + cleanColor);
        } else if (cleanColor.length() == 8) {
            return Color.parseColor("#" + cleanColor);
        } else {
            throw new IllegalArgumentException("必须是6位或8位十六进制值");
        }
    }

    private class TimeFormatDialog {
        private final boolean mUseHostStyle;
        private final android.app.AlertDialog mHostDialog;
        private final androidx.appcompat.app.AlertDialog mDialog;
        private final EditText mColorInput;
        private final EditText mFormatInput;
        private final TextView mPreviewText;
        private final TextView mErrorText;
        private Button mPositiveButton;
        private int mConfirmedColor;
        private String mConfirmedFormat;

        public TimeFormatDialog(Context context) {
            mUseHostStyle = context.getPackageName() != null && context.getPackageName().contains("com.tencent.mobileqq");
            View dialogView;

            if (mUseHostStyle) {
                float density = context.getResources().getDisplayMetrics().density;
                int padding = (int) (density * 16);
                LinearLayout container = new LinearLayout(context);
                container.setOrientation(LinearLayout.VERTICAL);
                container.setPadding(padding, padding, padding, padding);

                TextView colorLabel = new TextView(context);
                colorLabel.setText("ARGB 颜色代码");
                container.addView(colorLabel);

                mColorInput = new EditText(context);
                container.addView(mColorInput);

                TextView formatLabel = new TextView(context);
                formatLabel.setText("时间格式");
                LinearLayout.LayoutParams formatParams = new LinearLayout.LayoutParams(
                        LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
                formatParams.topMargin = padding / 2;
                container.addView(formatLabel, formatParams);

                mFormatInput = new EditText(context);
                container.addView(mFormatInput);

                mErrorText = new TextView(context);
                mErrorText.setVisibility(View.GONE);
                LinearLayout.LayoutParams errParams = new LinearLayout.LayoutParams(
                        LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
                errParams.topMargin = padding / 2;
                container.addView(mErrorText, errParams);

                mPreviewText = new TextView(context);
                mPreviewText.setGravity(Gravity.CENTER);
                mPreviewText.setPadding(padding / 2, padding / 2, padding / 2, padding / 2);
                LinearLayout.LayoutParams previewParams = new LinearLayout.LayoutParams(
                        LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
                previewParams.topMargin = padding / 2;
                container.addView(mPreviewText, previewParams);

                dialogView = container;
                mHostDialog = new AlertDialog.Builder(context)
                        .setTitle("时间格式设置")
                        .setView(dialogView)
                        .setPositiveButton("确认", null)
                        .setNegativeButton("取消", null)
                        .create();
                mDialog = null;
            } else {
                LayoutInflater inflater = LayoutInflater.from(context);
                dialogView = inflater.inflate(R.layout.dialog_time_format, null);
                mColorInput = dialogView.findViewById(R.id.et_color);
                mFormatInput = dialogView.findViewById(R.id.et_format);
                mPreviewText = dialogView.findViewById(R.id.tv_preview);
                mErrorText = dialogView.findViewById(R.id.tv_error);

                mDialog = new MaterialAlertDialogBuilder(context, com.google.android.material.R.style.ThemeOverlay_Material3_MaterialAlertDialog)
                        .setTitle("时间格式设置")
                        .setView(dialogView)
                        .setPositiveButton("确认", null)
                        .setNegativeButton("取消", null)
                        .create();
                mHostDialog = null;
            }

            mColorInput.setText(colorToHex(mCurrentColor));
            mFormatInput.setText(mCurrentFormat);
            mPreviewText.setText(new SimpleDateFormat(mCurrentFormat, Locale.getDefault()).format(new Date()));
            mPreviewText.setTextColor(mCurrentColor);

            mConfirmedColor = mCurrentColor;
            mConfirmedFormat = mCurrentFormat;

            if (mUseHostStyle && mHostDialog != null) {
                mHostDialog.setOnShowListener(dialogInterface -> {
                    mPositiveButton = mHostDialog.getButton(android.app.AlertDialog.BUTTON_POSITIVE);
                    Button negativeButton = mHostDialog.getButton(android.app.AlertDialog.BUTTON_NEGATIVE);
                    attachListeners(negativeButton);
                });
                mHostDialog.setOnCancelListener(dialogInterface -> {
                    mCurrentColor = mConfirmedColor;
                    mCurrentFormat = mConfirmedFormat;
                });
            } else if (mDialog != null) {
                mDialog.setOnShowListener(dialogInterface -> {
                    mPositiveButton = mDialog.getButton(AlertDialog.BUTTON_POSITIVE);
                    Button negativeButton = mDialog.getButton(AlertDialog.BUTTON_NEGATIVE);
                    attachListeners(negativeButton);
                });
                mDialog.setOnCancelListener(dialogInterface -> {
                    mCurrentColor = mConfirmedColor;
                    mCurrentFormat = mConfirmedFormat;
                });
            }
        }

        private void attachListeners(Button negativeButton) {
            TextWatcher validationWatcher = new TextWatcher() {
                @Override
                public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                }

                @Override
                public void onTextChanged(CharSequence s, int start, int before, int count) {
                    validateInputs();
                }

                @Override
                public void afterTextChanged(Editable s) {
                }
            };

            mColorInput.addTextChangedListener(validationWatcher);
            mFormatInput.addTextChangedListener(validationWatcher);

            mPositiveButton.setOnClickListener(v -> {
                if (validateInputs()) {
                    try {
                        mConfirmedColor = parseColor(mColorInput.getText().toString());
                        mConfirmedFormat = mFormatInput.getText().toString();
                        mCurrentColor = mConfirmedColor;
                        mCurrentFormat = mConfirmedFormat;
                        if (mUseHostStyle && mHostDialog != null) {
                            mHostDialog.dismiss();
                        } else if (mDialog != null) {
                            mDialog.dismiss();
                        }
                    } catch (Exception e) {
                        mErrorText.setText("处理输入时出错: " + e.getMessage());
                        mErrorText.setVisibility(View.VISIBLE);
                    }
                }
            });

            negativeButton.setOnClickListener(v -> {
                mCurrentColor = mConfirmedColor;
                mCurrentFormat = mConfirmedFormat;
                if (mUseHostStyle && mHostDialog != null) {
                    mHostDialog.dismiss();
                } else if (mDialog != null) {
                    mDialog.dismiss();
                }
            });
        }

        public void show() {
            if (mUseHostStyle && mHostDialog != null) {
                mHostDialog.show();
            } else if (mDialog != null) {
                mDialog.show();
            }
        }

        private boolean validateInputs() {
            String colorStr = mColorInput.getText().toString().trim();
            String formatStr = mFormatInput.getText().toString().trim();
            boolean isValid = true;
            StringBuilder errorMsg = new StringBuilder();

            if (colorStr.isEmpty()) {
                errorMsg.append("· 颜色不能为空\n");
                isValid = false;
            } else {
                try {
                    int color = parseColor(colorStr);
                    mPreviewText.setTextColor(color);
                } catch (IllegalArgumentException e) {
                    errorMsg.append("· 颜色格式无效: ").append(e.getMessage()).append("\n");
                    isValid = false;
                }
            }

            if (formatStr.isEmpty()) {
                errorMsg.append("· 时间格式不能为空");
                isValid = false;
            } else {
                try {
                    String formattedTime = new SimpleDateFormat(formatStr, Locale.getDefault()).format(new Date());
                    mPreviewText.setText(formattedTime);
                } catch (IllegalArgumentException | NullPointerException e) {
                    errorMsg.append("· 时间格式无效: ").append(e.getMessage());
                    isValid = false;
                }
            }

            mErrorText.setText(errorMsg.toString());
            mErrorText.setVisibility(errorMsg.length() > 0 ? View.VISIBLE : View.GONE);
            return isValid;
        }
    }
}
