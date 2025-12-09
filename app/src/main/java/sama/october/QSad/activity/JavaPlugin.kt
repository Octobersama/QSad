package sama.october.QSad.activity

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Bundle
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.clickable
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.safeDrawing
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.outlined.ContentCopy
import androidx.compose.material.icons.outlined.Info
import androidx.compose.material.icons.outlined.UploadFile
import androidx.compose.material.icons.outlined.Folder
import androidx.compose.material.icons.outlined.CloudDownload
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ElevatedButton
import androidx.compose.material3.ElevatedCard
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LargeTopAppBar
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Switch
import androidx.compose.material3.Tab
import androidx.compose.material3.TabRow
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.dynamicDarkColorScheme
import androidx.compose.material3.dynamicLightColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.MainScope
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import sama.october.QSad.javaplugin.loader.PluginInfo
import sama.october.QSad.javaplugin.loader.PluginManager
import sama.october.QSad.utils.error.PluginError
import sama.october.QSad.utils.data.DataUtils
import sama.october.QSad.utils.qq.HostInfo
import sama.october.QSad.utils.qq.QQCurrentEnv
import sama.october.QSad.utils.qq.ToastUtils
import sama.october.QSad.R

@OptIn(ExperimentalMaterial3Api::class)
class JavaPlugin : ModuleComponentActivity() {
    private val pluginListState = mutableStateListOf<PluginInfo>()
    private val activityScope = MainScope()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        PluginManager.getAllPlugin()
        if (PluginManager.autoLoadList == null) {
            PluginManager.autoLoadList = ArrayList()
        }
        refreshPlugins()

