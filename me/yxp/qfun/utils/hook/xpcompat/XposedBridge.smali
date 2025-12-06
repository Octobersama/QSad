.class public Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;
.super Ljava/lang/Object;
.source "XposedBridge.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deoptimizeMethod(Ljava/lang/reflect/Member;)Z
    .registers 2

    .line 149
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_11

    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 150
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "member must be method or constructor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :cond_11
    :goto_11
    invoke-static {}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->requireHookBridge()Lme/yxp/qfun/loader/hookapi/IHookBridge;

    move-result-object v0

    invoke-interface {v0, p0}, Lme/yxp/qfun/loader/hookapi/IHookBridge;->deoptimize(Ljava/lang/reflect/Member;)Z

    move-result p0

    return p0
.end method

.method public static hookAllConstructors(Ljava/lang/Class;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;",
            ")",
            "Ljava/util/Set<",
            "Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_19

    aget-object v3, p0, v2

    .line 56
    invoke-static {v3, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_19
    return-object v0
.end method

.method public static hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;",
            ")",
            "Ljava/util/Set<",
            "Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_23

    aget-object v3, p0, v2

    .line 38
    invoke-interface {v3}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 39
    invoke-static {v3, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_23
    return-object v0
.end method

.method public static hookMethod(Ljava/lang/reflect/Member;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;
    .registers 5

    if-eqz p0, :cond_23

    if-eqz p1, :cond_1b

    .line 89
    invoke-virtual {p1}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;->getPriority()I

    move-result v0

    .line 90
    invoke-static {}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->requireHookBridge()Lme/yxp/qfun/loader/hookapi/IHookBridge;

    move-result-object v1

    .line 91
    new-instance v2, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookCallback;

    invoke-direct {v2, p1}, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookCallback;-><init>(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;)V

    .line 92
    invoke-interface {v1, p0, v2, v0}, Lme/yxp/qfun/loader/hookapi/IHookBridge;->hookMethod(Ljava/lang/reflect/Member;Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;I)Lme/yxp/qfun/loader/hookapi/IHookBridge$MemberUnhookHandle;

    move-result-object p0

    .line 93
    new-instance v0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;

    invoke-direct {v0, p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;-><init>(Lme/yxp/qfun/loader/hookapi/IHookBridge$MemberUnhookHandle;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;)V

    return-object v0

    .line 87
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hookMethod must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    if-nez p2, :cond_4

    .line 118
    sget-object p2, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    :cond_4
    if-eqz p0, :cond_47

    .line 123
    invoke-static {}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->requireHookBridge()Lme/yxp/qfun/loader/hookapi/IHookBridge;

    move-result-object v0

    .line 124
    instance-of v1, p0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2a

    .line 125
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_23

    if-eqz p1, :cond_1b

    goto :goto_23

    .line 126
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "receiver == null for a non-static method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_23
    :goto_23
    check-cast p0, Ljava/lang/reflect/Method;

    invoke-interface {v0, p0, p1, p2}, Lme/yxp/qfun/loader/hookapi/IHookBridge;->invokeOriginalMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 129
    :cond_2a
    instance-of v1, p0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_3f

    if-eqz p1, :cond_37

    .line 133
    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-interface {v0, p0, p1, p2}, Lme/yxp/qfun/loader/hookapi/IHookBridge;->invokeOriginalConstructor(Ljava/lang/reflect/Constructor;Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 131
    :cond_37
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "receiver == null for a constructor"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 136
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "method must be a method or constructor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "method must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2

    .line 156
    invoke-static {}, Lme/yxp/qfun/common/ModuleLoader;->getLoaderService()Lme/yxp/qfun/loader/hookapi/ILoaderService;

    move-result-object v0

    invoke-interface {v0, p0}, Lme/yxp/qfun/loader/hookapi/ILoaderService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/Throwable;)V
    .registers 2

    .line 160
    invoke-static {}, Lme/yxp/qfun/common/ModuleLoader;->getLoaderService()Lme/yxp/qfun/loader/hookapi/ILoaderService;

    move-result-object v0

    invoke-interface {v0, p0}, Lme/yxp/qfun/loader/hookapi/ILoaderService;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static requireHookBridge()Lme/yxp/qfun/loader/hookapi/IHookBridge;
    .registers 2

    .line 62
    invoke-static {}, Lme/yxp/qfun/common/ModuleLoader;->getHookBridge()Lme/yxp/qfun/loader/hookapi/IHookBridge;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 64
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hook bridge not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
