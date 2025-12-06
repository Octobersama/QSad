.class public final Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "QQMessageOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$InfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder;",
        "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$InfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private msgRandom_:J

.field private msgSeq_:I

.field private msgTime_:J

.field private operatorUid_:Ljava/lang/Object;

.field private receiverUid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 7733
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 7900
    const-string v0, ""

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 7972
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->receiverUid_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V
    .registers 2

    .line 7739
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    .line 7900
    const-string p1, ""

    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 7972
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->receiverUid_:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;-><init>()V

    return-void
.end method

.method private buildPartial0(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;)V
    .registers 5

    .line 7783
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_b

    .line 7785
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->-$$Nest$fputoperatorUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;Ljava/lang/Object;)V

    :cond_b
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_14

    .line 7788
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->receiverUid_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->-$$Nest$fputreceiverUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;Ljava/lang/Object;)V

    :cond_14
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1d

    .line 7791
    iget-wide v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgTime_:J

    invoke-static {p1, v1, v2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->-$$Nest$fputmsgTime_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;J)V

    :cond_1d
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_26

    .line 7794
    iget-wide v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgRandom_:J

    invoke-static {p1, v1, v2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->-$$Nest$fputmsgRandom_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;J)V

    :cond_26
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2f

    .line 7797
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgSeq_:I

    invoke-static {p1, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->-$$Nest$fputmsgSeq_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;I)V

    :cond_2f
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 7721
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_C2CRecallOperationInfo_Info_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 7715
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 7715
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object p0

    return-object p0
.end method

.method public build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;
    .registers 2

    .line 7767
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object p0

    .line 7768
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 7769
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 7715
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 7715
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;
    .registers 3

    .line 7776
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    .line 7777
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->buildPartial0(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;)V

    .line 7778
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 7715
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 1

    .line 7715
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 7715
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 7715
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
    .registers 4

    .line 7744
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 7745
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 7746
    const-string v1, ""

    iput-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 7747
    iput-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->receiverUid_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 7748
    iput-wide v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgTime_:J

    .line 7749
    iput-wide v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgRandom_:J

    .line 7750
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgSeq_:I

    return-object p0
.end method

.method public clearMsgRandom()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
    .registers 3

    .line 8102
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 8103
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgRandom_:J

    .line 8104
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMsgSeq()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
    .registers 2

    .line 8134
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 8135
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgSeq_:I

    .line 8136
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMsgTime()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
    .registers 3

    .line 8070
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 8071
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgTime_:J

    .line 8072
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOperatorUid()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
    .registers 2

    .line 7952
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getOperatorUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 7953
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 7954
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearReceiverUid()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
    .registers 2

    .line 8024
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getReceiverUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->receiverUid_:Ljava/lang/Object;

    .line 8025
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 8026
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 7715
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 7715
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;
    .registers 1

    .line 7762
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 7757
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_C2CRecallOperationInfo_Info_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getMsgRandom()J
    .registers 3

    .line 8083
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgRandom_:J

    return-wide v0
.end method

.method public getMsgSeq()I
    .registers 1

    .line 8115
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgSeq_:I

    return p0
.end method

.method public getMsgTime()J
    .registers 3

    .line 8051
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgTime_:J

    return-wide v0
.end method

