.class public final synthetic Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda2;->f$0:Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;

    iput-object p2, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda2;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda2;->f$0:Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;

    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda2;->f$1:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->$r8$lambda$6BX5G1ulOJXP21_f6mcxLmn9BwM(Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;Landroid/os/Bundle;)V

    return-void
.end method
