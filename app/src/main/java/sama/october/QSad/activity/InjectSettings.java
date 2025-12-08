package sama.october.QSad.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.documentfile.provider.DocumentFile;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.google.android.material.switchmaterial.SwitchMaterial;
import com.google.android.material.appbar.MaterialToolbar;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import sama.october.QSad.R;
import sama.october.QSad.hook.MainHook;
import sama.october.QSad.hook.base.BaseSwitchHookItem;
import sama.october.QSad.hook.base.BaseWithDataHookItem;
import sama.october.QSad.hook.msg.RepeatMsgHook;
import sama.october.QSad.utils.data.FileUtils;
import sama.october.QSad.utils.qq.HostInfo;
import sama.october.QSad.utils.qq.ToastUtils;

public class InjectSettings extends ModuleComponentActivity {
    public static final int PICK_IMAGE_REQUEST = 1000;
    private static final int IMPORT_REQUEST_CODE = 1001;

    private File mConfigFolder;
    private File mExportDir;
    private RecyclerView.Adapter<ItemAdapter.ViewHolder> mAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.injectsettings);

        setTranslucentStatus();
        initData();
        initView();
    }

    @Override
    protected void onDestroy() {
        MainHook.savaData();
        super.onDestroy();
    }

    private void initData() {
        mConfigFolder = new File(HostInfo.getMODULE_DATA_PATH());
        mExportDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
    }

    private void initView() {
        MaterialToolbar toolbar = findViewById(R.id.toolbar);
        toolbar.setNavigationOnClickListener(v -> finish());
        toolbar.setTitle(getString(R.string.app_name));

        findViewById(R.id.importConfigCard).setOnClickListener(v -> startImportConfig(v));
        findViewById(R.id.exportConfigCard).setOnClickListener(v -> startExportConfig(v));

        RecyclerView hookRecyclerView = findViewById(R.id.hookRecyclerView);
        hookRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        mAdapter = new ItemAdapter();
        hookRecyclerView.setAdapter(mAdapter);
    }

    private void setTranslucentStatus() {
        Window window = getWindow();
        if (window == null) {
            return;
        }

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
            window.getDecorView().setSystemUiVisibility(
                    View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN | View.SYSTEM_UI_FLAG_LAYOUT_STABLE);
            window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
            window.setStatusBarColor(getColor(android.R.color.transparent));
        } else {
            window.addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode != RESULT_OK || data == null) {
            return;
        }
        if (requestCode == PICK_IMAGE_REQUEST) {
            handleImagePick(data);
        } else if (requestCode == IMPORT_REQUEST_CODE) {
            handleConfigImport(data);
        }
    }

    private void handleImagePick(Intent data) {
        try {
            Uri uri = data.getData();
            if (uri == null) {
                throw new IllegalArgumentException("uri null");
            }
            RepeatMsgHook.sBitmap = MediaStore.Images.Media.getBitmap(getContentResolver(), uri);
            ToastUtils.QQToast(2, "加一图标导入成功");
        } catch (Exception ignored) {
            ToastUtils.QQToast(1, "加一图标导入失败");
        }
    }

    private void handleConfigImport(Intent data) {
        Uri uri = data.getData();
        if (uri == null) {
            return;
        }

        try {
            File tempZip = File.createTempFile("config_import", ".zip", getCacheDir());
            DocumentFile documentFile = DocumentFile.fromSingleUri(this, uri);

            if (!FileUtils.copySingleFile(this, documentFile, tempZip)) {
                ToastUtils.QQToast(2, "读取导入文件失败");
                return;
            }

            FileUtils.deleteDirectory(mConfigFolder.getAbsolutePath());
            mConfigFolder.mkdirs();

            if (FileUtils.unzip(tempZip, mConfigFolder.getParentFile())) {
                ToastUtils.QQToast(2, "配置导入成功");
            } else {
                ToastUtils.QQToast(1, "解压配置文件失败");
            }

            tempZip.delete();
            MainHook.initData();
            mAdapter.notifyDataSetChanged();

        } catch (Exception e) {
            ToastUtils.QQToast(1, "导入处理失败: " + e.getMessage());
        }
    }

    public void startImportConfig(View v) {
        Intent intent = new Intent(Intent.ACTION_GET_CONTENT);
        intent.setType("application/zip");
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        startActivityForResult(intent, IMPORT_REQUEST_CODE);
    }

    public void startExportConfig(View v) {
        MainHook.savaData();

        File tempZip;
        try {
            tempZip = File.createTempFile("config_export", ".zip", getCacheDir());
        } catch (IOException e) {
            ToastUtils.QQToast(1, "创建临时文件失败");
            return;
        }

        if (!FileUtils.zipFolder(mConfigFolder, tempZip)) {
            ToastUtils.QQToast(1, "压缩配置文件失败");
            return;
        }

        String timestamp = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(new Date());
        String exportFileName = "QSad_config_backup_" + timestamp + ".zip";
        File exportFile = new File(mExportDir, exportFileName);

        if (FileUtils.copy(tempZip.getAbsolutePath(), exportFile.getAbsolutePath())) {
            ToastUtils.QQToast(2, "成功导出配置到Download文件夹");
        } else {
            ToastUtils.QQToast(1, "导出文件失败");
        }
    }

    private class ItemAdapter extends RecyclerView.Adapter<ItemAdapter.ViewHolder> {

        @NonNull
        @Override
        public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
            View view = LayoutInflater.from(parent.getContext())
                    .inflate(R.layout.hookitem, parent, false);
            return new ViewHolder(view);
        }

        @Override
        public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
            BaseSwitchHookItem hookItem = MainHook.HookItems.get(position);
            holder.bind(hookItem);
        }

        @Override
        public int getItemCount() {
            return MainHook.HookItems.size();
        }

        class ViewHolder extends RecyclerView.ViewHolder {
            private final LinearLayout hookitemLinearLayout;
            private final TextView hookItemTextView;
            private final TextView hookItemDesc;
            private final SwitchMaterial hookItemSwitch;

            public ViewHolder(@NonNull View itemView) {
                super(itemView);
                hookitemLinearLayout = itemView.findViewById(R.id.hookitemLinearLayout);
                hookItemTextView = itemView.findViewById(R.id.hookItemTextView);
                hookItemDesc = itemView.findViewById(R.id.hookItemDesc);
                hookItemSwitch = itemView.findViewById(R.id.hookItemSwitch);
            }

            public void bind(BaseSwitchHookItem hookItem) {
                hookItemTextView.setText(hookItem.getTAG());
                hookItemDesc.setText(hookItem.getDESC());

                if (hookItem instanceof BaseWithDataHookItem && hookItem.isAvailable) {
                    hookitemLinearLayout.setOnClickListener((BaseWithDataHookItem) hookItem);
                } else {
                    hookitemLinearLayout.setOnClickListener(null);
                }

                if (!hookItem.isAvailable) {
                    itemView.setAlpha(0.5f);
                    hookItemSwitch.setChecked(false);
                    hookItemSwitch.setEnabled(false);
                } else {
                    itemView.setAlpha(1.0f);
                    hookItemSwitch.setEnabled(true);
                    hookItemSwitch.setChecked(MainHook.Enable.get(hookItem.getNAME()));
                    hookItemSwitch.setOnCheckedChangeListener((buttonView, isChecked) ->
                            MainHook.Enable.replace(hookItem.getNAME(), isChecked));
                }
            }
        }
    }
}
