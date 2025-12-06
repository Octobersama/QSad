.class public Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;
.super Ljava/lang/Object;
.source "HookStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;
    }
.end annotation


# static fields
.field private static sExpCpCalled:Z

.field private static sExpCpResult:Z

.field private static final sXposedService:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow;"
        }
    .end annotation
.end field

.field private static final sXposedServiceListener:Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;

.field private static sXposedServiceListenerRegistered:Z


# direct methods
.method public static synthetic $r8$lambda$VpmPpIVuwUn9SNz8XVeHenX1rE8(Landroid/content/Context;)V
    .registers 1

    .line 134
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->callTaichiContentProvider(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->sExpCpCalled:Z

    .line 135
    sput-boolean p0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->sExpCpResult:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsXposedService()Lkotlinx/coroutines/flow/MutableStateFlow;
    .registers 1

    .line 0
    sget-object v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->sXposedService:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 51
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->sXposedService:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 52
    new-instance v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$1;

    invoke-direct {v0}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$1;-><init>()V

    sput-object v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->sXposedServiceListener:Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;

    const/4 v0, 0x0

    .line 65
    sput-boolean v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->sExpCpCalled:Z

    .line 66
    sput-boolean v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->sExpCpResult:Z

    .line 67
    sput-boolean v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->sXposedServiceListenerRegistered:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callTaichiContentProvider(Landroid/content/Context;)Z
    .registers 9

    .line 100
    const-string v0, "active"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 101
    const-string v3, "content://me.weishu.exposed.CP/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 102
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_35

    const/4 v5, 0x0

    .line 104
    :try_start_13
    invoke-virtual {v2, v3, v0, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_17} :catch_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_35

    goto :goto_27

    .line 108
    :catch_18
    :try_start_18
    new-instance v6, Landroid/content/Intent;

    const-string v7, "me.weishu.exp.ACTION_ACTIVE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x10000000

    .line 109
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_27
    .catch Landroid/content/ActivityNotFoundException; {:try_start_18 .. :try_end_27} :catch_35
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_27} :catch_35

    :goto_27
    if-nez v4, :cond_2d

    .line 116
    :try_start_29
    invoke-virtual {v2, v3, v0, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    :cond_2d
    if-nez v4, :cond_30

    return v1

    .line 121
    :cond_30
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_34} :catch_35

    return p0

    :catch_35
    return v1
.end method

.method public static getHookProviderNameForLegacyApi()Ljava/lang/String;
    .registers 1

    .line 192
    invoke-static {}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->isZygoteHookMode()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 193
    invoke-static {}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->getZygoteHookProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    .line 197
    :cond_d
    invoke-static {}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->isLegacyXposed()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 198
    const-string v0, "Legacy Xposed"

    return-object v0

    .line 200
    :cond_16
    invoke-static {}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->isElderDriverXposed()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 201
    const-string v0, "EdXposed"

    return-object v0

    .line 203
    :cond_1f
    const-string v0, "Unknown(Zygote)"

    return-object v0

    .line 205
    :cond_22
    sget-boolean v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->sExpCpResult:Z

    if-eqz v0, :cond_29

    .line 206
    const-string v0, "Taichi"

    return-object v0

    .line 208
    :cond_29
    const-string v0, "None"

    return-object v0
.end method

.method public static getHookType()Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;
    .registers 1

    .line 152
    invoke-static {}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->isZygoteHookMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 153
    sget-object v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;->ZYGOTE:Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    return-object v0

    .line 155
    :cond_9
    sget-boolean v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->sExpCpResult:Z

    if-eqz v0, :cond_10

    sget-object v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;->APP_PATCH:Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    return-object v0

    :cond_10
    sget-object v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;->NONE:Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    return-object v0
.end method

.method public static getXposedService()Lkotlinx/coroutines/flow/MutableStateFlow;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow;"
        }
    .end annotation

    .line 148
    sget-object v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->sXposedService:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static getZygoteHookProvider()Ljava/lang/String;
    .registers 1

    .line 74
    sget-object v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatusImpl;->sZygoteHookProvider:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "me.yxp.qfun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 129
    sget-boolean v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->sXposedServiceListenerRegistered:Z

    if-nez v0, :cond_18

    .line 130
    sget-object v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->sXposedServiceListener:Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;

    invoke-static {v0}, Lio/github/libxposed/service/XposedServiceHelper;->registerListener(Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;)V

    const/4 v0, 0x1

    .line 131
    sput-boolean v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->sXposedServiceListenerRegistered:Z

    .line 133
    :cond_18
    new-instance v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lme/yxp/qfun/utils/thread/SyncUtils;->async(Ljava/lang/Runnable;)V

    return-void

    .line 140
    :cond_21
    :try_start_21
    invoke-static {}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->initHookStatusImplInHostProcess()V
    :try_end_24
    .catch Ljava/lang/LinkageError; {:try_start_21 .. :try_end_24} :catch_24

    :catch_24
    return-void
.end method

.method private static initHookStatusImplInHostProcess()V
    .registers 4

    .line 159
    invoke-static {}, Lme/yxp/qfun/common/ModuleLoader;->getLoaderService()Lme/yxp/qfun/loader/hookapi/ILoaderService;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "GetXposedBridgeClass"

    invoke-interface {v0, v3, v2}, Lme/yxp/qfun/loader/hookapi/ILoaderService;->queryExtension(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 162
    const-string v1, "de.robv.android.xposed.XposedBridge"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    .line 165
    :cond_1d
    const-string v3, "LSPosed"

    if-eqz v1, :cond_24

    .line 166
    sput-boolean v2, Lme/yxp/qfun/utils/hook/hookstatus/HookStatusImpl;->sIsLsposedDexObfsEnabled:Z

    goto :goto_53

    :cond_24
    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 172
    :try_start_27
    const-string v2, "TAG"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_27 .. :try_end_33} :catch_34

    goto :goto_35

    :catch_34
    :cond_34
    move-object v0, v1

    :goto_35
    if-eqz v0, :cond_52

    .line 177
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_53

    .line 179
    :cond_3e
    const-string v3, "EdXposed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_53

    .line 181
    :cond_47
    const-string v2, "PineXposed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 182
    const-string v3, "Dreamland"

    goto :goto_53

    :cond_52
    move-object v3, v1

    :goto_53
    if-eqz v3, :cond_57

    .line 187
    sput-object v3, Lme/yxp/qfun/utils/hook/hookstatus/HookStatusImpl;->sZygoteHookProvider:Ljava/lang/String;

    :cond_57
    return-void
.end method

.method public static isElderDriverXposed()Z
    .registers 2

    .line 95
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/framework/edxp.jar"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static isLegacyXposed()Z
    .registers 2

    .line 87
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "de.robv.android.xposed.XposedBridge"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    return v0

    :catch_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isLsposedDexObfsEnabled()Z
    .registers 1

    .line 78
    sget-boolean v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatusImpl;->sIsLsposedDexObfsEnabled:Z

    return v0
.end method

.method public static isModuleEnabled()Z
    .registers 2

    .line 222
    invoke-static {}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->getHookType()Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    move-result-object v0

    sget-object v1, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;->NONE:Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static isTaiChiInstalled(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    .line 213
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 214
    const-string v1, "me.weishu.exp"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_a} :catch_c

    const/4 p0, 0x1

    return p0

    :catch_c
    return v0
.end method

.method public static isZygoteHookMode()Z
    .registers 1

    .line 82
    sget-boolean v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatusImpl;->sZygoteHookMode:Z

    return v0
.end method
