package sama.october.QSad.hook.msg;

import android.app.AlertDialog;
import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import sama.october.QSad.hook.api.OnSendMsg;
import sama.october.QSad.hook.base.BaseWithDataHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.utils.data.DataUtils;
import sama.october.QSad.utils.json.JsonUtil;
import sama.october.QSad.utils.reflect.FieldUtils;
import sama.october.QSad.utils.thread.SyncUtils;

@HookItemAnnotation(TAG = "修改图片外显", desc = "返回值为Json格式时支持读取嵌套的key，为纯文本长度需小于30")
public final class PicSummaryHook extends BaseWithDataHookItem {
    private Map<String, String> dataMap = new HashMap<>();
    private String mPicSummary = "";
    private OnSendMsg.SendMsgListener mChangeSummaryListener;

    @Override
    protected void initCallback() {
        mChangeSummaryListener = msgElements -> {
            if (mPicSummary.isEmpty()) {
                return;
            }
            boolean hasPic = false;

            for (Object msgElement : msgElements) {
                Object picElement = FieldUtils.create(msgElement).withName("picElement").getValue();
                Object marketFaceElement = FieldUtils.create(msgElement).withName("marketFaceElement").getValue();

                if (picElement != null) {
                    FieldUtils.create(picElement).withName("summary").setValue(mPicSummary);
                    hasPic = true;
                }
                if (marketFaceElement != null) {
                    FieldUtils.create(marketFaceElement).withName("faceName").setValue(mPicSummary);
                    hasPic = true;
                }
            }
            if (hasPic) {
                setNextPicSummary();
            }
        };
    }

    @Override
    public void startHook() {
        OnSendMsg.INSTANCE.addListener(mChangeSummaryListener);
    }

    @Override
    public void stopHook() {
        OnSendMsg.INSTANCE.removeListener(mChangeSummaryListener);
    }

    @Override
    public void initData() {
        Object obj = DataUtils.deserialize("data", "SummaryDataMap");
        if (obj != null) {
            dataMap = (Map<String, String>) obj;
        } else {
            dataMap.put("key", "");
            dataMap.put("summaryOrUrl", "");
        }
        setNextPicSummary();
    }

    @Override
    public void savaData() {
        DataUtils.serialize("data", "SummaryDataMap", dataMap);
    }

    @Override
    public void onClick(View v) {
        Context baseContext = v.getContext();
        Context dialogContext = new ContextThemeWrapper(baseContext, android.R.style.Theme_DeviceDefault_Light_Dialog_Alert);

        int padding = (int) (dialogContext.getResources().getDisplayMetrics().density * 16);
        LinearLayout container = new LinearLayout(dialogContext);
        container.setOrientation(LinearLayout.VERTICAL);
        container.setPadding(padding, padding, padding, padding);

        TextView keyLabel = new TextView(dialogContext);
        keyLabel.setText("需要显示的 key");
        keyLabel.setTextSize(14);
        container.addView(keyLabel);

        EditText keyText = new EditText(dialogContext);
        keyText.setText(dataMap.get("key"));
        keyText.setHint("例如 data.title");
        container.addView(keyText);

        TextView summaryLabel = new TextView(dialogContext);
        summaryLabel.setText("普通外显或 api 链接");
        summaryLabel.setTextSize(14);
        summaryLabel.setPadding(0, padding / 2, 0, 0);
        container.addView(summaryLabel);

        EditText summaryText = new EditText(dialogContext);
        summaryText.setText(dataMap.get("summaryOrUrl"));
        summaryText.setHint("支持 Json / 文本 / URL");
        container.addView(summaryText);

        new AlertDialog.Builder(dialogContext)
                .setTitle("设置图片外显文本")
                .setView(container)
                .setPositiveButton("保存", (dialog, which) -> {
                    dataMap.put("key", keyText.getText() == null ? "" : keyText.getText().toString());
                    dataMap.put("summaryOrUrl", summaryText.getText() == null ? "" : summaryText.getText().toString());
                    setNextPicSummary();
                })
                .setNegativeButton("取消", null)
                .show();
    }

    private void setNextPicSummary() {
        SyncUtils.runOnNewThread(getNAME(), () -> {
            String summaryOrUrl = dataMap.get("summaryOrUrl");
            String picSummaryFromUrl = get(summaryOrUrl);
            try {
                JSONObject jsonObject = new JSONObject(picSummaryFromUrl);
                Object value = JsonUtil.findValueByKey(jsonObject, dataMap.get("key"));
                if (value instanceof String) {
                    mPicSummary = (String) value;
                } else {
                    mPicSummary = "";
                }
            } catch (Exception e) {
                if (picSummaryFromUrl.length() > 30) {
                    mPicSummary = summaryOrUrl;
                } else {
                    mPicSummary = picSummaryFromUrl;
                }
            }
        });
    }

    private String get(String urlString) {
        try {
            URL url = new URL(urlString);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setConnectTimeout(10000);
            conn.setReadTimeout(15000);

            if (conn.getResponseCode() == 200) {
                InputStream inputStream = conn.getInputStream();
                BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
                StringBuilder response = new StringBuilder();
                String line;

                while ((line = reader.readLine()) != null) {
                    response.append(line);
                }

                reader.close();
                conn.disconnect();
                return response.toString();
            }
        } catch (Exception ignored) {
        }
        return urlString;
    }
}
