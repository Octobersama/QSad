.class public final Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
.super Lcom/google/protobuf/GeneratedMessage;
.source "InfoSyncPushOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;,
        Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;,
        Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContentOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

.field public static final GROUPSYNCCONTENT_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private groupSyncContent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B


# direct methods
.method public static bridge synthetic -$$Nest$fgetgroupSyncContent_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->groupSyncContent_:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputgroupSyncContent_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;Ljava/util/List;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->groupSyncContent_:Ljava/util/List;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 209
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    .line 215
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x20

    const/4 v3, 0x1

    .line 209
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 2088
    new-instance v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    invoke-direct {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    .line 2096
    new-instance v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$1;

    invoke-direct {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$1;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 221
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 1428
    iput-byte v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->memoizedIsInitialized:B

    .line 222
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->groupSyncContent_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder;",
            ")V"
        }
    .end annotation

    .line 219
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 p1, -0x1

    .line 1428
    iput-byte p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method public static synthetic access$100()Z
    .registers 1

    .line 203
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 1

    .line 2092
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 227
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_InfoSyncPush_SyncContent_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 1

    .line 1570
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 2

    .line 1573
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->mergeFrom(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 2

    .line 1542
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->PARSER:Lcom/google/protobuf/Parser;

    .line 1543
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 3

    .line 1550
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->PARSER:Lcom/google/protobuf/Parser;

    .line 1551
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 2

    .line 1509
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 3

    .line 1515
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 2

    .line 1556
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->PARSER:Lcom/google/protobuf/Parser;

    .line 1557
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 3

    .line 1563
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->PARSER:Lcom/google/protobuf/Parser;

    .line 1564
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 2

    .line 1529
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->PARSER:Lcom/google/protobuf/Parser;

    .line 1530
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 3

    .line 1536
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->PARSER:Lcom/google/protobuf/Parser;

    .line 1537
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 2

    .line 1498
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 3

    .line 1504
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    return-object p0
.end method

.method public static parseFrom([B)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 2

    .line 1519
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 3

    .line 1525
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

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

    .line 2118
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1468
    :cond_4
    instance-of v1, p1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    if-nez v1, :cond_d

    .line 1469
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1471
    :cond_d
    check-cast p1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    .line 1473
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->getGroupSyncContentList()Ljava/util/List;

    move-result-object v1

    .line 1474
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->getGroupSyncContentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 1475
    :cond_1f
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    return v2

    :cond_2e
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 203
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 203
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 1

    .line 2128
    sget-object p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    return-object p0
.end method

.method public getGroupSyncContent(I)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 2

    .line 1413
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->groupSyncContent_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    return-object p0
.end method

.method public getGroupSyncContentCount()I
    .registers 1

    .line 1402
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->groupSyncContent_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getGroupSyncContentList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;",
            ">;"
        }
    .end annotation

    .line 1379
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->groupSyncContent_:Ljava/util/List;

    return-object p0
.end method

.method public getGroupSyncContentOrBuilder(I)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContentOrBuilder;
    .registers 2

    .line 1425
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->groupSyncContent_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContentOrBuilder;

    return-object p0
.end method

.method public getGroupSyncContentOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1391
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->groupSyncContent_:Ljava/util/List;

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

    .line 2123
    sget-object p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 1450
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    .line 1454
    :goto_8
    iget-object v2, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->groupSyncContent_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 1455
    iget-object v2, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->groupSyncContent_:Ljava/util/List;

    .line 1456
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1458
    :cond_21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 1459
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1481
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 1485
    :cond_5
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 1486
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->getGroupSyncContentCount()I

    move-result v0

    if-lez v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 1488
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->getGroupSyncContentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_25
    mul-int/lit8 v1, v1, 0x1d

    .line 1490
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1491
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 233
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_InfoSyncPush_SyncContent_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    const-class v1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    .line 234
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 1431
    iget-byte v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1435
    :cond_a
    iput-byte v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 203
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->newBuilderForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 203
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 203
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->newBuilderForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 1

    .line 1568
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->newBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 3

    .line 1584
    new-instance p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 203
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 203
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 3

    .line 1577
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1578
    new-instance p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    invoke-direct {p0, v1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;-><init>(Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V

    return-object p0

    :cond_b
    new-instance v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    invoke-direct {v0, v1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;-><init>(Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->mergeFrom(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5

    const/4 v0, 0x0

    .line 1442
    :goto_1
    iget-object v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->groupSyncContent_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1443
    iget-object v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->groupSyncContent_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1445
    :cond_18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
