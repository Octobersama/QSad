package sama.october.QSad.activity

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.os.Environment
import android.provider.MediaStore
import android.view.View
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.clickable
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.safeDrawing
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.outlined.UploadFile
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ElevatedCard
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LargeTopAppBar
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Switch
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.dynamicDarkColorScheme
import androidx.compose.material3.dynamicLightColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateMapOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.documentfile.provider.DocumentFile
import java.io.File
import java.io.IOException
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.MainScope
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import sama.october.QSad.R
import sama.october.QSad.hook.MainHook
import sama.october.QSad.hook.base.BaseSwitchHookItem
import sama.october.QSad.hook.base.BaseWithDataHookItem
import sama.october.QSad.hook.msg.RepeatMsgHook
import sama.october.QSad.utils.data.FileUtils
import sama.october.QSad.utils.qq.HostInfo
import sama.october.QSad.utils.qq.ToastUtils

class InjectSettings : ModuleComponentActivity() {

    private lateinit var configFolder: File
    private lateinit var exportDir: File
    private val activityScope = MainScope()

    companion object {
        const val PICK_IMAGE_REQUEST = 1000
        const val IMPORT_REQUEST_CODE = 1001
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        configFolder = File(HostInfo.getMODULE_DATA_PATH())
        exportDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS)
        exportDir.mkdirs()

        setContent {
            SettingsPage(
                hookItems = remember { MainHook.HookItems.toList() },
                configFolder = configFolder,
                exportDir = exportDir,
                onBack = { finish() }
            )
        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (resultCode != RESULT_OK || data == null) {
            return
        }
        when (requestCode) {
            PICK_IMAGE_REQUEST -> {
                activityScope.launch {
                    handleImagePick(this@InjectSettings, data.data)
                }
            }
            IMPORT_REQUEST_CODE -> {
                activityScope.launch {
                    val refreshed = importConfig(this@InjectSettings, configFolder, data.data)
                    if (refreshed) {
                        MainHook.initData()
                    }
                }
            }
        }
    }

