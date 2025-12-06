.class public Lme/yxp/qfun/lifecycle/CounterfeitActivityInfoFactory;
.super Ljava/lang/Object;
.source "CounterfeitActivityInfoFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initCommon(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .registers 4

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    const/4 v1, 0x0

    .line 40
    iput v1, p0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    .line 41
    iput-object p1, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    .line 45
    iget p1, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    return-object p0
.end method

.method public static makeProxyActivityInfo(Ljava/lang/String;J)Landroid/content/pm/ActivityInfo;
    .registers 11

    const/4 v0, 0x0

    .line 15
    :try_start_1
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v1

    .line 16
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    const-string v2, "com.tencent.mobileqq.activity.QQSettingSettingActivity"

    const-string v3, "com.tencent.mobileqq.activity.QPublicFragmentActivity"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v0

    :goto_12
    const/4 v5, 0x2

    if-ge v3, v5, :cond_32

    .line 20
    aget-object v4, v2, v3
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_17} :catch_3a

    .line 23
    :try_start_17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/content/ComponentName;

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v4, p1

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 26
    invoke-static {v4, p0}, Lme/yxp/qfun/lifecycle/CounterfeitActivityInfoFactory;->initCommon(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object p0
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_2d} :catch_3a

    return-object p0

    :catch_2e
    move-exception v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 31
    :cond_32
    :try_start_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "QQSettingSettingActivity not found, are we in the host?"

    invoke-direct {p0, p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_3a} :catch_3a

    :catch_3a
    return-object v0
.end method
