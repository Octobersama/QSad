.class public final Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
.super Lcom/google/protobuf/GeneratedMessage;
.source "InfoSyncPushOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHeadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncInfoHead"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final SYNCTIME_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private syncTime_:J


# direct methods
.method public static bridge synthetic -$$Nest$fputsyncTime_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->syncTime_:J

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 2248
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    .line 2254
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x20

    const/4 v3, 0x1

    .line 2248
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 2619
    new-instance v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    invoke-direct {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    .line 2627
    new-instance v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$1;

    invoke-direct {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$1;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 2260
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const-wide/16 v0, 0x0

    .line 2277
    iput-wide v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->syncTime_:J

    const/4 v0, -0x1

    .line 2287
    iput-byte v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder;",
            ")V"
        }
    .end annotation

    .line 2258
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const-wide/16 v0, 0x0

    .line 2277
    iput-wide v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->syncTime_:J

    const/4 p1, -0x1

    .line 2287
    iput-byte p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method public static getDefaultInstance()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
    .registers 1

    .line 2623
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 2265
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_InfoSyncPush_SyncRecallOperateInfo_SyncInfoHead_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;
    .registers 1

    .line 2428
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;
    .registers 2

    .line 2431
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->mergeFrom(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
    .registers 2

    .line 2400
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->PARSER:Lcom/google/protobuf/Parser;

    .line 2401
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
    .registers 3

    .line 2408
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->PARSER:Lcom/google/protobuf/Parser;

    .line 2409
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
    .registers 2

    .line 2367
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
    .registers 3

    .line 2373
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
    .registers 2

    .line 2414
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->PARSER:Lcom/google/protobuf/Parser;

    .line 2415
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
    .registers 3

    .line 2421
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->PARSER:Lcom/google/protobuf/Parser;

    .line 2422
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
    .registers 2

    .line 2387
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->PARSER:Lcom/google/protobuf/Parser;

    .line 2388
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
    .registers 3

    .line 2394
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->PARSER:Lcom/google/protobuf/Parser;

    .line 2395
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
    .registers 2

    .line 2356
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
    .registers 3

    .line 2362
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    return-object p0
.end method

.method public static parseFrom([B)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
    .registers 2

    .line 2377
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
    .registers 3

    .line 2383
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation

    .line 2649
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 2327
    :cond_4
    instance-of v1, p1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    if-nez v1, :cond_d

    .line 2328
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2330
    :cond_d
    check-cast p1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    .line 2332
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->getSyncTime()J

    move-result-wide v1

    .line 2333
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->getSyncTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    return v2

    .line 2334
    :cond_1d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    return v2

    :cond_2c
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 2242
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 2242
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;
    .registers 1

    .line 2659
    sget-object p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    return-object p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation

    .line 2654
    sget-object p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 2309
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 2313
    :cond_6
    iget-wide v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->syncTime_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    .line 2315
    invoke-static {v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 2317
    :goto_15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2318
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSyncTime()J
    .registers 3

    .line 2284
    iget-wide v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->syncTime_:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .line 2340
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 2344
    :cond_5
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 2347
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->getSyncTime()J

    move-result-wide v2

    .line 2346
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 2348
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2349
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 2271
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_InfoSyncPush_SyncRecallOperateInfo_SyncInfoHead_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    const-class v1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    .line 2272
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 2290
    iget-byte v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 2294
    :cond_a
    iput-byte v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 2242
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->newBuilderForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 2242
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 2242
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->newBuilderForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;
    .registers 1

    .line 2426
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->newBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;
    .registers 3

    .line 2442
    new-instance p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 2242
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 2242
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;
    .registers 3

    .line 2435
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 2436
    new-instance p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    invoke-direct {p0, v1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;-><init>(Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V

    return-object p0

    :cond_b
    new-instance v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    invoke-direct {v0, v1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;-><init>(Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;->mergeFrom(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6

    .line 2301
    iget-wide v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoHead;->syncTime_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    .line 2302
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2304
    :cond_c
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
