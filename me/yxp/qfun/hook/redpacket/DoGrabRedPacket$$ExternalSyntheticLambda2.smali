.class public final synthetic Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;

.field public final synthetic f$1:Lme/yxp/qfun/javaplugin/api/MsgData;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;Lme/yxp/qfun/javaplugin/api/MsgData;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket$$ExternalSyntheticLambda2;->f$0:Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;

    iput-object p2, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket$$ExternalSyntheticLambda2;->f$1:Lme/yxp/qfun/javaplugin/api/MsgData;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket$$ExternalSyntheticLambda2;->f$0:Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;

    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket$$ExternalSyntheticLambda2;->f$1:Lme/yxp/qfun/javaplugin/api/MsgData;

    invoke-static {v0, p0}, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->$r8$lambda$I-YvKUPZfdEJM18ODeuj3PzU2ns(Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;Lme/yxp/qfun/javaplugin/api/MsgData;)V

    return-void
.end method
