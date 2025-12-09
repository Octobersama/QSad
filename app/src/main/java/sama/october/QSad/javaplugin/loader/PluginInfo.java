package sama.october.QSad.javaplugin.loader;

import android.app.Activity;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AlertDialog;

import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.materialswitch.MaterialSwitch;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;

import sama.october.QSad.R;

public class PluginInfo implements OnClickListener {
    private final String mDesc;
    private final String mPluginVersion;
    private final String mAuthorName;
    public String pluginPath;
    public String pluginName;
    public String pluginId;
    public boolean isRunning = false;
    public PluginCompiler pluginCompiler;

    public PluginInfo(String pluginName, String pluginVersion, String authorName,
                      String pluginPath, String pluginId) {
        mAuthorName = authorName;
        this.pluginName = pluginName;
        mPluginVersion = pluginVersion;
        this.pluginPath = pluginPath + "/";
        this.pluginId = pluginId;
        this.pluginCompiler = new PluginCompiler(this);
        mDesc = getDesc(this.pluginPath);
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof PluginInfo)) {
            return false;
        }
        PluginInfo pluginInfo = (PluginInfo) obj;
        return pluginInfo.pluginId.equals(pluginId);
    }

    private String getDesc(String pluginPath) {
        File file = new File(pluginPath + "desc.txt");

        try (FileInputStream fis = new FileInputStream(file);
             DataInputStream dis = new DataInputStream(fis);
             BufferedReader br = new BufferedReader(new InputStreamReader(dis))) {

            String line;
            StringBuilder sb = new StringBuilder();
            while ((line = br.readLine()) != null) {
                sb.append(line).append("\n");
            }
            return sb.toString();
        } catch (Exception e) {
            return "";
        }
    }

    @Override
    public void onClick(View v) {
        Activity activity = (Activity) v.getContext();
        ContextThemeWrapper themed = new ContextThemeWrapper(activity, sama.october.QSad.R.style.Theme_QSad_Compose);
        View dialog = LayoutInflater.from(themed).inflate(R.layout.plugininfodialog, null);

        TextView authorTextView = dialog.findViewById(R.id.authorTextView);
        TextView versionTextView = dialog.findViewById(R.id.versionTextView);
        TextView descTextView = dialog.findViewById(R.id.descTextView);
        MaterialSwitch autoSwitch = dialog.findViewById(R.id.autoSwitch);
        Button deleteButton = dialog.findViewById(R.id.deleteButton);
        Button uploadButton = dialog.findViewById(R.id.uploadButton);

        authorTextView.setText("作者：" + mAuthorName);
        versionTextView.setText("版本：" + mPluginVersion);
        descTextView.setText(mDesc.isEmpty() ? "暂无描述" : mDesc);

        autoSwitch.setChecked(PluginManager.autoLoadList.contains(pluginId));
        autoSwitch.setOnCheckedChangeListener((view, isChecked) -> {
            if (isChecked) {
                if (!PluginManager.autoLoadList.contains(pluginId)) {
                    PluginManager.autoLoadList.add(pluginId);
                }
            } else {
                PluginManager.autoLoadList.remove(pluginId);
            }
        });

        AlertDialog alertDialog = new MaterialAlertDialogBuilder(themed, com.google.android.material.R.style.ThemeOverlay_Material3_MaterialAlertDialog)
                .setTitle(pluginName)
                .setView(dialog)
                .setNegativeButton("关闭", null)
                .create();
        alertDialog.show();

        deleteButton.setOnClickListener(view -> new MaterialAlertDialogBuilder(themed, com.google.android.material.R.style.ThemeOverlay_Material3_MaterialAlertDialog)
                .setNegativeButton("取消", null)
                .setTitle("提示")
                .setMessage("确认删除该脚本？")
                .setPositiveButton("确定", (d, w) -> {
                    PluginManager.deletePlugin(PluginInfo.this, activity);
                    alertDialog.dismiss();
                })
                .show());

        // 上传按钮暂留，防止布局错乱
        uploadButton.setOnClickListener(v1 -> {
        });
    }

    public String getPluginVersion() {
        return mPluginVersion;
    }

    public String getAuthorName() {
        return mAuthorName;
    }

    public String getDesc() {
        return mDesc;
    }
}
