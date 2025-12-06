.class public final synthetic Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;

.field public final synthetic f$1:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;Lme/yxp/qfun/hook/redpacket/RedPacketHook;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;

    iput-object p2, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda0;->f$1:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iput-boolean p3, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;

    iget-object v1, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda0;->f$1:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iget-boolean p0, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, p0}, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->$r8$lambda$e97gSxvED7Q1fFkC2QSTtAcygl4(Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;Lme/yxp/qfun/hook/redpacket/RedPacketHook;Z)V

    return-void
.end method
