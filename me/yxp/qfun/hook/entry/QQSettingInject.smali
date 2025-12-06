.class public Lme/yxp/qfun/hook/entry/QQSettingInject;
.super Ljava/lang/Object;
.source "QQSettingInject.java"


# static fields
.field private static final BOTTOM_TITLE:Ljava/lang/String; = ""

.field private static final MODULE_ORDER:I = 0xa

.field private static final TOP_TITLE:Ljava/lang/String; = "模块"


# direct methods
.method public static synthetic $r8$lambda$Na4fwJ_SVNx7tu9UNwwZXsC67ME(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 7

    .line 29
    iget-object v0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/content/Context;

    .line 30
    invoke-virtual {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 32
    const-string v2, "QQSettingInjectClass1"

    invoke-static {v2}, Lme/yxp/qfun/utils/dexkit/DexKit;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 34
    invoke-static {v0, v2}, Lme/yxp/qfun/hook/entry/QQSettingInject;->createSettingEntry(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 35
    invoke-static {v0, v2}, Lme/yxp/qfun/hook/entry/QQSettingInject;->createPluginEntry(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 37
    invoke-static {v0, v2, v3, v4}, Lme/yxp/qfun/hook/entry/QQSettingInject;->setupClickListener(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "模块"

    const-string v5, ""

    filled-new-array {v2, v4, v5, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 46
    invoke-interface {p0, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PAFxV2gqXS2eW3Do6dWUC3eOPsc(Landroid/content/Context;)V
    .registers 3

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lme/yxp/qfun/activity/JavaPlugin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WxNmgLBC0Q97cY8ZLKW31ukW_mM(Ljava/lang/Runnable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 119
    const-string p2, "invoke"

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 120
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_f
    return-object p1
.end method

.method public static synthetic $r8$lambda$vecbMmKAk-o1YvRsbCzj_DeIJUE(Landroid/content/Context;)V
    .registers 3

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lme/yxp/qfun/activity/InjectSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createPluginEntry(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 83
    const-string v0, "JavaPlugin"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :try_start_8
    sget v2, Lme/yxp/qfun/R$drawable;->plugin:I

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    filled-new-array {p0, v1, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 83
    invoke-static {p1, v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_18

    return-object p0

    .line 86
    :catchall_18
    sget v2, Lme/yxp/qfun/R$drawable;->plugin:I

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v1, v0, v2}, [Ljava/lang/Object;

    move-result-object p0

    .line 86
    invoke-static {p1, p0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static createProxyFunction(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 117
    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Lme/yxp/qfun/hook/entry/QQSettingInject$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3, p2}, Lme/yxp/qfun/hook/entry/QQSettingInject$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static createSettingEntry(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 73
    const-string v0, "QFun"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :try_start_8
    sget v2, Lme/yxp/qfun/R$drawable;->ic_launcher:I

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    filled-new-array {p0, v1, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 73
    invoke-static {p1, v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_18

    return-object p0

    .line 76
    :catchall_18
    sget v2, Lme/yxp/qfun/R$drawable;->ic_launcher:I

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v1, v0, v2}, [Ljava/lang/Object;

    move-result-object p0

    .line 76
    invoke-static {p1, p0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getItemList()Ljava/lang/reflect/Method;
    .registers 4

    .line 54
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->isQQ()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getVersionCode()J

    move-result-wide v0

    const-wide/16 v2, 0x3000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_17

    .line 55
    const-string v0, "QQSettingInjectClass2"

    invoke-static {v0}, Lme/yxp/qfun/utils/dexkit/DexKit;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_20

    .line 59
    :cond_17
    :try_start_17
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_NewSettingConfigProvider()Ljava/lang/Class;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1c

    goto :goto_20

    .line 61
    :catchall_1c
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_MainSettingConfigProvider()Ljava/lang/Class;

    move-result-object v0

    .line 65
    :goto_20
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-class v1, Ljava/util/List;

    .line 66
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static hook()V
    .registers 3

    .line 28
    invoke-static {}, Lme/yxp/qfun/hook/entry/QQSettingInject;->getItemList()Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v1, Lme/yxp/qfun/hook/entry/QQSettingInject$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lme/yxp/qfun/hook/entry/QQSettingInject$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->hookAlways(Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method

.method private static setupClickListener(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p1

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 94
    invoke-virtual {p1, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p1

    const-class v0, Lkotlin/jvm/functions/Function0;

    .line 95
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 99
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->getHostClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 100
    const-string v2, "kotlin.Unit"

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "INSTANCE"

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 105
    new-instance v3, Lme/yxp/qfun/hook/entry/QQSettingInject$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lme/yxp/qfun/hook/entry/QQSettingInject$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v0, v2, v3}, Lme/yxp/qfun/hook/entry/QQSettingInject;->createProxyFunction(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v3

    .line 108
    new-instance v4, Lme/yxp/qfun/hook/entry/QQSettingInject$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lme/yxp/qfun/hook/entry/QQSettingInject$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v0, v2, v4}, Lme/yxp/qfun/hook/entry/QQSettingInject;->createProxyFunction(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p0

    .line 111
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
