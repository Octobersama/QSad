.class public Lme/yxp/qfun/activity/JavaPlugin;
.super Landroid/app/Activity;
.source "JavaPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter;
    }
.end annotation


# static fields
.field private static final PLUGIN_PATH:Ljava/lang/String;

.field private static final REQUEST_CODE_PICK_DIR:I = 0x1


# instance fields
.field private mAdapter:Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getMODULE_DATA_PATH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[当前QQ号]/plugin/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/activity/JavaPlugin;->PLUGIN_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .registers 5

    .line 71
    invoke-static {}, Lme/yxp/qfun/javaplugin/loader/PluginManager;->getAllPlugin()V

    .line 73
    sget v0, Lme/yxp/qfun/R$id;->pluginListView:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 74
    new-instance v1, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter;

    sget v2, Lme/yxp/qfun/R$layout;->pluginitem:I

    sget-object v3, Lme/yxp/qfun/javaplugin/loader/PluginManager;->pluginInfos:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter;-><init>(Lme/yxp/qfun/activity/JavaPlugin;ILjava/util/List;)V

    iput-object v1, p0, Lme/yxp/qfun/activity/JavaPlugin;->mAdapter:Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter;

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    sget v0, Lme/yxp/qfun/R$id;->pluginPathTextView:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    sget-object v1, Lme/yxp/qfun/activity/JavaPlugin;->PLUGIN_PATH:Ljava/lang/String;

    const-string v2, "[当前QQ号]"

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "脚本存放目录（点击可复制）\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v1, Lme/yxp/qfun/activity/JavaPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lme/yxp/qfun/activity/JavaPlugin$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/activity/JavaPlugin;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private openDirectoryPicker()V
    .registers 4

    const/4 v0, 0x1

    .line 124
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    return-void

    .line 127
    :catch_c
    const-string p0, "无法打开文件管理器"

    invoke-static {v0, p0}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    return-void
.end method

.method private setTranslucentStatus(Landroid/app/Activity;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_9

    .line 88
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_a

    :goto_9
    return-void

    :cond_a
    const/high16 p1, 0x4000000

    .line 94
    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    .line 95
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 p1, -0x80000000

    .line 97
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x0

    .line 98
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method


# virtual methods
.method public copyToClipBoard(Landroid/view/View;)V
    .registers 4

    .line 111
    const-string p1, "clipboard"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    .line 112
    sget-object p1, Lme/yxp/qfun/activity/JavaPlugin;->PLUGIN_PATH:Ljava/lang/String;

    const-string v0, "[当前QQ号]"

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 113
    const-string v0, "Copied Text"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const/4 p0, 0x2

    .line 115
    const-string p1, "复制成功"

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    return-void
.end method

.method public gotoDocumentation(Landroid/view/View;)V
    .registers 4

    .line 106
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "https://docs.qq.com/doc/DWmNYaVRpTWRSVGpV"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 107
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public importPlugin(Landroid/view/View;)V
    .registers 2

    .line 119
    invoke-direct {p0}, Lme/yxp/qfun/activity/JavaPlugin;->openDirectoryPicker()V

    return-void
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .line 132
    iget-object p0, p0, Lme/yxp/qfun/activity/JavaPlugin;->mAdapter:Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    const/4 p1, -0x1

    if-ne p2, p1, :cond_14

    if-eqz p3, :cond_14

    .line 63
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 65
    invoke-static {p1, p0}, Lme/yxp/qfun/javaplugin/loader/PluginManager;->importPlugin(Landroid/net/Uri;Landroid/app/Activity;)V

    :cond_14
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget p1, Lme/yxp/qfun/R$layout;->javapluginsettings:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 48
    invoke-direct {p0, p0}, Lme/yxp/qfun/activity/JavaPlugin;->setTranslucentStatus(Landroid/app/Activity;)V

    .line 49
    invoke-direct {p0}, Lme/yxp/qfun/activity/JavaPlugin;->initView()V

    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 54
    const-string v0, "AutoLoadList"

    sget-object v1, Lme/yxp/qfun/javaplugin/loader/PluginManager;->autoLoadList:Ljava/util/List;

    const-string v2, "data"

    invoke-static {v2, v0, v1}, Lme/yxp/qfun/utils/data/DataUtils;->serialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
