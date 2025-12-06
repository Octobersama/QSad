.class public Lme/yxp/qfun/javaplugin/MainPlugin;
.super Ljava/lang/Object;
.source "MainPlugin.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initPlugins()V
    .registers 1

    .line 11
    invoke-static {}, Lme/yxp/qfun/javaplugin/loader/PluginManager;->stopAllPlugin()V

    .line 12
    sget-object v0, Lme/yxp/qfun/javaplugin/loader/PluginManager;->pluginInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    invoke-static {}, Lme/yxp/qfun/javaplugin/loader/PluginManager;->getAllPlugin()V

    .line 14
    invoke-static {}, Lme/yxp/qfun/javaplugin/loader/PluginManager;->autoLoadPlugin()V

    return-void
.end method

.method public static initView()V
    .registers 2

    .line 20
    :try_start_0
    invoke-static {}, Lme/yxp/qfun/javaplugin/view/PluginViewLoader;->loadFloatButton()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    .line 22
    const-string v1, "MainPlugin"

    invoke-static {v1, v0}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
