.class public Lme/yxp/qfun/utils/qq/HostInfo;
.super Ljava/lang/Object;
.source "HostInfo.java"


# static fields
.field public static final PACKAGE_NAME_QQ:Ljava/lang/String; = "com.tencent.mobileqq"

.field public static final PACKAGE_NAME_TIM:Ljava/lang/String; = "com.tencent.tim"

.field private static sHostContext:Landroid/content/Context;

.field private static sModuleDataPath:Ljava/lang/String;

.field private static sVersionCode:J

.field private static sVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHostContext()Landroid/content/Context;
    .registers 1

    .line 60
    sget-object v0, Lme/yxp/qfun/utils/qq/HostInfo;->sHostContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getMODULE_DATA_PATH()Ljava/lang/String;
    .registers 1

    .line 52
    sget-object v0, Lme/yxp/qfun/utils/qq/HostInfo;->sModuleDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .registers 1

    .line 40
    sget-object v0, Lme/yxp/qfun/utils/qq/HostInfo;->sHostContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionCode()J
    .registers 2

    .line 23
    sget-wide v0, Lme/yxp/qfun/utils/qq/HostInfo;->sVersionCode:J

    return-wide v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .registers 1

    .line 27
    sget-object v0, Lme/yxp/qfun/utils/qq/HostInfo;->sVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public static isInHostProcess()Z
    .registers 3

    .line 68
    sget-object v0, Lme/yxp/qfun/utils/qq/HostInfo;->sHostContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 69
    :cond_6
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "com.tencent.tim"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    return v1

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    return v0
.end method

.method public static isQQ()Z
    .registers 2

    .line 44
    const-string v0, "com.tencent.mobileqq"

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTIM()Z
    .registers 2

    .line 48
    const-string v0, "com.tencent.tim"

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static setHostContext(Landroid/content/Context;)V
    .registers 1

    .line 64
    sput-object p0, Lme/yxp/qfun/utils/qq/HostInfo;->sHostContext:Landroid/content/Context;

    return-void
.end method

.method public static setHostInfo(Landroid/content/Context;)V
    .registers 1

    .line 17
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/HostInfo;->setHostContext(Landroid/content/Context;)V

    .line 18
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/HostInfo;->setVersionInfo(Landroid/content/Context;)V

    .line 19
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/HostInfo;->setModuleDataPath(Landroid/content/Context;)V

    return-void
.end method

.method private static setModuleDataPath(Landroid/content/Context;)V
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/QFun/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/utils/qq/HostInfo;->sModuleDataPath:Ljava/lang/String;

    return-void
.end method

.method private static setVersionInfo(Landroid/content/Context;)V
    .registers 3

    .line 32
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    sput-wide v0, Lme/yxp/qfun/utils/qq/HostInfo;->sVersionCode:J

    .line 34
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, Lme/yxp/qfun/utils/qq/HostInfo;->sVersionName:Ljava/lang/String;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method
