.class public final Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "InfoSyncPushOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHeadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder;",
        "Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHeadOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private syncTime_:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2466
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V
    .registers 2

    .line 2472
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;-><init>()V

    return-void
.end method

.method private buildPartial0(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;)V
    .registers 4

    .line 2512
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    .line 2514
    iget-wide v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->syncTime_:J

    invoke-static {p1, v0, v1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->-$$Nest$fputsyncTime_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;J)V

    :cond_b
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2454
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_InfoSyncPush_SyncRecallOperateInfo_SyncInfoHead_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 2448
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 2448
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    move-result-object p0

    return-object p0
.end method

.method public build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
    .registers 2

    .line 2496
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->buildPartial()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    move-result-object p0

    .line 2497
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 2498
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 2448
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->buildPartial()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 2448
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->buildPartial()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
    .registers 3

    .line 2505
    new-instance v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V

    .line 2506
    iget v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->bitField0_:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->buildPartial0(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;)V

    .line 2507
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 2448
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->clear()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 1

    .line 2448
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->clear()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 2448
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->clear()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 2448
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->clear()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;
    .registers 3

    .line 2477
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 2478
    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 2479
    iput-wide v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->syncTime_:J

    return-object p0
.end method

.method public clearSyncTime()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;
    .registers 3

    .line 2607
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 2608
    iput-wide v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->syncTime_:J

    .line 2609
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 2448
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 2448
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
    .registers 1

    .line 2491
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->getDefaultInstance()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2486
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_InfoSyncPush_SyncRecallOperateInfo_SyncInfoHead_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getSyncTime()J
    .registers 3

    .line 2588
    iget-wide v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->syncTime_:J

    return-wide v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 2460
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_InfoSyncPush_SyncRecallOperateInfo_SyncInfoHead_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    const-class v1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    .line 2461
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

    .line 2448
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2448
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 2448
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 2448
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 2448
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 2448
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;
    .registers 8

    .line 2549
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_32

    .line 2554
    :try_start_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1d

    .line 2565
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_17
    move v0, v2

    goto :goto_4

    :catchall_19
    move-exception p1

    goto :goto_2e

    :catch_1b
    move-exception p1

    goto :goto_29

    .line 2560
    :cond_1d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->syncTime_:J

    .line 2561
    iget v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->bitField0_:I
    :try_end_28
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_28} :catch_1b
    .catchall {:try_start_6 .. :try_end_28} :catchall_19

    goto :goto_4

    .line 2573
    :goto_29
    :try_start_29
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_19

    .line 2575
    :goto_2e
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 2576
    throw p1

    .line 2575
    :cond_32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;
    .registers 3

    .line 2520
    instance-of v0, p1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    if-eqz v0, :cond_b

    .line 2521
    check-cast p1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->mergeFrom(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0

    .line 2523
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;
    .registers 6

    .line 2529
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->getDefaultInstance()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 2530
    :cond_7
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->getSyncTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 2531
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->getSyncTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->setSyncTime(J)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    .line 2533
    :cond_18
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2534
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setSyncTime(J)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;
    .registers 3

    .line 2597
    iput-wide p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->syncTime_:J

    .line 2598
    iget p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->bitField0_:I

    .line 2599
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
