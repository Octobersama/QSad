.class public final synthetic Lme/yxp/qfun/activity/InjectSettings$ItemAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

.field public final synthetic f$1:Landroid/widget/Switch;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Landroid/widget/Switch;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/activity/InjectSettings$ItemAdapter$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

    iput-object p2, p0, Lme/yxp/qfun/activity/InjectSettings$ItemAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/widget/Switch;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/activity/InjectSettings$ItemAdapter$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

    iget-object p0, p0, Lme/yxp/qfun/activity/InjectSettings$ItemAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/widget/Switch;

    invoke-static {v0, p0, p1}, Lme/yxp/qfun/activity/InjectSettings$ItemAdapter;->$r8$lambda$_1gczdmiYqEGF1th9eZF-He82XA(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Landroid/widget/Switch;Landroid/view/View;)V

    return-void
.end method
