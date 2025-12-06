.class public final Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "QQMessageOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHeadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder;",
        "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHeadOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private receiverPeerId_:J

.field private receiverUid_:Ljava/lang/Object;

.field private senderInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder;"
        }
    .end annotation
.end field

.field private senderInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

.field private senderPeerId_:J

.field private senderUid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1218
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1434
    const-string v0, ""

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderUid_:Ljava/lang/Object;

    .line 1538
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverUid_:Ljava/lang/Object;

    .line 1219
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V
    .registers 2

    .line 1224
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    .line 1434
    const-string p1, ""

    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderUid_:Ljava/lang/Object;

    .line 1538
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverUid_:Ljava/lang/Object;

    .line 1225
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;-><init>()V

    return-void
.end method

.method private buildPartial0(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)V
    .registers 5

    .line 1278
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_b

    .line 1280
    iget-wide v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderPeerId_:J

    invoke-static {p1, v1, v2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->-$$Nest$fputsenderPeerId_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;J)V

    :cond_b
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_14

    .line 1283
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderUid_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->-$$Nest$fputsenderUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;Ljava/lang/Object;)V

    :cond_14
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1d

    .line 1286
    iget-wide v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverPeerId_:J

    invoke-static {p1, v1, v2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->-$$Nest$fputreceiverPeerId_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;J)V

    :cond_1d
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_26

    .line 1289
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverUid_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->-$$Nest$fputreceiverUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;Ljava/lang/Object;)V

    :cond_26
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3c

    .line 1293
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_31

    .line 1294
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    goto :goto_37

    .line 1295
    :cond_31
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    :goto_37
    invoke-static {p1, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->-$$Nest$fputsenderInfo_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;)V

    const/4 p0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 p0, 0x0

    .line 1298
    :goto_3d
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->-$$Nest$fgetbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)I

    move-result v0

    or-int/2addr p0, v0

    invoke-static {p1, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->-$$Nest$fputbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;I)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1206
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageHead_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private internalGetSenderInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder;"
        }
    .end annotation

    .line 1720
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1a

    .line 1721
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 1723
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->getSenderInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object v1

    .line 1724
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/AbstractMessage$BuilderParent;

    move-result-object v2

    .line 1725
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 1726
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    .line 1728
    :cond_1a
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object p0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 1229
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->access$100()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1230
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->internalGetSenderInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_9
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 1200
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1200
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object p0

    return-object p0
.end method

.method public build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 2

    .line 1262
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object p0

    .line 1263
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 1264
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 1200
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1200
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 3

    .line 1271
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    .line 1272
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->buildPartial0(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)V

    .line 1273
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 1200
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 1

    .line 1200
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 1200
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 1200
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 4

    .line 1235
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 1236
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 1237
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderPeerId_:J

    .line 1238
    const-string v2, ""

    iput-object v2, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderUid_:Ljava/lang/Object;

    .line 1239
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverPeerId_:J

    .line 1240
    iput-object v2, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverUid_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1241
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    .line 1242
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v1, :cond_1e

    .line 1243
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 1244
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    :cond_1e
    return-object p0
.end method

.method public clearReceiverPeerId()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 3

    .line 1532
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 1533
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverPeerId_:J

    .line 1534
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearReceiverUid()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 2

    .line 1590
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getReceiverUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverUid_:Ljava/lang/Object;

    .line 1591
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    .line 1592
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSenderInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 3

    .line 1686
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 1687
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    .line 1688
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v1, :cond_12

    .line 1689
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 1690
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1692
    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSenderPeerId()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 3

    .line 1428
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 1429
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderPeerId_:J

    .line 1430
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSenderUid()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 2

    .line 1486
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getSenderUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderUid_:Ljava/lang/Object;

    .line 1487
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    .line 1488
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 1200
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1200
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 1

    .line 1257
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1252
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageHead_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getReceiverPeerId()J
    .registers 3

    .line 1513
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverPeerId_:J

    return-wide v0
.end method

.method public getReceiverUid()Ljava/lang/String;
    .registers 3

    .line 1544
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverUid_:Ljava/lang/Object;

    .line 1545
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1546
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1548
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1549
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverUid_:Ljava/lang/Object;

    return-object v0

    .line 1552
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverUidBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 1561
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverUid_:Ljava/lang/Object;

    .line 1562
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1563
    check-cast v0, Ljava/lang/String;

    .line 1564
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1566
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverUid_:Ljava/lang/Object;

    return-object v0

    .line 1569
    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSenderInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;
    .registers 2

    .line 1625
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_d

    .line 1626
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    if-nez p0, :cond_c

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object p0

    :cond_c
    return-object p0

    .line 1628
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    return-object p0
.end method

.method public getSenderInfoBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;
    .registers 2

    .line 1699
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    .line 1700
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 1701
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->internalGetSenderInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;

    return-object p0
.end method

.method public getSenderInfoOrBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfoOrBuilder;
    .registers 2

    .line 1707
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_b

    .line 1708
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfoOrBuilder;

    return-object p0

    .line 1710
    :cond_b
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    if-nez p0, :cond_13

    .line 1711
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method public getSenderPeerId()J
    .registers 3

    .line 1409
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderPeerId_:J

    return-wide v0
.end method

