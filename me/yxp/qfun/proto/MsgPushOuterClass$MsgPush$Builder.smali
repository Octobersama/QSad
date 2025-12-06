.class public final Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MsgPushOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPushOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder;",
        "Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPushOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private qqMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder;"
        }
    .end annotation
.end field

.field private qqMessage_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 295
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 296
    invoke-direct {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V
    .registers 2

    .line 301
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    .line 302
    invoke-direct {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/MsgPushOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lme/yxp/qfun/proto/MsgPushOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;-><init>()V

    return-void
.end method

.method private buildPartial0(Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;)V
    .registers 4

    .line 351
    iget v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    .line 354
    iget-object v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_d

    .line 355
    iget-object p0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessage_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    goto :goto_13

    .line 356
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    :goto_13
    invoke-static {p1, p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->-$$Nest$fputqqMessage_(Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)V

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 359
    :goto_18
    invoke-static {p1}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->-$$Nest$fgetbitField0_(Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;)I

    move-result p0

    or-int/2addr p0, v1

    invoke-static {p1, p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->-$$Nest$fputbitField0_(Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;I)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 283
    invoke-static {}, Lme/yxp/qfun/proto/MsgPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_MsgPush_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private internalGetQqMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder;"
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1a

    .line 538
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 540
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->getQqMessage()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object v1

    .line 541
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/AbstractMessage$BuilderParent;

    move-result-object v2

    .line 542
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 543
    iput-object v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessage_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    .line 545
    :cond_1a
    iget-object p0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object p0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 306
    invoke-static {}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->access$000()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 307
    invoke-direct {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->internalGetQqMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_9
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 277
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->build()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 277
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->build()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    move-result-object p0

    return-object p0
.end method

.method public build()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
    .registers 2

    .line 335
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->buildPartial()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    move-result-object p0

    .line 336
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 337
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 277
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->buildPartial()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 277
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->buildPartial()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
    .registers 3

    .line 344
    new-instance v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/MsgPushOuterClass-IA;)V

    .line 345
    iget v1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->bitField0_:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->buildPartial0(Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;)V

    .line 346
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 277
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->clear()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 1

    .line 277
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->clear()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 277
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->clear()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 277
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->clear()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;
    .registers 3

    .line 312
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 313
    iput v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessage_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    .line 315
    iget-object v1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v1, :cond_12

    .line 316
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 317
    iput-object v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    :cond_12
    return-object p0
.end method

.method public clearQqMessage()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;
    .registers 3

    .line 503
    iget v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessage_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    .line 505
    iget-object v1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v1, :cond_12

    .line 506
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 507
    iput-object v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 509
    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 277
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 277
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
    .registers 1

    .line 330
    invoke-static {}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->getDefaultInstance()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 325
    invoke-static {}, Lme/yxp/qfun/proto/MsgPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_MsgPush_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getQqMessage()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 2

    .line 442
    iget-object v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_d

    .line 443
    iget-object p0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessage_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    if-nez p0, :cond_c

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p0

    :cond_c
    return-object p0

    .line 445
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-object p0
.end method

.method public getQqMessageBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 2

    .line 516
    iget v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->bitField0_:I

    .line 517
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 518
    invoke-direct {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->internalGetQqMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    return-object p0
.end method

.method public getQqMessageOrBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessageOrBuilder;
    .registers 2

    .line 524
    iget-object v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_b

    .line 525
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessageOrBuilder;

    return-object p0

    .line 527
    :cond_b
    iget-object p0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessage_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    if-nez p0, :cond_13

    .line 528
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method public hasQqMessage()Z
    .registers 2

    .line 435
    iget p0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->bitField0_:I

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

    .line 289
    invoke-static {}, Lme/yxp/qfun/proto/MsgPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_MsgPush_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    const-class v1, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    .line 290
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

    .line 277
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 277
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 277
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 277
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 277
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 277
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;
    .registers 7

    .line 393
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_37

    .line 398
    :try_start_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1d

    .line 411
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

    .line 405
    :cond_1d
    invoke-direct {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->internalGetQqMessageFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    .line 404
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 407
    iget v1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->bitField0_:I
    :try_end_2d
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_2d} :catch_1b
    .catchall {:try_start_6 .. :try_end_2d} :catchall_19

    goto :goto_4

    .line 419
    :goto_2e
    :try_start_2e
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_19

    .line 421
    :goto_33
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 422
    throw p1

    .line 421
    :cond_37
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;
    .registers 3

    .line 364
    instance-of v0, p1, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    if-eqz v0, :cond_b

    .line 365
    check-cast p1, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->mergeFrom(Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0

    .line 367
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;
    .registers 3

    .line 373
    invoke-static {}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->getDefaultInstance()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 374
    :cond_7
    invoke-virtual {p1}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->hasQqMessage()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 375
    invoke-virtual {p1}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->getQqMessage()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->mergeQqMessage(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    .line 377
    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 378
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeQqMessage(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;
    .registers 4

    .line 482
    iget-object v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1f

    .line 483
    iget v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessage_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    if-eqz v0, :cond_1c

    .line 485
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    .line 486
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->getQqMessageBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    goto :goto_22

    .line 488
    :cond_1c
    iput-object p1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessage_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    goto :goto_22

    .line 491
    :cond_1f
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 493
    :goto_22
    iget-object p1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessage_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    if-eqz p1, :cond_2f

    .line 494
    iget p1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->bitField0_:I

    .line 495
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    :cond_2f
    return-object p0
.end method

.method public setQqMessage(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;
    .registers 3

    .line 469
    iget-object v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_b

    .line 470
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessage_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    goto :goto_12

    .line 472
    :cond_b
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 474
    :goto_12
    iget p1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->bitField0_:I

    .line 475
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setQqMessage(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;
    .registers 3

    .line 452
    iget-object v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessageBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_a

    .line 454
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    iput-object p1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->qqMessage_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    goto :goto_d

    .line 458
    :cond_a
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 460
    :goto_d
    iget p1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->bitField0_:I

    .line 461
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
