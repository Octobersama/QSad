.class public Lme/yxp/qfun/utils/hook/HookUtils;
.super Ljava/lang/Object;
.source "HookUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/utils/hook/HookUtils$Hooker;,
        Lme/yxp/qfun/utils/hook/HookUtils$Replacement;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hookAllConstructIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Class;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/yxp/qfun/hook/base/BaseSwitchHookItem;",
            "Ljava/lang/Class<",
            "*>;",
            "Lme/yxp/qfun/utils/hook/HookUtils$Hooker;",
            "Lme/yxp/qfun/utils/hook/HookUtils$Hooker;",
            ")V"
        }
    .end annotation

    .line 16
    :try_start_0
    new-instance v0, Lme/yxp/qfun/utils/hook/HookUtils$1;

    invoke-direct {v0, p2, p0, p3}, Lme/yxp/qfun/utils/hook/HookUtils$1;-><init>(Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    invoke-static {p1, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->hookAllConstructors(Ljava/lang/Class;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;)Ljava/util/Set;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p1

    .line 40
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static hookAlways(Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V
    .registers 4

    .line 47
    :try_start_0
    new-instance v0, Lme/yxp/qfun/utils/hook/HookUtils$2;

    invoke-direct {v0, p1, p2}, Lme/yxp/qfun/utils/hook/HookUtils$2;-><init>(Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    invoke-static {p0, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 73
    const-string p1, ""

    invoke-static {p1, p0}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static hookIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V
    .registers 5

    .line 98
    :try_start_0
    new-instance v0, Lme/yxp/qfun/utils/hook/HookUtils$4;

    invoke-direct {v0, p2, p0, p3}, Lme/yxp/qfun/utils/hook/HookUtils$4;-><init>(Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    invoke-static {p1, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p1

    .line 125
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static replaceAlways(Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V
    .registers 3

    .line 79
    :try_start_0
    new-instance v0, Lme/yxp/qfun/utils/hook/HookUtils$3;

    invoke-direct {v0, p1}, Lme/yxp/qfun/utils/hook/HookUtils$3;-><init>(Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V

    invoke-static {p0, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 91
    const-string p1, ""

    invoke-static {p1, p0}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static replaceIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V
    .registers 4

    .line 132
    :try_start_0
    new-instance v0, Lme/yxp/qfun/utils/hook/HookUtils$5;

    invoke-direct {v0, p0, p2}, Lme/yxp/qfun/utils/hook/HookUtils$5;-><init>(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V

    invoke-static {p1, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p1

    .line 147
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    return-void
.end method
