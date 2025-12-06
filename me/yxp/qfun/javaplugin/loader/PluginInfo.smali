.class public Lme/yxp/qfun/javaplugin/loader/PluginInfo;
.super Ljava/lang/Object;
.source "PluginInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public isRunning:Z

.field private final mAuthorName:Ljava/lang/String;

.field private final mDesc:Ljava/lang/String;

.field private final mPluginVersion:Ljava/lang/String;

.field public pluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

.field public pluginId:Ljava/lang/String;

.field public pluginName:Ljava/lang/String;

.field public pluginPath:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$49hluj1Xx8G4l9W2GLDedm3BzAM(Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->lambda$onClick$1(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_1zpDiCwwaU7G8b-tekpaGirAgI(Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->lambda$onClick$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$xYfNSF0Zofkh8HU7WCZGmyeNYt0(Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/widget/PopupWindow;Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->lambda$onClick$2(Landroid/widget/PopupWindow;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->isRunning:Z

    .line 35
    iput-object p3, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->mAuthorName:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->mPluginVersion:Ljava/lang/String;

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginPath:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginId:Ljava/lang/String;

    .line 40
    new-instance p1, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

    invoke-direct {p1, p0}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;-><init>(Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    iput-object p1, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

    .line 41
    iget-object p1, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->getDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->mDesc:Ljava/lang/String;

    return-void
.end method

.method private getDesc(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 54
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "desc.txt"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    :try_start_16
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_6d

    .line 57
    :try_start_1b
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_4e

    .line 58
    :try_start_20
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_50

    .line 61
    :try_start_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    :goto_2f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    :catchall_3e
    move-exception v1

    goto :goto_52

    .line 65
    :cond_40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_3e

    .line 66
    :try_start_44
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_50

    :try_start_47
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4e

    :try_start_4a
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_6d

    return-object v1

    :catchall_4e
    move-exception p0

    goto :goto_64

    :catchall_50
    move-exception v0

    goto :goto_5b

    .line 56
    :goto_52
    :try_start_52
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception v0

    :try_start_57
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5a
    throw v1
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_50

    :goto_5b
    :try_start_5b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_63

    :catchall_5f
    move-exception p0

    :try_start_60
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_63
    throw v0
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_4e

    :goto_64
    :try_start_64
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_6c

    :catchall_68
    move-exception p1

    :try_start_69
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6c
    throw p0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6d} :catch_6d

    .line 67
    :catch_6d
    const-string p0, ""

    return-object p0
.end method

.method private synthetic lambda$onClick$0(Landroid/widget/CompoundButton;Z)V
    .registers 3

    if-eqz p2, :cond_a

    .line 93
    sget-object p1, Lme/yxp/qfun/javaplugin/loader/PluginManager;->autoLoadList:Ljava/util/List;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 95
    :cond_a
    sget-object p1, Lme/yxp/qfun/javaplugin/loader/PluginManager;->autoLoadList:Ljava/util/List;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$onClick$1(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 115
    invoke-static {p0, p1}, Lme/yxp/qfun/javaplugin/loader/PluginManager;->deletePlugin(Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$onClick$2(Landroid/widget/PopupWindow;Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .line 109
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 110
    new-instance p1, Landroid/app/AlertDialog$Builder;

    const/4 p3, 0x5

    invoke-direct {p1, p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string p3, "取消"

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p3, "提示"

    .line 112
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p3, "确认删除该脚本？"

    .line 113
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lme/yxp/qfun/javaplugin/loader/PluginInfo$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p2}, Lme/yxp/qfun/javaplugin/loader/PluginInfo$$ExternalSyntheticLambda2;-><init>(Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/app/Activity;)V

    .line 114
    const-string p0, "确定"

    invoke-virtual {p1, p0, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 46
    instance-of v0, p1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 49
    :cond_6
    check-cast p1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    .line 50
    iget-object p1, p1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginId:Ljava/lang/String;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lme/yxp/qfun/R$layout;->plugininfodialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 76
    sget v1, Lme/yxp/qfun/R$id;->authorTextView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 77
    sget v2, Lme/yxp/qfun/R$id;->versionTextView:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 78
    sget v3, Lme/yxp/qfun/R$id;->descTextView:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 79
    sget v4, Lme/yxp/qfun/R$id;->autoSwitch:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    .line 80
    sget v5, Lme/yxp/qfun/R$id;->deleteButton:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 81
    sget v6, Lme/yxp/qfun/R$id;->uploadButton:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "作者："

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->mAuthorName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "版本："

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->mPluginVersion:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->mDesc:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    sget-object v1, Lme/yxp/qfun/javaplugin/loader/PluginManager;->autoLoadList:Ljava/util/List;

    iget-object v2, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_80

    .line 88
    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 91
    :cond_80
    new-instance v1, Lme/yxp/qfun/javaplugin/loader/PluginInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lme/yxp/qfun/javaplugin/loader/PluginInfo$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x1020002

    .line 99
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 100
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-direct {v3, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 102
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 103
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 104
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 105
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x7

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/16 v0, 0x11

    const/4 v2, 0x0

    .line 106
    invoke-virtual {v3, v1, v0, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 108
    new-instance v0, Lme/yxp/qfun/javaplugin/loader/PluginInfo$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v3, p1}, Lme/yxp/qfun/javaplugin/loader/PluginInfo$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/widget/PopupWindow;Landroid/app/Activity;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
