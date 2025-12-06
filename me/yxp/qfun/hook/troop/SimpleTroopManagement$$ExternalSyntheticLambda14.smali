.class public final synthetic Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/javaplugin/api/MsgData;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/EditText;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda14;->f$0:Lme/yxp/qfun/javaplugin/api/MsgData;

    iput-object p2, p0, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda14;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda14;->f$0:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-object p0, p0, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda14;->f$1:Landroid/widget/EditText;

    invoke-static {v0, p0, p1, p2}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement;->$r8$lambda$fUD2sPRBToOup82aIxQxyDX2KbA(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
