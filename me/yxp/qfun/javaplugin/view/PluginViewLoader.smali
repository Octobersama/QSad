.class public Lme/yxp/qfun/javaplugin/view/PluginViewLoader;
.super Ljava/lang/Object;
.source "PluginViewLoader.java"


# static fields
.field private static sPluginView:Lme/yxp/qfun/javaplugin/view/PluginView;


# direct methods
.method public static synthetic $r8$lambda$EKkh8eImB0-pds_LMQ4inFc1_E4(Z)V
    .registers 4

    .line 30
    sget-object v0, Lme/yxp/qfun/javaplugin/loader/PluginManager;->pluginInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    .line 31
    iget-boolean v1, v1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->isRunning:Z

    if-eqz v1, :cond_6

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz p0, :cond_24

    .line 33
    sget-object p0, Lme/yxp/qfun/javaplugin/view/PluginViewLoader;->sPluginView:Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-virtual {p0}, Lme/yxp/qfun/javaplugin/view/PluginView;->dismissFloatButton()V

    goto :goto_36

    .line 37
    :cond_24
    :try_start_24
    sget-object v1, Lme/yxp/qfun/javaplugin/view/PluginViewLoader;->sPluginView:Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-virtual {v1}, Lme/yxp/qfun/javaplugin/view/PluginView;->initPopupWindow()V

    .line 38
    sget-object v1, Lme/yxp/qfun/javaplugin/view/PluginViewLoader;->sPluginView:Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-virtual {v1}, Lme/yxp/qfun/javaplugin/view/PluginView;->showFloatingButton()V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_2f

    goto :goto_36

    :catchall_2f
    move-exception v1

    .line 41
    const-string v2, "PluginViewLoader"

    invoke-static {v2, v1}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_36
    :goto_36
    return-void
.end method

.method public static synthetic $r8$lambda$ZlFt-AlJjsPNVR4rngB4u_dKVrc(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 28
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 29
    new-instance v0, Lme/yxp/qfun/javaplugin/view/PluginViewLoader$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lme/yxp/qfun/javaplugin/view/PluginViewLoader$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-static {v0}, Lme/yxp/qfun/utils/thread/SyncUtils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadFloatButton()V
    .registers 3

    .line 18
    new-instance v0, Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-direct {v0}, Lme/yxp/qfun/javaplugin/view/PluginView;-><init>()V

    sput-object v0, Lme/yxp/qfun/javaplugin/view/PluginViewLoader;->sPluginView:Lme/yxp/qfun/javaplugin/view/PluginView;

    .line 20
    const-string v0, "com.tencent.aio.main.fragment.ChatFragment"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "onHiddenChanged"

    .line 23
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 26
    new-instance v1, Lme/yxp/qfun/javaplugin/view/PluginViewLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lme/yxp/qfun/javaplugin/view/PluginViewLoader$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->hookAlways(Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method
