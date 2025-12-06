.class public final synthetic Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:Lme/yxp/qfun/javaplugin/loader/PluginInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda3;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda3;->f$1:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda3;->f$0:Landroid/widget/TextView;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda3;->f$1:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    invoke-static {v0, p0}, Lme/yxp/qfun/javaplugin/view/PluginView;->$r8$lambda$dKVl8bDQM-AE021rJFdakoIa_jM(Landroid/widget/TextView;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    return-void
.end method
