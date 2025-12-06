.class Lme/yxp/qfun/utils/hook/HookUtils$1;
.super Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;
.source "HookUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yxp/qfun/utils/hook/HookUtils;->hookAllConstructIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Class;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$hookAfter:Lme/yxp/qfun/utils/hook/HookUtils$Hooker;

.field final synthetic val$hookBefore:Lme/yxp/qfun/utils/hook/HookUtils$Hooker;

.field final synthetic val$hookItem:Lme/yxp/qfun/hook/base/BaseSwitchHookItem;


# direct methods
.method public constructor <init>(Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V
    .registers 4

    .line 16
    iput-object p1, p0, Lme/yxp/qfun/utils/hook/HookUtils$1;->val$hookBefore:Lme/yxp/qfun/utils/hook/HookUtils$Hooker;

    iput-object p2, p0, Lme/yxp/qfun/utils/hook/HookUtils$1;->val$hookItem:Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

    iput-object p3, p0, Lme/yxp/qfun/utils/hook/HookUtils$1;->val$hookAfter:Lme/yxp/qfun/utils/hook/HookUtils$Hooker;

    invoke-direct {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method public afterHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 30
    iget-object v0, p0, Lme/yxp/qfun/utils/hook/HookUtils$1;->val$hookAfter:Lme/yxp/qfun/utils/hook/HookUtils$Hooker;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lme/yxp/qfun/utils/hook/HookUtils$1;->val$hookItem:Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

    invoke-virtual {v0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getHookStatus()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_19

    .line 33
    :cond_d
    :try_start_d
    iget-object v0, p0, Lme/yxp/qfun/utils/hook/HookUtils$1;->val$hookAfter:Lme/yxp/qfun/utils/hook/HookUtils$Hooker;

    invoke-interface {v0, p1}, Lme/yxp/qfun/utils/hook/HookUtils$Hooker;->execute(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception p1

    .line 35
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/HookUtils$1;->val$hookItem:Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public beforeHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 19
    iget-object v0, p0, Lme/yxp/qfun/utils/hook/HookUtils$1;->val$hookBefore:Lme/yxp/qfun/utils/hook/HookUtils$Hooker;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lme/yxp/qfun/utils/hook/HookUtils$1;->val$hookItem:Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

    invoke-virtual {v0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getHookStatus()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_19

    .line 22
    :cond_d
    :try_start_d
    iget-object v0, p0, Lme/yxp/qfun/utils/hook/HookUtils$1;->val$hookBefore:Lme/yxp/qfun/utils/hook/HookUtils$Hooker;

    invoke-interface {v0, p1}, Lme/yxp/qfun/utils/hook/HookUtils$Hooker;->execute(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception p1

    .line 24
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/HookUtils$1;->val$hookItem:Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    :cond_19
    :goto_19
    return-void
.end method
