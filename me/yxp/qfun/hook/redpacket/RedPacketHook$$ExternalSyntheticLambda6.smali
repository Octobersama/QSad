.class public final synthetic Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/javaplugin/api/MsgData;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/javaplugin/api/MsgData;IILjava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda6;->f$0:Lme/yxp/qfun/javaplugin/api/MsgData;

    iput p2, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda6;->f$1:I

    iput p3, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda6;->f$2:I

    iput-object p4, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda6;->f$0:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget v1, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda6;->f$1:I

    iget v2, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda6;->f$2:I

    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->$r8$lambda$AydYbGJH___t9CwNxRVEUfJMCs8(Lme/yxp/qfun/javaplugin/api/MsgData;IILjava/lang/String;)V

    return-void
.end method
