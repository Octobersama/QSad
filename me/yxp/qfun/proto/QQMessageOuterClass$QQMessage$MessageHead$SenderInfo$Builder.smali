.class public final Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "QQMessageOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder;",
        "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private msgSubType_:I

.field private nickName_:Ljava/lang/Object;

.field private peerId_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 536
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 741
    const-string v0, ""

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->nickName_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V
    .registers 2

    .line 542
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    .line 741
    const-string p1, ""

    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->nickName_:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;-><init>()V

    return-void
.end method

.method private buildPartial0(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;)V
    .registers 5

    .line 584
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_b

    .line 586
    iget-wide v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->peerId_:J

    invoke-static {p1, v1, v2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->-$$Nest$fputpeerId_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;J)V

    :cond_b
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_14

    .line 589
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->msgSubType_:I

    invoke-static {p1, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->-$$Nest$fputmsgSubType_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;I)V

    :cond_14
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1d

    .line 592
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->nickName_:Ljava/lang/Object;

    invoke-static {p1, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->-$$Nest$fputnickName_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 524
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageHead_SenderInfo_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 518
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 518
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object p0

    return-object p0
.end method

.method public build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;
    .registers 2

    .line 568
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object p0

    .line 569
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 570
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 518
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 518
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;
    .registers 3

    .line 577
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    .line 578
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->buildPartial0(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;)V

    .line 579
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 518
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 1

    .line 518
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 518
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 518
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;
    .registers 4

    .line 547
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 548
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 549
    iput-wide v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->peerId_:J

    .line 550
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->msgSubType_:I

    .line 551
    const-string v0, ""

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->nickName_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearMsgSubType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;
    .registers 2

    .line 735
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 736
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->msgSubType_:I

    .line 737
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNickName()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;
    .registers 2

    .line 793
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->nickName_:Ljava/lang/Object;

    .line 794
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    .line 795
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPeerId()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;
    .registers 3

    .line 703
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 704
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->peerId_:J

    .line 705
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 518
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 518
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;
    .registers 1

    .line 563
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 558
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageHead_SenderInfo_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getMsgSubType()I
    .registers 1

    .line 716
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->msgSubType_:I

    return p0
.end method

.method public getNickName()Ljava/lang/String;
    .registers 3

    .line 747
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->nickName_:Ljava/lang/Object;

    .line 748
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 749
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 751
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 752
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->nickName_:Ljava/lang/Object;

    return-object v0

    .line 755
    :cond_f
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNickNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 764
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->nickName_:Ljava/lang/Object;

    .line 765
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 766
    check-cast v0, Ljava/lang/String;

    .line 767
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 769
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->nickName_:Ljava/lang/Object;

    return-object v0

    .line 772
    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPeerId()J
    .registers 3

    .line 684
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->peerId_:J

    return-wide v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 530
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageHead_SenderInfo_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;

    .line 531
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

    .line 518
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 518
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 518
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 518
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 518
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 518
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;
    .registers 8

    .line 635
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_54

    .line 640
    :try_start_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    const/16 v3, 0x8

    if-eq v1, v3, :cond_3f

    const/16 v3, 0x10

    if-eq v1, v3, :cond_32

    const/16 v3, 0x22

    if-eq v1, v3, :cond_25

    .line 661
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1f
    move v0, v2

    goto :goto_4

    :catchall_21
    move-exception p1

    goto :goto_50

    :catch_23
    move-exception p1

    goto :goto_4b

    .line 656
    :cond_25
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->nickName_:Ljava/lang/Object;

    .line 657
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    goto :goto_4

    .line 651
    :cond_32
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->msgSubType_:I

    .line 652
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    goto :goto_4

    .line 646
    :cond_3f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->peerId_:J

    .line 647
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I
    :try_end_4a
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_4a} :catch_23
    .catchall {:try_start_6 .. :try_end_4a} :catchall_21

    goto :goto_4

    .line 669
    :goto_4b
    :try_start_4b
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_21

    .line 671
    :goto_50
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 672
    throw p1

    .line 671
    :cond_54
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;
    .registers 3

    .line 598
    instance-of v0, p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    if-eqz v0, :cond_b

    .line 599
    check-cast p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;

    move-result-object p0

    return-object p0

    .line 601
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;
    .registers 6

    .line 607
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 608
    :cond_7
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->getPeerId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 609
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->getPeerId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->setPeerId(J)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;

    .line 611
    :cond_18
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->getMsgSubType()I

    move-result v0

    if-eqz v0, :cond_25

    .line 612
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->getMsgSubType()I

    move-result v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->setMsgSubType(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;

    .line 614
    :cond_25
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 615
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->-$$Nest$fgetnickName_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->nickName_:Ljava/lang/Object;

    .line 616
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    .line 617
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 619
    :cond_3e
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 620
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMsgSubType(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;
    .registers 2

    .line 725
    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->msgSubType_:I

    .line 726
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    .line 727
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setNickName(Ljava/lang/String;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;
    .registers 2

    .line 782
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 783
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->nickName_:Ljava/lang/Object;

    .line 784
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    .line 785
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setNickNameBytes(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;
    .registers 2

    .line 805
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 806
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->access$000(Lcom/google/protobuf/ByteString;)V

    .line 807
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->nickName_:Ljava/lang/Object;

    .line 808
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    .line 809
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setPeerId(J)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;
    .registers 3

    .line 693
    iput-wide p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->peerId_:J

    .line 694
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo$Builder;->bitField0_:I

    .line 695
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
