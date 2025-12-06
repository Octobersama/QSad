.class Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$1;
.super Ljava/lang/Object;
.source "GrabVoiceRedPacket.java"

# interfaces
.implements Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->doGrab(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Ljava/lang/String;Ljava/lang/String;Lme/yxp/qfun/javaplugin/api/MsgData;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;

.field final synthetic val$bigDataUploader:Ljava/lang/Object;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;


# direct methods
.method public constructor <init>(Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;Ljava/lang/Object;Ljava/lang/String;Lme/yxp/qfun/hook/redpacket/RedPacketHook;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$1;->this$0:Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;

    iput-object p2, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$1;->val$bigDataUploader:Ljava/lang/Object;

    iput-object p3, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$1;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$1;->val$redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    .line 140
    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$1;->val$redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5

    .line 132
    :try_start_0
    invoke-static {}, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->-$$Nest$sfgetupload()Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$1;->val$bigDataUploader:Ljava/lang/Object;

    iget-object v1, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$1;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$1;->this$0:Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;

    invoke-static {v2}, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->-$$Nest$mgetReqBytes(Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;)[B

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception p1

    .line 134
    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$1;->val$redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    return-void
.end method
