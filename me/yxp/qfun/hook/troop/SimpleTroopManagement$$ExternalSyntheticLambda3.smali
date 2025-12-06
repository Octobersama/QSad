.class public final synthetic Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/javaplugin/api/MsgData;

.field public final synthetic f$1:Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda3;->f$0:Lme/yxp/qfun/javaplugin/api/MsgData;

    iput-object p2, p0, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda3;->f$1:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda3;->f$0:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-object p0, p0, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda3;->f$1:Landroid/widget/PopupWindow;

    invoke-static {v0, p0, p1}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement;->$r8$lambda$CzZBEviYMgHToxERdxrVS9DYF0Y(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method
