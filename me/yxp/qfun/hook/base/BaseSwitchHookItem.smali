.class public abstract Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.super Ljava/lang/Object;
.source "BaseSwitchHookItem.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "基础开关项"
.end annotation


# static fields
.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "QFun_Config"

.field private static final TARGET_PROCESS_ALL:Ljava/lang/String; = "All"


# instance fields
.field public isAvailable:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAnnotation()Lme/yxp/qfun/hook/base/HookItemAnnotation;
    .registers 2

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/hook/base/HookItemAnnotation;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/hook/base/HookItemAnnotation;

    return-object p0
.end method


# virtual methods
.method public final getDESC()Ljava/lang/String;
    .registers 1

    .line 45
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getAnnotation()Lme/yxp/qfun/hook/base/HookItemAnnotation;

    move-result-object p0

    invoke-interface {p0}, Lme/yxp/qfun/hook/base/HookItemAnnotation;->desc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getHookStatus()Z
    .registers 4

    .line 65
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "QFun_Config"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getNAME()Ljava/lang/String;
    .registers 1

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTAG()Ljava/lang/String;
    .registers 1

    .line 41
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getAnnotation()Lme/yxp/qfun/hook/base/HookItemAnnotation;

    move-result-object p0

    invoke-interface {p0}, Lme/yxp/qfun/hook/base/HookItemAnnotation;->TAG()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final init()V
    .registers 2

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->initMethod()Z

    move-result v0

    iput-boolean v0, p0, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->isAvailable:Z

    if-eqz v0, :cond_14

    .line 20
    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->isInTargetProcess()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 21
    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->initCallback()V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v0

    goto :goto_15

    :cond_14
    return-void

    .line 24
    :goto_15
    invoke-static {p0, v0}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->isAvailable:Z

    return-void
.end method

.method public abstract initCallback()V
.end method

.method public initMethod()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final isInTargetProcess()Z
    .registers 3

    .line 34
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getAnnotation()Lme/yxp/qfun/hook/base/HookItemAnnotation;

    move-result-object v0

    invoke-interface {v0}, Lme/yxp/qfun/hook/base/HookItemAnnotation;->TargetProcess()Ljava/lang/String;

    move-result-object v0

    const-string v1, "All"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    return p0

    .line 37
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getAnnotation()Lme/yxp/qfun/hook/base/HookItemAnnotation;

    move-result-object p0

    invoke-interface {p0}, Lme/yxp/qfun/hook/base/HookItemAnnotation;->TargetProcess()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lme/yxp/qfun/utils/thread/SyncUtils;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public startHook()V
    .registers 4

    .line 53
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "QFun_Config"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public stopHook()V
    .registers 4

    .line 59
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "QFun_Config"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
