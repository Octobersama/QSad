.class public final Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "QQMessageOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder;",
        "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private msgSeq_:I

.field private msgSubType_:I

.field private msgTime_:J

.field private msgType_:I

.field private msgUid_:J

.field private subSeq_:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2160
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V
    .registers 2

    .line 2166
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;-><init>()V

    return-void
.end method

.method private buildPartial0(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;)V
    .registers 5

    .line 2211
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_b

    .line 2213
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgType_:I

    invoke-static {p1, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->-$$Nest$fputmsgType_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;I)V

    :cond_b
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_14

    .line 2216
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgSubType_:I

    invoke-static {p1, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->-$$Nest$fputmsgSubType_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;I)V

    :cond_14
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1d

    .line 2219
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->subSeq_:I

    invoke-static {p1, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->-$$Nest$fputsubSeq_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;I)V

    :cond_1d
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_26

    .line 2222
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgSeq_:I

    invoke-static {p1, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->-$$Nest$fputmsgSeq_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;I)V

    :cond_26
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2f

    .line 2225
    iget-wide v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgTime_:J

    invoke-static {p1, v1, v2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->-$$Nest$fputmsgTime_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;J)V

    :cond_2f
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_38

    .line 2228
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgUid_:J

    invoke-static {p1, v0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->-$$Nest$fputmsgUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;J)V

    :cond_38
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2148
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageContentInfo_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 2142
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 2142
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object p0

    return-object p0
.end method

.method public build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;
    .registers 2

    .line 2195
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object p0

    .line 2196
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 2197
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 2142
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 2142
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;
    .registers 3

    .line 2204
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    .line 2205
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->buildPartial0(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;)V

    .line 2206
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 2142
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 1

    .line 2142
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 2142
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 2142
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
    .registers 3

    .line 2171
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 2172
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    .line 2173
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgType_:I

    .line 2174
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgSubType_:I

    .line 2175
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->subSeq_:I

    .line 2176
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgSeq_:I

    const-wide/16 v0, 0x0

    .line 2177
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgTime_:J

    .line 2178
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgUid_:J

    return-object p0
.end method

.method public clearMsgSeq()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
    .registers 2

    .line 2457
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2458
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgSeq_:I

    .line 2459
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMsgSubType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
    .registers 2

    .line 2393
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2394
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgSubType_:I

    .line 2395
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMsgTime()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
    .registers 3

    .line 2489
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 2490
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgTime_:J

    .line 2491
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMsgType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
    .registers 2

    .line 2361
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2362
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgType_:I

    .line 2363
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMsgUid()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
    .registers 3

    .line 2521
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 2522
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgUid_:J

    .line 2523
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSubSeq()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
    .registers 2

    .line 2425
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2426
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->subSeq_:I

    .line 2427
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 2142
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 2142
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;
    .registers 1

    .line 2190
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2185
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageContentInfo_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getMsgSeq()I
    .registers 1

    .line 2438
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgSeq_:I

    return p0
.end method

.method public getMsgSubType()I
    .registers 1

    .line 2374
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgSubType_:I

    return p0
.end method

.method public getMsgTime()J
    .registers 3

    .line 2470
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgTime_:J

    return-wide v0
.end method

.method public getMsgType()I
    .registers 1

    .line 2342
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgType_:I

    return p0
.end method

.method public getMsgUid()J
    .registers 3

    .line 2502
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgUid_:J

    return-wide v0
.end method

.method public getSubSeq()I
    .registers 1

    .line 2406
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->subSeq_:I

    return p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 2154
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageContentInfo_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    .line 2155
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

    .line 2142
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 2142
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 2142
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 2142
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 2142
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 2142
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
    .registers 9

    .line 2278
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_85

    .line 2283
    :try_start_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2b

    const/16 v3, 0x8

    if-eq v1, v3, :cond_70

    const/16 v4, 0x10

    if-eq v1, v4, :cond_63

    const/16 v5, 0x18

    if-eq v1, v5, :cond_56

    const/16 v5, 0x28

    if-eq v1, v5, :cond_4a

    const/16 v3, 0x30

    if-eq v1, v3, :cond_3e

    const/16 v3, 0x60

    if-eq v1, v3, :cond_31

    .line 2319
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2b
    move v0, v2

    goto :goto_4

    :catchall_2d
    move-exception p1

    goto :goto_81

    :catch_2f
    move-exception p1

    goto :goto_7c

    .line 2314
    :cond_31
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgUid_:J

    .line 2315
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    goto :goto_4

    .line 2309
    :cond_3e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgTime_:J

    .line 2310
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    or-int/2addr v1, v4

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    goto :goto_4

    .line 2304
    :cond_4a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgSeq_:I

    .line 2305
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    or-int/2addr v1, v3

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    goto :goto_4

    .line 2299
    :cond_56
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->subSeq_:I

    .line 2300
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    goto :goto_4

    .line 2294
    :cond_63
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgSubType_:I

    .line 2295
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    goto :goto_4

    .line 2289
    :cond_70
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgType_:I

    .line 2290
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I
    :try_end_7b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_7b} :catch_2f
    .catchall {:try_start_6 .. :try_end_7b} :catchall_2d

    goto :goto_4

    .line 2327
    :goto_7c
    :try_start_7c
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_2d

    .line 2329
    :goto_81
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 2330
    throw p1

    .line 2329
    :cond_85
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
    .registers 3

    .line 2234
    instance-of v0, p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    if-eqz v0, :cond_b

    .line 2235
    check-cast p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    move-result-object p0

    return-object p0

    .line 2237
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
    .registers 6

    .line 2243
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 2244
    :cond_7
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getMsgType()I

    move-result v0

    if-eqz v0, :cond_14

    .line 2245
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getMsgType()I

    move-result v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->setMsgType(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    .line 2247
    :cond_14
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getMsgSubType()I

    move-result v0

    if-eqz v0, :cond_21

    .line 2248
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getMsgSubType()I

    move-result v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->setMsgSubType(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    .line 2250
    :cond_21
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getSubSeq()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 2251
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getSubSeq()I

    move-result v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->setSubSeq(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    .line 2253
    :cond_2e
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getMsgSeq()I

    move-result v0

    if-eqz v0, :cond_3b

    .line 2254
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getMsgSeq()I

    move-result v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->setMsgSeq(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    .line 2256
    :cond_3b
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getMsgTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4c

    .line 2257
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getMsgTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->setMsgTime(J)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    .line 2259
    :cond_4c
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getMsgUid()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5b

    .line 2260
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getMsgUid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->setMsgUid(J)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    .line 2262
    :cond_5b
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2263
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMsgSeq(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
    .registers 2

    .line 2447
    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgSeq_:I

    .line 2448
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    .line 2449
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMsgSubType(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
    .registers 2

    .line 2383
    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgSubType_:I

    .line 2384
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    .line 2385
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMsgTime(J)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
    .registers 3

    .line 2479
    iput-wide p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgTime_:J

    .line 2480
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    .line 2481
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMsgType(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
    .registers 2

    .line 2351
    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgType_:I

    .line 2352
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    .line 2353
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMsgUid(J)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
    .registers 3

    .line 2511
    iput-wide p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->msgUid_:J

    .line 2512
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    .line 2513
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setSubSeq(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
    .registers 2

    .line 2415
    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->subSeq_:I

    .line 2416
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->bitField0_:I

    .line 2417
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
