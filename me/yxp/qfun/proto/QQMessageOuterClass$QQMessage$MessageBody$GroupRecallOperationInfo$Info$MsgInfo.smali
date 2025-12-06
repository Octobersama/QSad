.class public final Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "QQMessageOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MsgInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

.field public static final MSGSEQ_FIELD_NUMBER:I = 0x1

.field public static final MSGTIME_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final SENDERUID_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private msgSeq_:I

.field private msgTime_:J

.field private volatile senderUid_:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$fgetsenderUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->senderUid_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmsgSeq_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;I)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->msgSeq_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmsgTime_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->msgTime_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputsenderUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;Ljava/lang/Object;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->senderUid_:Ljava/lang/Object;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 5345
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    .line 5351
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x20

    const/4 v3, 0x1

    .line 5345
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 5918
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    invoke-direct {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    .line 5926
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$1;

    invoke-direct {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$1;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 5357
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, 0x0

    .line 5375
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->msgSeq_:I

    const-wide/16 v0, 0x0

    .line 5386
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->msgTime_:J

    .line 5397
    const-string v0, ""

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->senderUid_:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 5435
    iput-byte v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->memoizedIsInitialized:B

    .line 5358
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->senderUid_:Ljava/lang/Object;

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

    .line 5355
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 p1, 0x0

    .line 5375
    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->msgSeq_:I

    const-wide/16 v0, 0x0

    .line 5386
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->msgTime_:J

    .line 5397
    const-string p1, ""

    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->senderUid_:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 5435
    iput-byte p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/google/protobuf/ByteString;)V
    .registers 1

    .line 5339
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;
    .registers 1

    .line 5922
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 5363
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_GroupRecallOperationInfo_Info_MsgInfo_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;
    .registers 1

    .line 5597
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;
    .registers 2

    .line 5600
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;
    .registers 2

    .line 5569
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 5570
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;
    .registers 3

    .line 5577
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 5578
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;
    .registers 2

    .line 5536
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;
    .registers 3

    .line 5542
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;
    .registers 2

    .line 5583
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 5584
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;
    .registers 3

    .line 5590
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 5591
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;
    .registers 2

    .line 5556
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 5557
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;
    .registers 3

    .line 5563
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 5564
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;
    .registers 2

    .line 5525
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;
    .registers 3

    .line 5531
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;
    .registers 2

    .line 5546
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;
    .registers 3

    .line 5552
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

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

    .line 5948
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 5488
    :cond_4
    instance-of v1, p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    if-nez v1, :cond_d

    .line 5489
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 5491
    :cond_d
    check-cast p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    .line 5493
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getMsgSeq()I

    move-result v1

    .line 5494
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getMsgSeq()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 5495
    :cond_1b
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getMsgTime()J

    move-result-wide v1

    .line 5496
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getMsgTime()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_28

    return v3

    .line 5497
    :cond_28
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getSenderUid()Ljava/lang/String;

    move-result-object v1

    .line 5498
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getSenderUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v3

    .line 5499
    :cond_37
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    return v3

    :cond_46
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 5339
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 5339
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;
    .registers 1

    .line 5958
    sget-object p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    return-object p0
.end method

.method public getMsgSeq()I
    .registers 1

    .line 5382
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->msgSeq_:I

    return p0
.end method

.method public getMsgTime()J
    .registers 3

    .line 5393
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->msgTime_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation

    .line 5953
    sget-object p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSenderUid()Ljava/lang/String;
    .registers 3

    .line 5405
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->senderUid_:Ljava/lang/Object;

    .line 5406
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 5407
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5409
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5411
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5412
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->senderUid_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSenderUidBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 5423
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->senderUid_:Ljava/lang/Object;

    .line 5424
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 5425
    check-cast v0, Ljava/lang/String;

    .line 5426
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5428
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->senderUid_:Ljava/lang/Object;

    return-object v0

    .line 5431
    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 5463
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 5467
    :cond_6
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->msgSeq_:I

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 5469
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 5471
    :goto_11
    iget-wide v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->msgTime_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x2

    .line 5473
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5475
    :cond_1f
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->senderUid_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessage;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    const/4 v1, 0x6

    .line 5476
    iget-object v2, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->senderUid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessage;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5478
    :cond_2f
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5479
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 5505
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 5509
    :cond_5
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 5511
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getMsgSeq()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 5514
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getMsgTime()J

    move-result-wide v2

    .line 5513
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 5516
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getSenderUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 5517
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 5518
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 5369
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_GroupRecallOperationInfo_Info_MsgInfo_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;

    .line 5370
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 5438
    iget-byte v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 5442
    :cond_a
    iput-byte v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 5339
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 5339
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 5339
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;
    .registers 1

    .line 5595
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->newBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;
    .registers 3

    .line 5611
    new-instance p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 5339
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 5339
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;
    .registers 3

    .line 5604
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 5605
    new-instance p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;

    invoke-direct {p0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;-><init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    return-object p0

    :cond_b
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;

    invoke-direct {v0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;-><init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6

    .line 5449
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->msgSeq_:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 5450
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5452
    :cond_8
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->msgTime_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_14

    const/4 v2, 0x2

    .line 5453
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5455
    :cond_14
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->senderUid_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessage;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x6

    .line 5456
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->senderUid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5458
    :cond_22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