    override fun onDestroy() {
        MainHook.savaData()
        activityScope.cancel()
        super.onDestroy()
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun SettingsPage(
    hookItems: List<BaseSwitchHookItem>,
    configFolder: File,
    exportDir: File,
    onBack: () -> Unit
) {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    val enableStates = remember {
        mutableStateMapOf<String, Boolean>().apply {
            syncEnableStates(hookItems, this)
        }
    }
    var hookRefreshToken by remember { mutableIntStateOf(0) }

    val importConfigLauncher = rememberLauncherForActivityResult(ActivityResultContracts.GetContent()) { uri ->
        scope.launch {
            val refreshed = importConfig(context, configFolder, uri)
            if (refreshed) {
                syncEnableStates(hookItems, enableStates)
                hookRefreshToken++
            }
        }
    }

    QSadComposeTheme {
        val scrollBehavior = TopAppBarDefaults.exitUntilCollapsedScrollBehavior()
        Scaffold(
            modifier = Modifier
                .fillMaxSize()
                .nestedScroll(scrollBehavior.nestedScrollConnection),
            topBar = {
                LargeTopAppBar(
                    title = { Text(text = stringResource(id = R.string.app_name)) },
                    navigationIcon = {
                        IconButton(onClick = onBack) {
                            Icon(
                                imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                                contentDescription = "返回"
                            )
                        }
                    },
                    scrollBehavior = scrollBehavior
                )
            },
            contentWindowInsets = WindowInsets.safeDrawing
        ) { innerPadding ->
            LazyColumn(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPadding),
                contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                item {
                    ActionCard(
                        title = "导入配置",
                        description = "选择 zip 包批量恢复当前账号设置",
                        icon = Icons.Outlined.UploadFile,
                        onClick = { importConfigLauncher.launch("application/zip") }
                    )
                }
                item {
                    ActionCard(
                        title = "导出配置",
                        description = "打包配置与日志，便于反馈或备份",
                        icon = Icons.Outlined.UploadFile,
                        onClick = {
                            scope.launch {
                                exportConfig(context, configFolder, exportDir)
                            }
                        }
                    )
                }
                item {
                    Text(
                        text = "功能开关",
                        style = MaterialTheme.typography.titleMedium,
                        modifier = Modifier.padding(top = 4.dp, start = 4.dp)
                    )
                }
                items(
                    items = hookItems,
                    key = { it.getNAME() + hookRefreshToken }
                ) { item ->
                    val isEnabled = enableStates[item.getNAME()] == true && item.isAvailable
                    HookItemCard(
                        item = item,
                        isEnabled = isEnabled,
                        onToggle = { checked ->
                            enableStates[item.getNAME()] = checked
                            MainHook.Enable.put(item.getNAME(), checked)
                        },
                        onOpen = if (item is BaseWithDataHookItem && item.isAvailable) {
                            { item.onClick(View(context)) }
                        } else {
                            null
                        }
                    )
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun HookItemCard(
    item: BaseSwitchHookItem,
    isEnabled: Boolean,
    onToggle: (Boolean) -> Unit,
    onOpen: (() -> Unit)?
) {
    val cardAlpha = if (item.isAvailable) 1f else 0.55f
    ElevatedCard(
        modifier = Modifier
            .fillMaxWidth()
            .alpha(cardAlpha)
            .then(
                if (onOpen != null && item.isAvailable) {
                    Modifier.clickable { onOpen() }
                } else {
                    Modifier
                }
            ),
        colors = CardDefaults.elevatedCardColors(),
    ) {
        androidx.compose.foundation.layout.Row(
            modifier = Modifier
                .padding(horizontal = 16.dp, vertical = 12.dp),
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            androidx.compose.foundation.layout.Column(
                modifier = Modifier
                    .weight(1f)
                    .padding(end = 12.dp)
            ) {
                Text(
                    text = item.getTAG(),
                    style = MaterialTheme.typography.titleMedium
                )
                Text(
                    text = item.getDESC(),
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                if (!item.isAvailable) {
                    Text(
                        text = "当前环境不可用",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.error
                    )
                } else if (onOpen != null) {
                    Text(
                        text = "点击可打开配置",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.primary
                    )
                }
            }
            Switch(
                checked = isEnabled,
                onCheckedChange = { checked ->
                    if (item.isAvailable) {
                        onToggle(checked)
                    }
                },
                enabled = item.isAvailable
            )
        }
    }
}

@Composable
private fun ActionCard(
    title: String,
    description: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    onClick: () -> Unit
) {
    ElevatedCard(
        modifier = Modifier.fillMaxWidth(),
        onClick = onClick
    ) {
        androidx.compose.foundation.layout.Row(
            modifier = Modifier
                .padding(horizontal = 16.dp, vertical = 12.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Icon(
                imageVector = icon,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.primary
            )
            androidx.compose.foundation.layout.Column {
                Text(
                    text = title,
                    style = MaterialTheme.typography.titleMedium
                )
                Text(
                    text = description,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

private suspend fun importConfig(
    context: Context,
    configFolder: File,
    uri: Uri?
): Boolean {
    if (uri == null) {
        return false
    }
    return withContext(Dispatchers.IO) {
        try {
            val tempZip = File.createTempFile("config_import", ".zip", context.cacheDir)
            val documentFile = DocumentFile.fromSingleUri(context, uri)
                ?: return@withContext false

            if (!FileUtils.copySingleFile(context, documentFile, tempZip)) {
                showToast("读取导入文件失败", level = 1)
                return@withContext false
            }

            FileUtils.deleteDirectory(configFolder.absolutePath)
            configFolder.mkdirs()

            val unzipSuccess = FileUtils.unzip(tempZip, configFolder.parentFile)
            tempZip.delete()
            if (unzipSuccess) {
                showToast("配置导入成功")
            } else {
                showToast("解压配置文件失败", level = 1)
                return@withContext false
            }
            MainHook.initData()
            true
        } catch (e: Exception) {
            showToast("导入处理失败: ${e.message}", level = 1)
            false
        }
    }
}

private suspend fun exportConfig(
    context: Context,
    configFolder: File,
    exportDir: File
) {
    withContext(Dispatchers.IO) {
        MainHook.savaData()
        val tempZip = try {
            File.createTempFile("config_export", ".zip", context.cacheDir)
        } catch (e: IOException) {
            showToast("创建临时文件失败", level = 1)
            return@withContext
        }

        if (!FileUtils.zipFolder(configFolder, tempZip)) {
            showToast("压缩配置文件失败", level = 1)
            tempZip.delete()
            return@withContext
        }

        val timestamp = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(Date())
        val exportFileName = "QSad_config_backup_$timestamp.zip"
        val exportFile = File(exportDir, exportFileName)
        if (FileUtils.copy(tempZip.absolutePath, exportFile.absolutePath)) {
            showToast("成功导出配置到 Download")
        } else {
            showToast("导出文件失败", level = 1)
        }
        tempZip.delete()
    }
}

private suspend fun handleImagePick(context: Context, uri: Uri?) {
    if (uri == null) {
        return
    }
    withContext(Dispatchers.IO) {
        try {
            val bitmap = MediaStore.Images.Media.getBitmap(context.contentResolver, uri)
            RepeatMsgHook.sBitmap = bitmap
            showToast("添加一张图标导入成功")
        } catch (e: Exception) {
            showToast("添加一张图标导入失败", level = 1)
        }
    }
}

private fun syncEnableStates(
    hookItems: List<BaseSwitchHookItem>,
    stateMap: MutableMap<String, Boolean>
) {
    hookItems.forEach { hookItem ->
        val enabled = MainHook.Enable[hookItem.getNAME()] ?: false
        stateMap[hookItem.getNAME()] = enabled && hookItem.isAvailable
    }
}

@Composable
private fun QSadComposeTheme(content: @Composable () -> Unit) {
    val context = LocalContext.current
    val darkTheme = isSystemInDarkTheme()
    val colorScheme = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
        if (darkTheme) dynamicDarkColorScheme(context) else dynamicLightColorScheme(context)
    } else {
        if (darkTheme) darkColorScheme() else lightColorScheme()
    }
    MaterialTheme(
        colorScheme = colorScheme,
        content = content
    )
}

private suspend fun showToast(message: String, level: Int = 2) {
    withContext(Dispatchers.Main) {
        ToastUtils.QQToast(level, message)
    }
}