        setContent {
            val context = LocalContext.current
            var selectedPlugin by remember { mutableStateOf<PluginInfo?>(null) }
            val scrollBehavior = TopAppBarDefaults.exitUntilCollapsedScrollBehavior()
            val importLauncher = rememberLauncherForActivityResult(ActivityResultContracts.OpenDocumentTree()) { uri ->
                importPlugin(uri)
            }

            QSadComposeTheme {
                Scaffold(
                    modifier = Modifier
                        .fillMaxSize()
                        .nestedScroll(scrollBehavior.nestedScrollConnection),
                    topBar = {
                        LargeTopAppBar(
                            title = { Text("Java 插件") },
                            navigationIcon = {
                                IconButton(onClick = { finish() }) {
                                    Icon(
                                        imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                                        contentDescription = "返回"
                                    )
                                }
                            },
                            scrollBehavior = scrollBehavior
                        )
                    },
                    contentWindowInsets = androidx.compose.foundation.layout.WindowInsets.safeDrawing
                ) { innerPadding ->
                    JavaPluginScreen(
                        pluginList = pluginListState,
                        modifier = Modifier.padding(innerPadding),
                        onImport = { importLauncher.launch(null) },
                        onOpenDocs = { gotoDocumentation() },
                        onCopyPath = { copyToClipboard(context) },
                        onTogglePlugin = { plugin, checked ->
                            togglePlugin(plugin, checked)
                        },
                        onOpenDetail = { selectedPlugin = it }
                    )
                }

                selectedPlugin?.let { plugin ->
                    PluginDetailDialog(
                        plugin = plugin,
                        autoLoadState = rememberAutoLoadState(plugin),
                        onDismiss = { selectedPlugin = null },
                        onDelete = {
                            deletePlugin(plugin)
                            selectedPlugin = null
                        },
                        onAutoLoadChange = { enabled ->
                            setAutoLoad(plugin, enabled)
                        }
                    )
                }
            }
        }
    }

    override fun onDestroy() {
        PluginManager.autoLoadList?.let { DataUtils.serialize("data", "AutoLoadList", it) }
        activityScope.cancel()
        super.onDestroy()
    }

    fun notifyDataSetChanged() {
        refreshPlugins()
    }

    private fun refreshPlugins() {
        pluginListState.clear()
        pluginListState.addAll(PluginManager.pluginInfos)
    }

    private fun importPlugin(uri: Uri?) {
        if (uri == null) return
        PluginManager.importPlugin(uri, this)
        refreshPlugins()
    }

    private fun copyToClipboard(context: Context) {
        val clipboardManager = context.getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
        val currentPath = "${HostInfo.getMODULE_DATA_PATH()}${QQCurrentEnv.getCurrentUin()}/plugin/"
        val clip = ClipData.newPlainText("plugin_path", currentPath)
        clipboardManager.setPrimaryClip(clip)
        ToastUtils.QQToast(2, "复制成功")
    }

    private fun gotoDocumentation() {
        val url = "https://docs.qq.com/doc/DWmNYaVRpTWRSVGpV"
        val intent = Intent(Intent.ACTION_VIEW, Uri.parse(url))
        startActivity(intent)
    }

    private fun setAutoLoad(pluginInfo: PluginInfo, enabled: Boolean) {
        val list = PluginManager.autoLoadList ?: return
        if (enabled) {
            if (!list.contains(pluginInfo.pluginId)) {
                list.add(pluginInfo.pluginId)
            }
        } else {
            list.remove(pluginInfo.pluginId)
        }
    }

    private fun togglePlugin(pluginInfo: PluginInfo, checked: Boolean) {
        activityScope.launch(Dispatchers.IO) {
            if (checked) {
                try {
                    pluginInfo.pluginCompiler.startPlugin()
                    pluginInfo.isRunning = true
                } catch (e: Exception) {
                    PluginError.evalError(e, pluginInfo)
                    pluginInfo.isRunning = false
                    withContext(Dispatchers.Main) {
                        ToastUtils.QQToast(1, "加载失败")
                    }
                }
            } else {
                pluginInfo.pluginCompiler.stopPlugin()
                pluginInfo.isRunning = false
            }
            withContext(Dispatchers.Main) {
                refreshPlugins()
            }
        }
    }

    private fun deletePlugin(pluginInfo: PluginInfo) {
        PluginManager.deletePlugin(pluginInfo, this)
        refreshPlugins()
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun JavaPluginScreen(
    pluginList: List<PluginInfo>,
    modifier: Modifier = Modifier,
    onImport: () -> Unit,
    onOpenDocs: () -> Unit,
    onCopyPath: () -> Unit,
    onTogglePlugin: (PluginInfo, Boolean) -> Unit,
    onOpenDetail: (PluginInfo) -> Unit
) {
    val pathText = "${HostInfo.getMODULE_DATA_PATH()}${QQCurrentEnv.getCurrentUin()}/plugin/"

    var selectedTab by remember { mutableStateOf(0) }
    val tabs = listOf("本地脚本", "在线脚本")

    LazyColumn(
        modifier = modifier
            .fillMaxSize()
            .padding(horizontal = 16.dp),
        contentPadding = PaddingValues(vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        item {
            TabRow(selectedTabIndex = selectedTab) {
                tabs.forEachIndexed { index, title ->
                    Tab(
                        selected = selectedTab == index,
                        onClick = { selectedTab = index },
                        text = { Text(title) }
                    )
                }
            }
        }

        if (selectedTab == 0) {
            item {
                ElevatedCard(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.elevatedCardColors()
                ) {
                    Column(modifier = Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        Text(text = "脚本存放目录", style = MaterialTheme.typography.titleMedium)
                        Text(
                            text = pathText,
                            style = MaterialTheme.typography.bodyMedium,
                            maxLines = 2,
                            overflow = TextOverflow.Ellipsis
                        )
                        ElevatedButton(
                            onClick = onCopyPath,
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Icon(Icons.Outlined.ContentCopy, contentDescription = null)
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(text = "复制路径")
                        }
                    }
                }
            }

            item {
                ElevatedCard(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.elevatedCardColors()
                ) {
                    Column(modifier = Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        ElevatedButton(
                            onClick = onImport,
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Icon(Icons.Outlined.UploadFile, contentDescription = null)
                            Spacer(modifier = Modifier.width(8.dp))
                            Text("导入插件")
                        }
                        ElevatedButton(
                            onClick = onOpenDocs,
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Icon(Icons.Outlined.Info, contentDescription = null)
                            Spacer(modifier = Modifier.width(8.dp))
                            Text("开发文档")
                        }
                    }
                }
            }

            items(pluginList, key = { it.pluginId }) { plugin ->
                PluginCard(
                    pluginInfo = plugin,
                    onToggle = { checked -> onTogglePlugin(plugin, checked) },
                    onClick = { onOpenDetail(plugin) }
                )
            }
        } else {
            item {
                ElevatedCard(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.elevatedCardColors()
                ) {
                    Column(modifier = Modifier.padding(16.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        Text(text = "在线脚本", style = MaterialTheme.typography.titleMedium)
                        Text(
                            text = "在线脚本市场开发中，敬请期待。",
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                        ElevatedButton(
                            onClick = onOpenDocs,
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Icon(Icons.Outlined.CloudDownload, contentDescription = null)
                            Spacer(modifier = Modifier.width(8.dp))
                            Text("查看接入规范")
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun PluginCard(
    pluginInfo: PluginInfo,
    onToggle: (Boolean) -> Unit,
    onClick: () -> Unit
) {
    ElevatedCard(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { onClick() },
        colors = CardDefaults.elevatedCardColors()
    ) {
        Column(modifier = Modifier.padding(horizontal = 16.dp, vertical = 12.dp)) {
            Text(text = pluginInfo.pluginName, style = MaterialTheme.typography.titleMedium)
            Spacer(modifier = Modifier.height(4.dp))
            Text(
                text = "版本：${pluginInfo.pluginVersion} | 作者：${pluginInfo.authorName}",
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            Spacer(modifier = Modifier.height(8.dp))
            Switch(
                checked = pluginInfo.isRunning,
                onCheckedChange = onToggle,
                modifier = Modifier.alpha(if (pluginInfo.isRunning) 1f else 0.9f)
            )
        }
    }
}

@Composable
private fun rememberAutoLoadState(pluginInfo: PluginInfo): MutableState<Boolean> {
    val initState = PluginManager.autoLoadList?.contains(pluginInfo.pluginId) == true
    return remember(pluginInfo.pluginId, initState) {
        mutableStateOf(initState)
    }
}

@Composable
private fun PluginDetailDialog(
    plugin: PluginInfo,
    autoLoadState: MutableState<Boolean>,
    onDismiss: () -> Unit,
    onDelete: () -> Unit,
    onAutoLoadChange: (Boolean) -> Unit
) {
    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text(plugin.pluginName) },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                Text(text = "版本：${plugin.pluginVersion}")
                Text(text = "作者：${plugin.authorName}")
                Text(text = plugin.desc.ifEmpty { "无描述" })
                RowWithSwitch(
                    title = "开机自动加载",
                    checked = autoLoadState.value,
                    onCheckedChange = {
                        autoLoadState.value = it
                        onAutoLoadChange(it)
                    }
                )
            }
        },
        confirmButton = {
            TextButton(onClick = onDismiss) {
                Text("关闭")
            }
        },
        dismissButton = {
            TextButton(onClick = {
                onDelete()
            }) {
                Text("删除")
            }
        }
    )
}

@Composable
private fun RowWithSwitch(title: String, checked: Boolean, onCheckedChange: (Boolean) -> Unit) {
    androidx.compose.foundation.layout.Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Text(text = title, style = MaterialTheme.typography.bodyLarge)
        Switch(checked = checked, onCheckedChange = onCheckedChange)
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