.method public getSenderUid()Ljava/lang/String;
    .registers 3

    .line 1440
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderUid_:Ljava/lang/Object;

    .line 1441
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1442
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1444
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1445
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderUid_:Ljava/lang/Object;

    return-object v0

    .line 1448
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSenderUidBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 1457
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderUid_:Ljava/lang/Object;

    .line 1458
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1459
    check-cast v0, Ljava/lang/String;

    .line 1460
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1462
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderUid_:Ljava/lang/Object;

    return-object v0

    .line 1465
    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasSenderInfo()Z
    .registers 1

    .line 1618
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 1212
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageHead_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    .line 1213
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

    .line 1200
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1200
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 1200
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 1200
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 1200
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 1200
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 8

    .line 1348
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_7a

    .line 1353
    :try_start_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    const/16 v3, 0x8

    if-eq v1, v3, :cond_65

    const/16 v4, 0x12

    if-eq v1, v4, :cond_58

    const/16 v4, 0x28

    if-eq v1, v4, :cond_4b

    const/16 v4, 0x32

    if-eq v1, v4, :cond_3f

    const/16 v3, 0x42

    if-eq v1, v3, :cond_2d

    .line 1386
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_27
    move v0, v2

    goto :goto_4

    :catchall_29
    move-exception p1

    goto :goto_76

    :catch_2b
    move-exception p1

    goto :goto_71

    .line 1380
    :cond_2d
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->internalGetSenderInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    .line 1379
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1382
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    goto :goto_4

    .line 1374
    :cond_3f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverUid_:Ljava/lang/Object;

    .line 1375
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    or-int/2addr v1, v3

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    goto :goto_4

    .line 1369
    :cond_4b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverPeerId_:J

    .line 1370
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    goto :goto_4

    .line 1364
    :cond_58
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderUid_:Ljava/lang/Object;

    .line 1365
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    goto :goto_4

    .line 1359
    :cond_65
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderPeerId_:J

    .line 1360
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I
    :try_end_70
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_70} :catch_2b
    .catchall {:try_start_6 .. :try_end_70} :catchall_29

    goto :goto_4

    .line 1394
    :goto_71
    :try_start_71
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_29

    .line 1396
    :goto_76
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 1397
    throw p1

    .line 1396
    :cond_7a
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 3

    .line 1303
    instance-of v0, p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    if-eqz v0, :cond_b

    .line 1304
    check-cast p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0

    .line 1306
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 6

    .line 1312
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1313
    :cond_7
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getSenderPeerId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 1314
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getSenderPeerId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->setSenderPeerId(J)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    .line 1316
    :cond_18
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getSenderUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1317
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->-$$Nest$fgetsenderUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderUid_:Ljava/lang/Object;

    .line 1318
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    .line 1319
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 1321
    :cond_31
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getReceiverPeerId()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_40

    .line 1322
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getReceiverPeerId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->setReceiverPeerId(J)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    .line 1324
    :cond_40
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getReceiverUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    .line 1325
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->-$$Nest$fgetreceiverUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverUid_:Ljava/lang/Object;

    .line 1326
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    .line 1327
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 1329
    :cond_59
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->hasSenderInfo()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1330
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getSenderInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->mergeSenderInfo(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    .line 1332
    :cond_66
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1333
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeSenderInfo(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 4

    .line 1665
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1f

    .line 1666
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    if-eqz v0, :cond_1c

    .line 1668
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    .line 1669
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->getSenderInfoBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;

    goto :goto_22

    .line 1671
    :cond_1c
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    goto :goto_22

    .line 1674
    :cond_1f
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 1676
    :goto_22
    iget-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    if-eqz p1, :cond_2f

    .line 1677
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    .line 1678
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    :cond_2f
    return-object p0
.end method

.method public setReceiverPeerId(J)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 3

    .line 1522
    iput-wide p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverPeerId_:J

    .line 1523
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    .line 1524
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setReceiverUid(Ljava/lang/String;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 2

    .line 1579
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1580
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverUid_:Ljava/lang/Object;

    .line 1581
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    .line 1582
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setReceiverUidBytes(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 2

    .line 1602
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1603
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->access$300(Lcom/google/protobuf/ByteString;)V

    .line 1604
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->receiverUid_:Ljava/lang/Object;

    .line 1605
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    .line 1606
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setSenderInfo(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 3

    .line 1652
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_b

    .line 1653
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    goto :goto_12

    .line 1655
    :cond_b
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 1657
    :goto_12
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    .line 1658
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setSenderInfo(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 3

    .line 1635
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_a

    .line 1637
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1639
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    goto :goto_d

    .line 1641
    :cond_a
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 1643
    :goto_d
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    .line 1644
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setSenderPeerId(J)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 3

    .line 1418
    iput-wide p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderPeerId_:J

    .line 1419
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    .line 1420
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setSenderUid(Ljava/lang/String;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 2

    .line 1475
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1476
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderUid_:Ljava/lang/Object;

    .line 1477
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    .line 1478
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setSenderUidBytes(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 2

    .line 1498
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1499
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->access$200(Lcom/google/protobuf/ByteString;)V

    .line 1500
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->senderUid_:Ljava/lang/Object;

    .line 1501
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->bitField0_:I

    .line 1502
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
