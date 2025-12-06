.class public final Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "QQMessageOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupRecallOperationInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;,
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;,
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$InfoOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

.field public static final INFO_FIELD_NUMBER:I = 0xb

.field public static final MSGSEQ_FIELD_NUMBER:I = 0x25

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final PEERID_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

.field private memoizedIsInitialized:B

.field private msgSeq_:I

.field private peerId_:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;I)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputinfo_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmsgSeq_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;I)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->msgSeq_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputpeerId_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->peerId_:J

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 5211
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    .line 5217
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x20

    const/4 v3, 0x1

    .line 5211
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 7214
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    invoke-direct {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    .line 7222
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$1;

    invoke-direct {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$1;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 5223
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const-wide/16 v0, 0x0

    .line 6614
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->peerId_:J

    const/4 v0, 0x0

    .line 6651
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->msgSeq_:I

    const/4 v0, -0x1

    .line 6661
    iput-byte v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->memoizedIsInitialized:B

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

    .line 5221
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const-wide/16 v0, 0x0

    .line 6614
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->peerId_:J

    const/4 p1, 0x0

    .line 6651
    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->msgSeq_:I

    const/4 p1, -0x1

    .line 6661
    iput-byte p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method public static synthetic access$1100()Z
    .registers 1

    .line 5205
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;
    .registers 1

    .line 7218
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 5228
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_GroupRecallOperationInfo_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;
    .registers 1

    .line 6829
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;
    .registers 2

    .line 6832
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;
    .registers 2

    .line 6801
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 6802
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;
    .registers 3

    .line 6809
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 6810
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;
    .registers 2

    .line 6768
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;
    .registers 3

    .line 6774
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;
    .registers 2

    .line 6815
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 6816
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;
    .registers 3

    .line 6822
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 6823
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;
    .registers 2

    .line 6788
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 6789
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;
    .registers 3

    .line 6795
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 6796
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;
    .registers 2

    .line 6757
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;
    .registers 3

    .line 6763
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;
    .registers 2

    .line 6778
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;
    .registers 3

    .line 6784
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

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

    .line 7244
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 6715
    :cond_4
    instance-of v1, p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    if-nez v1, :cond_d

    .line 6716
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 6718
    :cond_d
    check-cast p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    .line 6720
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getPeerId()J

    move-result-wide v1

    .line 6721
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getPeerId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    return v2

    .line 6722
    :cond_1d
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->hasInfo()Z

    move-result v1

    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->hasInfo()Z

    move-result v3

    if-eq v1, v3, :cond_28

    return v2

    .line 6723
    :cond_28
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->hasInfo()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 6724
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object v1

    .line 6725
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object v3

    invoke-virtual {v1, v3}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v2

    .line 6727
    :cond_3d
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getMsgSeq()I

    move-result v1

    .line 6728
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getMsgSeq()I

    move-result v3

    if-eq v1, v3, :cond_48

    return v2

    .line 6729
    :cond_48
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_57

    return v2

    :cond_57
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 5205
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 5205
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;
    .registers 1

    .line 7254
    sget-object p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    return-object p0
.end method

.method public getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 1

    .line 6640
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getInfoOrBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$InfoOrBuilder;
    .registers 1

    .line 6647
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getMsgSeq()I
    .registers 1

    .line 6658
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->msgSeq_:I

    return p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation

    .line 7249
    sget-object p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getPeerId()J
    .registers 3

    .line 6621
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->peerId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 6689
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 6693
    :cond_6
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->peerId_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_14

    const/4 v2, 0x4

    .line 6695
    invoke-static {v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 6697
    :goto_15
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_26

    const/16 v1, 0xb

    .line 6699
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6701
    :cond_26
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->msgSeq_:I

    if-eqz v1, :cond_31

    const/16 v2, 0x25

    .line 6703
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6705
    :cond_31
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 6706
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public hasInfo()Z
    .registers 2

    .line 6632
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 5

    .line 6735
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 6739
    :cond_5
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 6742
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getPeerId()J

    move-result-wide v2

    .line 6741
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    .line 6743
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->hasInfo()Z

    move-result v0

    if-eqz v0, :cond_34

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0xb

    mul-int/lit8 v1, v1, 0x35

    .line 6745
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_34
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x25

    mul-int/lit8 v1, v1, 0x35

    .line 6748
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getMsgSeq()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 6749
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 6750
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 5234
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_GroupRecallOperationInfo_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;

    .line 5235
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 6664
    iget-byte v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 6668
    :cond_a
    iput-byte v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 5205
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 5205
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 5205
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;
    .registers 1

    .line 6827
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->newBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;
    .registers 3

    .line 6843
    new-instance p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 5205
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 5205
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;
    .registers 3

    .line 6836
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 6837
    new-instance p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;

    invoke-direct {p0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;-><init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    return-object p0

    :cond_b
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;

    invoke-direct {v0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;-><init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6

    .line 6675
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->peerId_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    const/4 v2, 0x4

    .line 6676
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6678
    :cond_c
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b

    const/16 v0, 0xb

    .line 6679
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6681
    :cond_1b
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->msgSeq_:I

    if-eqz v0, :cond_24

    const/16 v1, 0x25

    .line 6682
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6684
    :cond_24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
