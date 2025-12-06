.class public final Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "QQMessageOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder;",
        "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private infoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder;"
        }
    .end annotation
.end field

.field private info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 8401
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 8402
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V
    .registers 2

    .line 8407
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    .line 8408
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;-><init>()V

    return-void
.end method

.method private buildPartial0(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;)V
    .registers 4

    .line 8457
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    .line 8460
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_d

    .line 8461
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    goto :goto_13

    .line 8462
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    :goto_13
    invoke-static {p1, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->-$$Nest$fputinfo_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;)V

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 8465
    :goto_18
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->-$$Nest$fgetbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;)I

    move-result p0

    or-int/2addr p0, v1

    invoke-static {p1, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->-$$Nest$fputbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;I)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 8389
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_C2CRecallOperationInfo_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private internalGetInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder;"
        }
    .end annotation

    .line 8643
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1a

    .line 8644
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 8646
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object v1

    .line 8647
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/AbstractMessage$BuilderParent;

    move-result-object v2

    .line 8648
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 8649
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    .line 8651
    :cond_1a
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object p0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 8412
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8413
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->internalGetInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_9
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 8383
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 8383
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    move-result-object p0

    return-object p0
.end method

.method public build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
    .registers 2

    .line 8441
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    move-result-object p0

    .line 8442
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 8443
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 8383
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 8383
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
    .registers 3

    .line 8450
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    .line 8451
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->bitField0_:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->buildPartial0(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;)V

    .line 8452
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 8383
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 1

    .line 8383
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 8383
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 8383
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;
    .registers 3

    .line 8418
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 8419
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 8420
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    .line 8421
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v1, :cond_12

    .line 8422
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 8423
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    :cond_12
    return-object p0
.end method

.method public clearInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;
    .registers 3

    .line 8609
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 8610
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    .line 8611
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v1, :cond_12

    .line 8612
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 8613
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 8615
    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 8383
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 8383
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
    .registers 1

    .line 8436
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 8431
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_C2CRecallOperationInfo_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;
    .registers 2

    .line 8548
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_d

    .line 8549
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    if-nez p0, :cond_c

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object p0

    :cond_c
    return-object p0

    .line 8551
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    return-object p0
.end method

.method public getInfoBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;
    .registers 2

    .line 8622
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->bitField0_:I

    .line 8623
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 8624
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->internalGetInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    return-object p0
.end method

.method public getInfoOrBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$InfoOrBuilder;
    .registers 2

    .line 8630
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_b

    .line 8631
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$InfoOrBuilder;

    return-object p0

    .line 8633
    :cond_b
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    if-nez p0, :cond_13

    .line 8634
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method public hasInfo()Z
    .registers 2

    .line 8541
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 8395
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_C2CRecallOperationInfo_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    .line 8396
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

    .line 8383
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 8383
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 8383
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 8383
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 8383
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 8383
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;
    .registers 7

    .line 8499
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_37

    .line 8504
    :try_start_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1d

    .line 8517
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_17
    move v0, v2

    goto :goto_4

    :catchall_19
    move-exception p1

    goto :goto_33

    :catch_1b
    move-exception p1

    goto :goto_2e

    .line 8511
    :cond_1d
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->internalGetInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    .line 8510
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8513
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->bitField0_:I
    :try_end_2d
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_2d} :catch_1b
    .catchall {:try_start_6 .. :try_end_2d} :catchall_19

    goto :goto_4

    .line 8525
    :goto_2e
    :try_start_2e
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_19

    .line 8527
    :goto_33
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 8528
    throw p1

    .line 8527
    :cond_37
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;
    .registers 3

    .line 8470
    instance-of v0, p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    if-eqz v0, :cond_b

    .line 8471
    check-cast p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0

    .line 8473
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;
    .registers 3

    .line 8479
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 8480
    :cond_7
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->hasInfo()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8481
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->mergeInfo(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    .line 8483
    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 8484
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeInfo(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;
    .registers 4

    .line 8588
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1f

    .line 8589
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    if-eqz v0, :cond_1c

    .line 8591
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    .line 8592
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->getInfoBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;

    goto :goto_22

    .line 8594
    :cond_1c
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    goto :goto_22

    .line 8597
    :cond_1f
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 8599
    :goto_22
    iget-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    if-eqz p1, :cond_2f

    .line 8600
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->bitField0_:I

    .line 8601
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    :cond_2f
    return-object p0
.end method

.method public setInfo(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;
    .registers 3

    .line 8575
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_b

    .line 8576
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    goto :goto_12

    .line 8578
    :cond_b
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 8580
    :goto_12
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->bitField0_:I

    .line 8581
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setInfo(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;
    .registers 3

    .line 8558
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_a

    .line 8560
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8562
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    goto :goto_d

    .line 8564
    :cond_a
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 8566
    :goto_d
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->bitField0_:I

    .line 8567
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
