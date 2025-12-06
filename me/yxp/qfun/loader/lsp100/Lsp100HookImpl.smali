.class public Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;
.super Ljava/lang/Object;
.source "Lsp100HookImpl.java"

# interfaces
.implements Lme/yxp/qfun/loader/hookapi/IHookBridge;
.implements Lme/yxp/qfun/loader/hookapi/ILoaderService;


# static fields
.field public static final INSTANCE:Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;

.field public static self:Lio/github/libxposed/api/XposedModule;


# instance fields
.field private mClassLoaderHelper:Lme/yxp/qfun/loader/hookapi/IClassLoaderHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;

    invoke-direct {v0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;-><init>()V

    sput-object v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->INSTANCE:Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;

    const/4 v0, 0x0

    .line 46
    sput-object v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->self:Lio/github/libxposed/api/XposedModule;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Lio/github/libxposed/api/XposedModule;)V
    .registers 1

    .line 53
    sput-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->self:Lio/github/libxposed/api/XposedModule;

    .line 54
    sput-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->self:Lio/github/libxposed/api/XposedModule;

    return-void
.end method


# virtual methods
.method public deoptimize(Ljava/lang/reflect/Member;)Z
    .registers 2

    .line 92
    const-string p0, "member"

    invoke-static {p1, p0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    instance-of p0, p1, Ljava/lang/reflect/Method;

    if-eqz p0, :cond_12

    .line 94
    sget-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->self:Lio/github/libxposed/api/XposedModule;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1}, Lio/github/libxposed/api/XposedModule;->deoptimize(Ljava/lang/reflect/Method;)Z

    move-result p0

    return p0

    .line 95
    :cond_12
    instance-of p0, p1, Ljava/lang/reflect/Constructor;

    if-eqz p0, :cond_1f

    .line 96
    sget-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->self:Lio/github/libxposed/api/XposedModule;

    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1}, Lio/github/libxposed/api/XposedModule;->deoptimize(Ljava/lang/reflect/Constructor;)Z

    move-result p0

    return p0

    .line 98
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "only method and constructor can be deoptimized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getApiLevel()I
    .registers 1

    .line 0
    const/16 p0, 0x64

    return p0
.end method

.method public getClassLoaderHelper()Lme/yxp/qfun/loader/hookapi/IClassLoaderHelper;
    .registers 1

    .line 171
    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->mClassLoaderHelper:Lme/yxp/qfun/loader/hookapi/IClassLoaderHelper;

    return-object p0
.end method

.method public getEntryPointName()Ljava/lang/String;
    .registers 1

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrameworkName()Ljava/lang/String;
    .registers 1

    .line 65
    sget-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->self:Lio/github/libxposed/api/XposedModule;

    invoke-virtual {p0}, Lio/github/libxposed/api/XposedModule;->getFrameworkName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrameworkVersion()Ljava/lang/String;
    .registers 1

    .line 71
    sget-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->self:Lio/github/libxposed/api/XposedModule;

    invoke-virtual {p0}, Lio/github/libxposed/api/XposedModule;->getFrameworkVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrameworkVersionCode()J
    .registers 3

    .line 76
    sget-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->self:Lio/github/libxposed/api/XposedModule;

    invoke-virtual {p0}, Lio/github/libxposed/api/XposedModule;->getFrameworkVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHookCounter()J
    .registers 3

    .line 181
    invoke-static {}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->getHookCounter()I

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

    .line 187
    invoke-static {}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->getHookedMethodsRaw()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

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

    .line 144
    const-string p0, "1.2.1"

    return-object p0
.end method

.method public getMainModulePath()Ljava/lang/String;
    .registers 1

    .line 155
    sget-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->self:Lio/github/libxposed/api/XposedModule;

    invoke-virtual {p0}, Lio/github/libxposed/api/XposedModule;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object p0
.end method

.method public hookMethod(Ljava/lang/reflect/Member;Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;I)Lme/yxp/qfun/loader/hookapi/IHookBridge$MemberUnhookHandle;
    .registers 4

    .line 82
    invoke-static {p1, p2, p3}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->hookAndRegisterMethodCallback(Ljava/lang/reflect/Member;Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;I)Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$UnhookHandle;

    move-result-object p0

    return-object p0
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

    .line 123
    const-string p0, "ctor"

    invoke-static {p1, p0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    const-string p0, "thisObject"

    invoke-static {p2, p0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    const-string p0, "args"

    invoke-static {p3, p0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    sget-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->self:Lio/github/libxposed/api/XposedModule;

    invoke-virtual {p0, p1, p2, p3}, Lio/github/libxposed/api/XposedModule;->invokeOrigin(Ljava/lang/reflect/Constructor;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public invokeOriginalMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 106
    const-string p0, "method"

    invoke-static {p1, p0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    const-string p0, "args"

    invoke-static {p3, p0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->self:Lio/github/libxposed/api/XposedModule;

    invoke-virtual {p0, p1, p2, p3}, Lio/github/libxposed/api/XposedModule;->invokeOrigin(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isDeoptimizationSupported()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public log(Ljava/lang/String;)V
    .registers 2

    .line 160
    sget-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->self:Lio/github/libxposed/api/XposedModule;

    invoke-virtual {p0, p1}, Lio/github/libxposed/api/XposedModule;->log(Ljava/lang/String;)V

    return-void
.end method

.method public log(Ljava/lang/Throwable;)V
    .registers 3

    .line 165
    sget-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->self:Lio/github/libxposed/api/XposedModule;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/github/libxposed/api/XposedModule;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

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

    .line 115
    const-string p0, "constructor"

    invoke-static {p1, p0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    const-string p0, "args"

    invoke-static {p2, p0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    sget-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->self:Lio/github/libxposed/api/XposedModule;

    invoke-virtual {p0, p1, p2}, Lio/github/libxposed/api/XposedModule;->newInstanceOrigin(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public varargs queryExtension(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 132
    invoke-static {p1, p2}, Lme/yxp/qfun/loader/lsp100/Lsp100ExtCmd;->handleQueryExtension(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setClassLoaderHelper(Lme/yxp/qfun/loader/hookapi/IClassLoaderHelper;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->mClassLoaderHelper:Lme/yxp/qfun/loader/hookapi/IClassLoaderHelper;

    return-void
.end method
