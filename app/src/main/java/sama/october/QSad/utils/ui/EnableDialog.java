package sama.october.QSad.utils.ui;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;

import com.google.android.material.color.MaterialColors;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import sama.october.QSad.R;
import sama.october.QSad.utils.qq.EnableInfo;

/**
 * 白名单选择弹窗，使用 Material3 样式。
 */
public class EnableDialog {
    private final EnableInfo mEnableInfo;
    private final Context mContext;
    private final List<String> mTroopList = new ArrayList<>();
    private final String mType;
    private AlertDialog mAlertDialog;
    private ArrayAdapter<String> mAdapter;
    private TextView statusTextView;

    public EnableDialog(Context context, EnableInfo enableInfo) {
        mEnableInfo = enableInfo;
        mContext = context;
        if (enableInfo instanceof EnableInfo.TroopEnableInfo) {
            mType = "群组";
        } else if (enableInfo instanceof EnableInfo.FriendEnableInfo) {
            mType = "好友";
        } else {
            mType = "";
        }
        initView();
    }

    private void initView() {
        Context themed = new ContextThemeWrapper(mContext, sama.october.QSad.R.style.Theme_QSad_Compose);
        View view = LayoutInflater.from(themed).inflate(R.layout.dialog_troop_enable, null);
        mAlertDialog = new MaterialAlertDialogBuilder(themed, com.google.android.material.R.style.ThemeOverlay_Material3_MaterialAlertDialog)
                .setTitle("选择" + mType)
                .setView(view)
                .create();

        ListView listView = view.findViewById(R.id.lv_troops);
        mTroopList.addAll(Arrays.asList(mEnableInfo.dataList.getKeyArray()));
        mAdapter = new TroopAdapter(mTroopList);
        listView.setAdapter(mAdapter);

        EditText editText = view.findViewById(R.id.et_search);
        editText.addTextChangedListener(new SearchWatch());

        statusTextView = view.findViewById(R.id.tv_selection_status);
        setStatus();
    }

    private void search(String text) {
        mTroopList.clear();
        List<String> keyList = Arrays.asList(mEnableInfo.dataList.getKeyArray());
        List<String> valueList = Arrays.asList(mEnableInfo.getValueArray());
        if (text.isEmpty()) {
            mTroopList.addAll(keyList);
        } else {
            for (int i = 0; i < keyList.size(); i++) {
                if ((valueList.get(i) + " " + keyList.get(i)).contains(text)) {
                    mTroopList.add(keyList.get(i));
                }
            }
        }
        mAdapter.notifyDataSetChanged();
    }

    private void setStatus() {
        int selectedCount = 0;
        String[] keyArray = mEnableInfo.dataList.getKeyArray();
        for (String key : keyArray) {
            if (mEnableInfo.dataList.getIsAvailable(key)) {
                selectedCount++;
            }
        }
        int selectedColor = MaterialColors.getColor(statusTextView, com.google.android.material.R.attr.colorPrimary);
        int unselectedColor = MaterialColors.getColor(statusTextView, com.google.android.material.R.attr.colorOnSurfaceVariant);

        if (selectedCount == 0) {
            statusTextView.setText("未选择任何" + mType);
            statusTextView.setTextColor(unselectedColor);
        } else if (selectedCount == keyArray.length) {
            statusTextView.setText("已选择全部" + mType);
            statusTextView.setTextColor(selectedColor);
        } else {
            statusTextView.setText("已选择 " + selectedCount + "/" + keyArray.length + " 个" + mType);
            statusTextView.setTextColor(selectedColor);
        }
    }

    public void show() {
        if (mAlertDialog != null) {
            mAlertDialog.show();
        }
    }

    private class TroopAdapter extends ArrayAdapter<String> {

        private TroopAdapter(List<String> troopList) {
            super(mContext, 0, troopList);
        }

        @NonNull
        @Override
        public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
            TextView textView = convertView instanceof TextView ? (TextView) convertView : new TextView(mContext);
            String uin = getItem(position);
            boolean enable = mEnableInfo.dataList.getIsAvailable(uin);

            int accent = MaterialColors.getColor(textView, com.google.android.material.R.attr.colorPrimary);
            int normal = MaterialColors.getColor(textView, com.google.android.material.R.attr.colorOnSurface);

            textView.setText(mEnableInfo.dataList.getValue(uin) + " · " + uin);
            textView.setTextColor(enable ? accent : normal);
            textView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16);
            int paddingH = (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, 16, textView.getResources().getDisplayMetrics());
            int paddingV = (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, 12, textView.getResources().getDisplayMetrics());
            textView.setPadding(paddingH, paddingV, paddingH, paddingV);
            textView.setGravity(Gravity.CENTER_VERTICAL);
            textView.setBackgroundResource(android.R.drawable.list_selector_background);
            textView.setOnClickListener(v -> {
                boolean current = mEnableInfo.dataList.getIsAvailable(uin);
                mEnableInfo.dataList.setIsAvailable(uin, !current);
                textView.setTextColor(!current ? accent : normal);
                setStatus();
            });

            return textView;
        }
    }

    private class SearchWatch implements TextWatcher {

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {
            search(charSequence.toString());
        }
    }
}