.method public getOperatorUid()Ljava/lang/String;
    .registers 3

    .line 7906
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 7907
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 7908
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7910
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7911
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    return-object v0

    .line 7914
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorUidBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 7923
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 7924
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 7925
    check-cast v0, Ljava/lang/String;

    .line 7926
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7928
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    return-object v0

    .line 7931
    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getReceiverUid()Ljava/lang/String;
    .registers 3

    .line 7978
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->receiverUid_:Ljava/lang/Object;

    .line 7979
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 7980
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7982
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7983
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->receiverUid_:Ljava/lang/Object;

    return-object v0

    .line 7986
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverUidBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 7995
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->receiverUid_:Ljava/lang/Object;

    .line 7996
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 7997
    check-cast v0, Ljava/lang/String;

    .line 7998
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8000
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->receiverUid_:Ljava/lang/Object;

    return-object v0

    .line 8003
    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 7727
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_C2CRecallOperationInfo_Info_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    .line 7728
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .line 7715
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 7715
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 7715
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 7715
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 7715
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 7715
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
    .registers 7

    .line 7848
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_76

    .line 7853
    :try_start_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    const/16 v3, 0xa

    if-eq v1, v3, :cond_61

    const/16 v3, 0x12

    if-eq v1, v3, :cond_54

    const/16 v3, 0x28

    if-eq v1, v3, :cond_47

    const/16 v3, 0x30

    if-eq v1, v3, :cond_3a

    const/16 v3, 0xa0

    if-eq v1, v3, :cond_2d

    .line 7884
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_27
    move v0, v2

    goto :goto_4

    :catchall_29
    move-exception p1

    goto :goto_72

    :catch_2b
    move-exception p1

    goto :goto_6d

    .line 7879
    :cond_2d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgSeq_:I

    .line 7880
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    goto :goto_4

    .line 7874
    :cond_3a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgRandom_:J

    .line 7875
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    goto :goto_4

    .line 7869
    :cond_47
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgTime_:J

    .line 7870
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    goto :goto_4

    .line 7864
    :cond_54
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->receiverUid_:Ljava/lang/Object;

    .line 7865
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    goto :goto_4

    .line 7859
    :cond_61
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 7860
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I
    :try_end_6c
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_6c} :catch_2b
    .catchall {:try_start_6 .. :try_end_6c} :catchall_29

    goto :goto_4

    .line 7892
    :goto_6d
    :try_start_6d
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_29

    .line 7894
    :goto_72
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 7895
    throw p1

    .line 7894
    :cond_76
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
    .registers 3

    .line 7803
    instance-of v0, p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    if-eqz v0, :cond_b

    .line 7804
    check-cast p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0

    .line 7806
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
    .registers 6

    .line 7812
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 7813
    :cond_7
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getOperatorUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 7814
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->-$$Nest$fgetoperatorUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 7815
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 7816
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 7818
    :cond_20
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getReceiverUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 7819
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->-$$Nest$fgetreceiverUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->receiverUid_:Ljava/lang/Object;

    .line 7820
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 7821
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 7823
    :cond_39
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getMsgTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4a

    .line 7824
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getMsgTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->setMsgTime(J)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    .line 7826
    :cond_4a
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getMsgRandom()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_59

    .line 7827
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getMsgRandom()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->setMsgRandom(J)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    .line 7829
    :cond_59
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getMsgSeq()I

    move-result v0

    if-eqz v0, :cond_66

    .line 7830
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getMsgSeq()I

    move-result v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->setMsgSeq(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    .line 7832
    :cond_66
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 7833
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMsgRandom(J)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
    .registers 3

    .line 8092
    iput-wide p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgRandom_:J

    .line 8093
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 8094
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMsgSeq(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
    .registers 2

    .line 8124
    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgSeq_:I

    .line 8125
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 8126
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMsgTime(J)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
    .registers 3

    .line 8060
    iput-wide p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->msgTime_:J

    .line 8061
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 8062
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setOperatorUid(Ljava/lang/String;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
    .registers 2

    .line 7941
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7942
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 7943
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 7944
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setOperatorUidBytes(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
    .registers 2

    .line 7964
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7965
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->access$1200(Lcom/google/protobuf/ByteString;)V

    .line 7966
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 7967
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 7968
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setReceiverUid(Ljava/lang/String;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
    .registers 2

    .line 8013
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8014
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->receiverUid_:Ljava/lang/Object;

    .line 8015
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 8016
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setReceiverUidBytes(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
    .registers 2

    .line 8036
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8037
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->access$1300(Lcom/google/protobuf/ByteString;)V

    .line 8038
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->receiverUid_:Ljava/lang/Object;

    .line 8039
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 8040
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
