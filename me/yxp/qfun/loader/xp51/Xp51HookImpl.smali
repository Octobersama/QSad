.class public Lme/yxp/qfun/loader/xp51/Xp51HookImpl;
.super Ljava/lang/Object;
.source "Xp51HookImpl.java"

# interfaces
.implements Lme/yxp/qfun/loader/hookapi/IHookBridge;
.implements Lme/yxp/qfun/loader/hookapi/ILoaderService;


# static fields
.field public static final INSTANCE:Lme/yxp/qfun/loader/xp51/Xp51HookImpl;


# instance fields
.field private mClassLoaderHelper:Lme/yxp/qfun/loader/hookapi/IClassLoaderHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lme/yxp/qfun/loader/xp51/Xp51HookImpl;

    invoke-direct {v0}, Lme/yxp/qfun/loader/xp51/Xp51HookImpl;-><init>()V

    sput-object v0, Lme/yxp/qfun/loader/xp51/Xp51HookImpl;->INSTANCE:Lme/yxp/qfun/loader/xp51/Xp51HookImpl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deoptimize(Ljava/lang/reflect/Member;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getApiLevel()I
    .registers 1

    .line 54
    invoke-static {}, Lde/robv/android/xposed/XposedBridge;->getXposedVersion()I

    move-result p0

    return p0
.end method

.method public getClassLoaderHelper()Lme/yxp/qfun/loader/hookapi/IClassLoaderHelper;
    .registers 1

    .line 179
    iget-object p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookImpl;->mClassLoaderHelper:Lme/yxp/qfun/loader/hookapi/IClassLoaderHelper;

    return-object p0
.end method

.method public getEntryPointName()Ljava/lang/String;
    .registers 1

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrameworkName()Ljava/lang/String;
    .registers 3

    .line 61
    const-string p0, "Unknown"

    :try_start_2
    const-class v0, Lde/robv/android/xposed/XposedBridge;

    const-string v1, "TAG"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    invoke-static {v0, p0}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    return-object p0
.end method

.method public getFrameworkVersion()Ljava/lang/String;
    .registers 1

    .line 72
    invoke-static {}, Lde/robv/android/xposed/XposedBridge;->getXposedVersion()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrameworkVersionCode()J
    .registers 3

    .line 77
    invoke-static {}, Lde/robv/android/xposed/XposedBridge;->getXposedVersion()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getHookCounter()J
    .registers 3

    .line 189
    invoke-static {}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper;->getHookCounter()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getHookedMethods()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation

    .line 195
    invoke-static {}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper;->getHookedMethodsRaw()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getLoaderVersionCode()I
    .registers 1

    .line 0
    const/16 p0, 0xd

    return p0
.end method

.method public getLoaderVersionName()Ljava/lang/String;
    .registers 1

    .line 149
    const-string p0, "1.2.1"

    return-object p0
.end method

.method public getMainModulePath()Ljava/lang/String;
    .registers 1

    .line 160
    invoke-static {}, Lme/yxp/qfun/loader/xp51/Xp51HookEntry;->getModulePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hookMethod(Ljava/lang/reflect/Member;Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;I)Lme/yxp/qfun/loader/hookapi/IHookBridge$MemberUnhookHandle;
    .registers 4

    .line 83
    const-string p0, "member"

    invoke-static {p1, p0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const-string p0, "callback"

    invoke-static {p2, p0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    instance-of p0, p1, Ljava/lang/reflect/Method;

    if-nez p0, :cond_1b

    instance-of p0, p1, Ljava/lang/reflect/Constructor;

    if-eqz p0, :cond_13

    goto :goto_1b

    .line 87
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "member must be method or constructor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_1b
    :goto_1b
    new-instance p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;

    invoke-direct {p0, p2, p3}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;-><init>(Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;I)V

    .line 90
    invoke-static {p1, p0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p2

    if-eqz p2, :cond_33

    .line 95
    invoke-static {}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper;->getHookedMethodsRaw()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance p3, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51UnhookHandle;

    invoke-direct {p3, p2, p1, p0}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51UnhookHandle;-><init>(Lde/robv/android/xposed/XC_MethodHook$Unhook;Ljava/lang/reflect/Member;Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;)V

    return-object p3

    .line 92
    :cond_33
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "XposedBridge.hookMethod return null for member: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public invokeOriginalConstructor(Ljava/lang/reflect/Constructor;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;TT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 110
    const-string p0, "ctor"

    invoke-static {p1, p0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    const-string p0, "thisObject"

    invoke-static {p2, p0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    const-string p0, "args"

    invoke-static {p3, p0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {p1, p2, p3}, Lde/robv/android/xposed/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public invokeOriginalMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 102
    const-string p0, "method"

    invoke-static {p1, p0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    const-string p0, "args"

    invoke-static {p3, p0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-static {p1, p2, p3}, Lde/robv/android/xposed/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isDeoptimizationSupported()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public log(Ljava/lang/String;)V
    .registers 2

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 168
    :cond_7
    invoke-static {p1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    return-void
.end method

.method public log(Ljava/lang/Throwable;)V
    .registers 2

    .line 173
    invoke-static {p1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs newInstanceOrigin(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 121
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "allocate instance is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs queryExtension(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 137
    invoke-static {p1, p2}, Lme/yxp/qfun/loader/xp51/Xp51ExtCmd;->handleQueryExtension(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setClassLoaderHelper(Lme/yxp/qfun/loader/hookapi/IClassLoaderHelper;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lme/yxp/qfun/loader/xp51/Xp51HookImpl;->mClassLoaderHelper:Lme/yxp/qfun/loader/hookapi/IClassLoaderHelper;

    return-void
.end method
