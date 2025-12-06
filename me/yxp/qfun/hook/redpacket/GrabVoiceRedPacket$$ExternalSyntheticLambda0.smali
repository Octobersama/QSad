.class public final synthetic Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;

.field public final synthetic f$1:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

.field public final synthetic f$2:Lme/yxp/qfun/javaplugin/api/MsgData;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;Lme/yxp/qfun/hook/redpacket/RedPacketHook;Lme/yxp/qfun/javaplugin/api/MsgData;ZLjava/io/File;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;

    iput-object p2, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$$ExternalSyntheticLambda0;->f$1:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iput-object p3, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$$ExternalSyntheticLambda0;->f$2:Lme/yxp/qfun/javaplugin/api/MsgData;

    iput-boolean p4, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$$ExternalSyntheticLambda0;->f$3:Z

    iput-object p5, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$$ExternalSyntheticLambda0;->f$4:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;

    iget-object v1, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$$ExternalSyntheticLambda0;->f$1:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iget-object v2, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$$ExternalSyntheticLambda0;->f$2:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-boolean v3, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$$ExternalSyntheticLambda0;->f$3:Z

    iget-object v4, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$$ExternalSyntheticLambda0;->f$4:Ljava/io/File;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->$r8$lambda$0ZE8sLGfbjtH_kH-2Yqe_XiFcaw(Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;Lme/yxp/qfun/hook/redpacket/RedPacketHook;Lme/yxp/qfun/javaplugin/api/MsgData;ZLjava/io/File;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
