.class public final synthetic Lme/yxp/qfun/lifecycle/Parasitics$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/res/Resources;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/lifecycle/Parasitics$$ExternalSyntheticLambda0;->f$0:Landroid/content/res/Resources;

    iput-object p2, p0, Lme/yxp/qfun/lifecycle/Parasitics$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/lifecycle/Parasitics$$ExternalSyntheticLambda0;->f$0:Landroid/content/res/Resources;

    iget-object p0, p0, Lme/yxp/qfun/lifecycle/Parasitics$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lme/yxp/qfun/lifecycle/Parasitics;->$r8$lambda$yaVQuF362E-OpqR501aPIkJi4sM(Landroid/content/res/Resources;Ljava/lang/String;)V

    return-void
.end method
