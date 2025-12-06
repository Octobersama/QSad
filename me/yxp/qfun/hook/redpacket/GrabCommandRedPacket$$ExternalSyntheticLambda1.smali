.class public final synthetic Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

.field public final synthetic f$3:Lme/yxp/qfun/javaplugin/api/MsgData;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;Ljava/lang/String;Lme/yxp/qfun/hook/redpacket/RedPacketHook;Lme/yxp/qfun/javaplugin/api/MsgData;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket$$ExternalSyntheticLambda1;->f$0:Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;

    iput-object p2, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket$$ExternalSyntheticLambda1;->f$2:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iput-object p4, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket$$ExternalSyntheticLambda1;->f$3:Lme/yxp/qfun/javaplugin/api/MsgData;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket$$ExternalSyntheticLambda1;->f$0:Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;

    iget-object v1, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket$$ExternalSyntheticLambda1;->f$2:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket$$ExternalSyntheticLambda1;->f$3:Lme/yxp/qfun/javaplugin/api/MsgData;

    invoke-static {v0, v1, v2, p0}, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->$r8$lambda$MoatSn_a_1Tu2JVQMK6ndFjq9r4(Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;Ljava/lang/String;Lme/yxp/qfun/hook/redpacket/RedPacketHook;Lme/yxp/qfun/javaplugin/api/MsgData;)V

    return-void
.end method
