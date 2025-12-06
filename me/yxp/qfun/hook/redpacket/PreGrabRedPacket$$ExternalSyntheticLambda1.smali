.class public final synthetic Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;

.field public final synthetic f$1:Lme/yxp/qfun/hook/redpacket/RedPacketHook;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;Lme/yxp/qfun/hook/redpacket/RedPacketHook;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda1;->f$0:Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;

    iput-object p2, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda1;->f$1:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda1;->f$0:Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;

    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda1;->f$1:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    invoke-static {v0, p0, p1, p2, p3}, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->$r8$lambda$mBE6D86by8pNpl-sI9M0qxGreek(Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;Lme/yxp/qfun/hook/redpacket/RedPacketHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
