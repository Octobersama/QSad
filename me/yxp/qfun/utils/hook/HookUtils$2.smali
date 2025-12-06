.class Lme/yxp/qfun/utils/hook/HookUtils$2;
.super Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;
.source "HookUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yxp/qfun/utils/hook/HookUtils;->hookAlways(Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$hookAfter:Lme/yxp/qfun/utils/hook/HookUtils$Hooker;

.field final synthetic val$hookBefore:Lme/yxp/qfun/utils/hook/HookUtils$Hooker;


# direct methods
.method public constructor <init>(Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V
    .registers 3

    .line 47
    iput-object p1, p0, Lme/yxp/qfun/utils/hook/HookUtils$2;->val$hookBefore:Lme/yxp/qfun/utils/hook/HookUtils$Hooker;

    iput-object p2, p0, Lme/yxp/qfun/utils/hook/HookUtils$2;->val$hookAfter:Lme/yxp/qfun/utils/hook/HookUtils$Hooker;

    invoke-direct {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method public afterHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 62
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/HookUtils$2;->val$hookAfter:Lme/yxp/qfun/utils/hook/HookUtils$Hooker;

    if-nez p0, :cond_5

    return-void

    .line 66
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lme/yxp/qfun/utils/hook/HookUtils$Hooker;->execute(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    .line 68
    const-string p1, ""

    invoke-static {p1, p0}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public beforeHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 50
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/HookUtils$2;->val$hookBefore:Lme/yxp/qfun/utils/hook/HookUtils$Hooker;

    if-nez p0, :cond_5

    return-void

    .line 54
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lme/yxp/qfun/utils/hook/HookUtils$Hooker;->execute(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    return-void

    :catchall_9
    move-exception p0

    .line 56
    const-string p1, ""

    invoke-static {p1, p0}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
