.class public Lme/yxp/qfun/loader/lsp100/Lsp100HookEntry;
.super Lio/github/libxposed/api/XposedModule;
.source "Lsp100HookEntry.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final PACKAGE_NAME_QQ:Ljava/lang/String; = "com.tencent.mobileqq"

.field private static final PACKAGE_NAME_TIM:Ljava/lang/String; = "com.tencent.tim"

.field public static packageLoadedParam:Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;


# direct methods
.method public constructor <init>(Lio/github/libxposed/api/XposedInterface;Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lio/github/libxposed/api/XposedModule;-><init>(Lio/github/libxposed/api/XposedInterface;Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;)V

    .line 37
    invoke-static {p0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->init(Lio/github/libxposed/api/XposedModule;)V

    return-void
.end method

.method private handleLoadHostPackage(Ljava/lang/ClassLoader;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .registers 4

    .line 56
    :try_start_0
    sget-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->INSTANCE:Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;

    invoke-static {p1, p0, p0, p3}, Lme/yxp/qfun/common/ModuleLoader;->initialize(Ljava/lang/ClassLoader;Lme/yxp/qfun/loader/hookapi/ILoaderService;Lme/yxp/qfun/loader/hookapi/IHookBridge;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 58
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public onPackageLoaded(Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;)V
    .registers 4

    .line 42
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 43
    sput-object p1, Lme/yxp/qfun/loader/lsp100/Lsp100HookEntry;->packageLoadedParam:Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;

    .line 45
    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "com.tencent.tim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 46
    :cond_16
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->isFirstPackage()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 47
    invoke-virtual {p0}, Lio/github/libxposed/api/XposedModule;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 48
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookEntry;->handleLoadHostPackage(Ljava/lang/ClassLoader;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    :cond_2d
    return-void
.end method
