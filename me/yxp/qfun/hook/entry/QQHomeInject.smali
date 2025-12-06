.class public Lme/yxp/qfun/hook/entry/QQHomeInject;
.super Ljava/lang/Object;
.source "QQHomeInject.java"


# direct methods
.method public static synthetic $r8$lambda$-ikTlMqEjavTB6zC8VZ9NzA3HLk(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 35
    invoke-static {p0, p2, p3}, Lme/yxp/qfun/hook/entry/QQHomeInject;->handleOnClickAction(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KdRFMgWzEuRU0uSwlM5qNVGq4yA(Ljava/lang/Class;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 7

    .line 31
    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x2

    .line 32
    aget-object v2, p1, v1

    .line 34
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->getHostClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object p0

    new-instance v4, Lme/yxp/qfun/hook/entry/QQHomeInject$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Lme/yxp/qfun/hook/entry/QQHomeInject$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    invoke-static {v3, p0, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p1, v1

    const/4 p0, 0x0

    .line 37
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 39
    sget v1, Lme/yxp/qfun/R$string;->plugin_name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lme/yxp/qfun/R$drawable;->plugin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "JavaPlugin"

    filled-new-array {v1, v3, v3, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40
    sget v1, Lme/yxp/qfun/R$string;->app_name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lme/yxp/qfun/R$drawable;->ic_launcher:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "QFun"

    filled-new-array {v1, v4, v3, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static handleOnClickAction(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    .line 47
    aget-object v0, p2, v0

    .line 48
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 50
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 55
    sget v2, Lme/yxp/qfun/R$string;->plugin_name:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_25

    .line 56
    const-class v0, Lme/yxp/qfun/activity/JavaPlugin;

    goto :goto_2d

    .line 57
    :cond_25
    sget v2, Lme/yxp/qfun/R$string;->app_name:I

    if-ne v0, v2, :cond_2c

    .line 58
    const-class v0, Lme/yxp/qfun/activity/InjectSettings;

    goto :goto_2d

    :cond_2c
    move-object v0, v3

    :goto_2d
    if-eqz v0, :cond_38

    .line 62
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-object v3

    .line 68
    :cond_38
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hook()V
    .registers 3

    .line 23
    const-string v0, "com.tencent.widget.PopupMenuDialog$OnClickActionListener"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 25
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_PopupMenuDialog()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    const-string v2, "conversationPlusBuild"

    .line 26
    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 29
    new-instance v2, Lme/yxp/qfun/hook/entry/QQHomeInject$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lme/yxp/qfun/hook/entry/QQHomeInject$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lme/yxp/qfun/utils/hook/HookUtils;->hookAlways(Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method
