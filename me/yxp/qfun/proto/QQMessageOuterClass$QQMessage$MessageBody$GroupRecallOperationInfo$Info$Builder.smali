.class public final Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "QQMessageOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$InfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder;",
        "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$InfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private msgInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder;"
        }
    .end annotation
.end field

.field private msgInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

.field private operatorUid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 6222
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 6368
    const-string v0, ""

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 6223
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V
    .registers 2

    .line 6228
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    .line 6368
    const-string p1, ""

    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 6229
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;-><init>()V

    return-void
.end method

.method private buildPartial0(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;)V
    .registers 4

    .line 6279
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_b

    .line 6281
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->-$$Nest$fputoperatorUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;Ljava/lang/Object;)V

    :cond_b
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_21

    .line 6285
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_16

    .line 6286
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    goto :goto_1c

    .line 6287
    :cond_16
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    :goto_1c
    invoke-static {p1, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->-$$Nest$fputmsgInfo_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;)V

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    .line 6290
    :goto_22
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->-$$Nest$fgetbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;)I

    move-result v0

    or-int/2addr p0, v0

    invoke-static {p1, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->-$$Nest$fputbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;I)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6210
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_GroupRecallOperationInfo_Info_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMsgInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder;"
        }
    .end annotation

    .line 6550
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1a

    .line 6551
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 6553
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->getMsgInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object v1

    .line 6554
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/AbstractMessage$BuilderParent;

    move-result-object v2

    .line 6555
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6556
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    .line 6558
    :cond_1a
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object p0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 6233
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->access$900()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6234
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->internalGetMsgInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_9
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 6204
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 6204
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object p0

    return-object p0
.end method

.method public build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 2

    .line 6263
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object p0

    .line 6264
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 6265
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 6204
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 6204
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 3

    .line 6272
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    .line 6273
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->buildPartial0(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;)V

    .line 6274
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 6204
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 1

    .line 6204
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 6204
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 6204
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;
    .registers 3

    .line 6239
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 6240
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 6241
    const-string v0, ""

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6242
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    .line 6243
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v1, :cond_16

    .line 6244
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 6245
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    :cond_16
    return-object p0
.end method

.method public clearMsgInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;
    .registers 3

    .line 6516
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 6517
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    .line 6518
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v1, :cond_12

    .line 6519
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 6520
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 6522
    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOperatorUid()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;
    .registers 2

    .line 6420
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getOperatorUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 6421
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 6422
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 6204
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 6204
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 1

    .line 6258
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 6253
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_GroupRecallOperationInfo_Info_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getMsgInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;
    .registers 2

    .line 6455
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_d

    .line 6456
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    if-nez p0, :cond_c

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object p0

    :cond_c
    return-object p0

    .line 6458
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    return-object p0
.end method

.method public getMsgInfoBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;
    .registers 2

    .line 6529
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 6530
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 6531
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->internalGetMsgInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;

    return-object p0
.end method

.method public getMsgInfoOrBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfoOrBuilder;
    .registers 2

    .line 6537
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_b

    .line 6538
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfoOrBuilder;

    return-object p0

    .line 6540
    :cond_b
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    if-nez p0, :cond_13

    .line 6541
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method public getOperatorUid()Ljava/lang/String;
    .registers 3

    .line 6374
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 6375
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 6376
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6378
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6379
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    return-object v0

    .line 6382
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorUidBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 6391
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 6392
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 6393
    check-cast v0, Ljava/lang/String;

    .line 6394
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6396
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    return-object v0

    .line 6399
    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasMsgInfo()Z
    .registers 1

    .line 6448
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 6216
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_GroupRecallOperationInfo_Info_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    .line 6217
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

    .line 6204
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 6204
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 6204
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 6204
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 6204
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 6204
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;
    .registers 7

    .line 6329
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_48

    .line 6334
    :try_start_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    const/16 v3, 0xa

    if-eq v1, v3, :cond_33

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_21

    .line 6352
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1b
    move v0, v2

    goto :goto_4

    :catchall_1d
    move-exception p1

    goto :goto_44

    :catch_1f
    move-exception p1

    goto :goto_3f

    .line 6346
    :cond_21
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->internalGetMsgInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    .line 6345
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6348
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    goto :goto_4

    .line 6340
    :cond_33
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 6341
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I
    :try_end_3e
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_3e} :catch_1f
    .catchall {:try_start_6 .. :try_end_3e} :catchall_1d

    goto :goto_4

    .line 6360
    :goto_3f
    :try_start_3f
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_1d

    .line 6362
    :goto_44
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 6363
    throw p1

    .line 6362
    :cond_48
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;
    .registers 3

    .line 6295
    instance-of v0, p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    if-eqz v0, :cond_b

    .line 6296
    check-cast p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0

    .line 6298
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;
    .registers 3

    .line 6304
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 6305
    :cond_7
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getOperatorUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 6306
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->-$$Nest$fgetoperatorUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 6307
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 6308
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 6310
    :cond_20
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->hasMsgInfo()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 6311
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getMsgInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->mergeMsgInfo(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    .line 6313
    :cond_2d
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6314
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeMsgInfo(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;
    .registers 4

    .line 6495
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1f

    .line 6496
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    if-eqz v0, :cond_1c

    .line 6498
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    .line 6499
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->getMsgInfoBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;

    goto :goto_22

    .line 6501
    :cond_1c
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    goto :goto_22

    .line 6504
    :cond_1f
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6506
    :goto_22
    iget-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    if-eqz p1, :cond_2f

    .line 6507
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 6508
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    :cond_2f
    return-object p0
.end method

.method public setMsgInfo(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;
    .registers 3

    .line 6482
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_b

    .line 6483
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    goto :goto_12

    .line 6485
    :cond_b
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6487
    :goto_12
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 6488
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMsgInfo(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;
    .registers 3

    .line 6465
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_a

    .line 6467
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6469
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->msgInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    goto :goto_d

    .line 6471
    :cond_a
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6473
    :goto_d
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 6474
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setOperatorUid(Ljava/lang/String;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;
    .registers 2

    .line 6409
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6410
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 6411
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 6412
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setOperatorUidBytes(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;
    .registers 2

    .line 6432
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6433
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->access$1000(Lcom/google/protobuf/ByteString;)V

    .line 6434
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->operatorUid_:Ljava/lang/Object;

    .line 6435
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->bitField0_:I

    .line 6436
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
