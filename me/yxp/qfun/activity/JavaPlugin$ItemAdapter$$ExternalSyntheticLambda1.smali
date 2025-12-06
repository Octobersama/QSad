.class public final synthetic Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

.field public final synthetic f$1:Landroid/widget/Switch;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/widget/Switch;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter$$ExternalSyntheticLambda1;->f$0:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    iput-object p2, p0, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/widget/Switch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter$$ExternalSyntheticLambda1;->f$0:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    iget-object p0, p0, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/widget/Switch;

    invoke-static {v0, p0}, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter;->$r8$lambda$SHtBAokh5n7RCKAfDgikyu032VI(Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/widget/Switch;)V

    return-void
.end method
