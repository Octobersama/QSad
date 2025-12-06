.class public final synthetic Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/Switch;

.field public final synthetic f$1:Lme/yxp/qfun/javaplugin/loader/PluginInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Switch;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Switch;

    iput-object p2, p0, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter$$ExternalSyntheticLambda0;->f$1:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Switch;

    iget-object p0, p0, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter$$ExternalSyntheticLambda0;->f$1:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    invoke-static {v0, p0, p1}, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter;->$r8$lambda$wlvYdAgTe5f_Mk9Z2GkXb9F1vH0(Landroid/widget/Switch;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/view/View;)V

    return-void
.end method
