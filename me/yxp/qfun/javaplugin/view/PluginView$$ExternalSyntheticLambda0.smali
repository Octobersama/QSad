.class public final synthetic Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/javaplugin/view/PluginView;

.field public final synthetic f$1:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/javaplugin/view/PluginView;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    iput-object p2, p0, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda0;->f$1:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    iput-object p3, p0, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda0;->f$1:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lme/yxp/qfun/javaplugin/view/PluginView;->$r8$lambda$4sF5gfGGfjjJQc0zxv8up3V5ymA(Lme/yxp/qfun/javaplugin/view/PluginView;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
