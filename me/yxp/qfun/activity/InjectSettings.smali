.class public Lme/yxp/qfun/activity/InjectSettings;
.super Landroid/app/Activity;
.source "InjectSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/activity/InjectSettings$ItemAdapter;
    }
.end annotation


# static fields
.field private static final IMPORT_REQUEST_CODE:I = 0x3e9

.field public static final PICK_IMAGE_REQUEST:I = 0x3e8


# instance fields
.field private mAdapter:Lme/yxp/qfun/activity/InjectSettings$ItemAdapter;

.field private mConfigFolder:Ljava/io/File;

.field private mExportDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private handleConfigImport(Landroid/content/Intent;)V
    .registers 6

    .line 120
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 126
    :try_start_8
    const-string v1, "config_import"

    const-string v2, ".zip"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 127
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 129
    invoke-static {p0, p1, v1}, Lme/yxp/qfun/utils/data/FileUtils;->copySingleFile(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Z

    move-result p1

    const/4 v2, 0x2

    if-nez p1, :cond_27

    .line 130
    const-string p0, "读取导入文件失败"

    invoke-static {v2, p0}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    return-void

    :catch_25
    move-exception p0

    goto :goto_58

    .line 134
    :cond_27
    iget-object p1, p0, Lme/yxp/qfun/activity/InjectSettings;->mConfigFolder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lme/yxp/qfun/utils/data/FileUtils;->deleteDirectory(Ljava/lang/String;)Z

    .line 135
    iget-object p1, p0, Lme/yxp/qfun/activity/InjectSettings;->mConfigFolder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 137
    iget-object p1, p0, Lme/yxp/qfun/activity/InjectSettings;->mConfigFolder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {v1, p1}, Lme/yxp/qfun/utils/data/FileUtils;->unzip(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 138
    const-string p1, "配置导入成功"

    invoke-static {v2, p1}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    goto :goto_4c

    .line 140
    :cond_47
    const-string p1, "解压配置文件失败"

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    .line 143
    :goto_4c
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 144
    invoke-static {}, Lme/yxp/qfun/hook/MainHook;->initData()V

    .line 145
    iget-object p0, p0, Lme/yxp/qfun/activity/InjectSettings;->mAdapter:Lme/yxp/qfun/activity/InjectSettings$ItemAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_57} :catch_25

    return-void

    .line 148
    :goto_58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "导入处理失败: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    return-void
.end method

.method private handleImagePick(Landroid/content/Intent;)V
    .registers 2

    .line 112
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/msg/RepeatMsgHook;->sBitmap:Landroid/graphics/Bitmap;

    .line 113
    const-string p0, "加一图标导入成功！"

    const/4 p1, 0x2

    invoke-static {p1, p0}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    :catch_15
    const/4 p0, 0x1

    .line 115
    const-string p1, "加一图标导入失败！"

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    return-void
.end method

.method private initData()V
    .registers 3

    .line 79
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getMODULE_DATA_PATH()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lme/yxp/qfun/activity/InjectSettings;->mConfigFolder:Ljava/io/File;

    .line 80
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/activity/InjectSettings;->mExportDir:Ljava/io/File;

    return-void
.end method

.method private initView()V
    .registers 5

    .line 84
    sget v0, Lme/yxp/qfun/R$id;->hookListView:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 85
    new-instance v1, Lme/yxp/qfun/activity/InjectSettings$ItemAdapter;

    sget v2, Lme/yxp/qfun/R$layout;->hookitem:I

    sget-object v3, Lme/yxp/qfun/hook/MainHook;->HookItems:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lme/yxp/qfun/activity/InjectSettings$ItemAdapter;-><init>(Lme/yxp/qfun/activity/InjectSettings;ILjava/util/List;)V

    iput-object v1, p0, Lme/yxp/qfun/activity/InjectSettings;->mAdapter:Lme/yxp/qfun/activity/InjectSettings$ItemAdapter;

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private setTranslucentStatus(Landroid/app/Activity;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_9

    .line 94
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_a

    :goto_9
    return-void

    :cond_a
    const/high16 p1, 0x4000000

    .line 100
    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    .line 101
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 p1, -0x80000000

    .line 103
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e8

    const/4 v1, -0x1

    if-ne p1, v0, :cond_d

    if-ne p2, v1, :cond_d

    .line 70
    invoke-direct {p0, p3}, Lme/yxp/qfun/activity/InjectSettings;->handleImagePick(Landroid/content/Intent;)V

    :cond_d
    if-ne p2, v1, :cond_18

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_18

    if-eqz p3, :cond_18

    .line 74
    invoke-direct {p0, p3}, Lme/yxp/qfun/activity/InjectSettings;->handleConfigImport(Landroid/content/Intent;)V

    :cond_18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget p1, Lme/yxp/qfun/R$layout;->injectsettings:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 54
    invoke-direct {p0, p0}, Lme/yxp/qfun/activity/InjectSettings;->setTranslucentStatus(Landroid/app/Activity;)V

    .line 55
    invoke-direct {p0}, Lme/yxp/qfun/activity/InjectSettings;->initData()V

    .line 56
    invoke-direct {p0}, Lme/yxp/qfun/activity/InjectSettings;->initView()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 61
    invoke-static {}, Lme/yxp/qfun/hook/MainHook;->savaData()V

    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public startExportConfig(Landroid/view/View;)V
    .registers 7

    .line 160
    const-string p1, ".zip"

    invoke-static {}, Lme/yxp/qfun/hook/MainHook;->savaData()V

    const/4 v0, 0x1

    .line 164
    :try_start_6
    const-string v1, "config_export"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, p1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_68

    .line 170
    iget-object v2, p0, Lme/yxp/qfun/activity/InjectSettings;->mConfigFolder:Ljava/io/File;

    invoke-static {v2, v1}, Lme/yxp/qfun/utils/data/FileUtils;->zipFolder(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 171
    const-string p0, "压缩配置文件失败"

    invoke-static {v0, p0}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    return-void

    .line 175
    :cond_1e
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QFun_config_backup_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 177
    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lme/yxp/qfun/activity/InjectSettings;->mExportDir:Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/data/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_62

    const/4 p0, 0x2

    .line 180
    const-string p1, "成功导出配置到Download文件夹"

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    return-void

    .line 182
    :cond_62
    const-string p0, "导出文件失败"

    invoke-static {v0, p0}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    return-void

    .line 166
    :catch_68
    const-string p0, "创建临时文件失败"

    invoke-static {v0, p0}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    return-void
.end method

.method public startImportConfig(Landroid/view/View;)V
    .registers 3

    .line 153
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    const-string v0, "application/zip"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e9

    .line 156
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
