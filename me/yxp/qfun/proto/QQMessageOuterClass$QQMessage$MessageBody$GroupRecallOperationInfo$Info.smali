.class public final Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
.super Lcom/google/protobuf/GeneratedMessage;
.source "QQMessageOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$InfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;,
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;,
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfoOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

.field public static final MSGINFO_FIELD_NUMBER:I = 0x3

.field public static final OPERATORUID_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private msgInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

.field private volatile operatorUid_:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;)I
    .registers 1

    .line 0
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetoperatorUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->operatorUid_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;I)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmsgInfo_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->msgInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputoperatorUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;Ljava/lang/Object;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->operatorUid_:Ljava/lang/Object;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 5279
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    .line 5285
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x20

    const/4 v3, 0x1

    .line 5279
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 6567
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    invoke-direct {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    .line 6575
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$1;

    invoke-direct {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$1;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 5291
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5965
    const-string v0, ""

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->operatorUid_:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 6029
    iput-byte v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->memoizedIsInitialized:B

    .line 5292
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->operatorUid_:Ljava/lang/Object;

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

    .line 5289
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 5965
    const-string p1, ""

    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->operatorUid_:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 6029
    iput-byte p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/google/protobuf/ByteString;)V
    .registers 1

    .line 5273
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$900()Z
    .registers 1

    .line 5273
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 1

    .line 6571
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 5297
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_GroupRecallOperationInfo_Info_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;
    .registers 1

    .line 6184
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;
    .registers 2

    .line 6187
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 2

    .line 6156
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->PARSER:Lcom/google/protobuf/Parser;

    .line 6157
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 3

    .line 6164
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->PARSER:Lcom/google/protobuf/Parser;

    .line 6165
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 2

    .line 6123
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 3

    .line 6129
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 2

    .line 6170
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->PARSER:Lcom/google/protobuf/Parser;

    .line 6171
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 3

    .line 6177
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->PARSER:Lcom/google/protobuf/Parser;

    .line 6178
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 2

    .line 6143
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->PARSER:Lcom/google/protobuf/Parser;

    .line 6144
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 3

    .line 6150
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->PARSER:Lcom/google/protobuf/Parser;

    .line 6151
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 2

    .line 6112
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 3

    .line 6118
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    return-object p0
.end method

.method public static parseFrom([B)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 2

    .line 6133
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 3

    .line 6139
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

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

    .line 6597
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 6075
    :cond_4
    instance-of v1, p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    if-nez v1, :cond_d

    .line 6076
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 6078
    :cond_d
    check-cast p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    .line 6080
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getOperatorUid()Ljava/lang/String;

    move-result-object v1

    .line 6081
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getOperatorUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 6082
    :cond_1f
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->hasMsgInfo()Z

    move-result v1

    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->hasMsgInfo()Z

    move-result v3

    if-eq v1, v3, :cond_2a

    return v2

    .line 6083
    :cond_2a
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->hasMsgInfo()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 6084
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getMsgInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object v1

    .line 6085
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getMsgInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    .line 6087
    :cond_3f
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    return v2

    :cond_4e
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 5273
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 5273
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;
    .registers 1

    .line 6607
    sget-object p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    return-object p0
.end method

.method public getMsgInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;
    .registers 1

    .line 6019
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->msgInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getMsgInfoOrBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfoOrBuilder;
    .registers 1

    .line 6026
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->msgInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getOperatorUid()Ljava/lang/String;
    .registers 3

    .line 5973
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->operatorUid_:Ljava/lang/Object;

    .line 5974
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 5975
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5977
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5979
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5980
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->operatorUid_:Ljava/lang/Object;

    return-object v0
.end method

.method public getOperatorUidBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 5991
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->operatorUid_:Ljava/lang/Object;

    .line 5992
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 5993
    check-cast v0, Ljava/lang/String;

    .line 5994
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5996
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->operatorUid_:Ljava/lang/Object;

    return-object v0

    .line 5999
    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation

    .line 6602
    sget-object p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 6054
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 6058
    :cond_6
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->operatorUid_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessage;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    .line 6059
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->operatorUid_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessage;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 6061
    :goto_17
    iget v2, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_26

    const/4 v1, 0x3

    .line 6063
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getMsgInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6065
    :cond_26
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 6066
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public hasMsgInfo()Z
    .registers 2

    .line 6011
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 6093
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 6097
    :cond_5
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 6099
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getOperatorUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 6100
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->hasMsgInfo()Z

    move-result v0

    if-eqz v0, :cond_34

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 6102
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getMsgInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_34
    mul-int/lit8 v1, v1, 0x1d

    .line 6104
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 6105
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 5303
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_GroupRecallOperationInfo_Info_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    .line 5304
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 6032
    iget-byte v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 6036
    :cond_a
    iput-byte v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 5273
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 5273
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 5273
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;
    .registers 1

    .line 6182
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->newBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;
    .registers 3

    .line 6198
    new-instance p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 5273
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 5273
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;
    .registers 3

    .line 6191
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 6192
    new-instance p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    invoke-direct {p0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;-><init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    return-object p0

    :cond_b
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    invoke-direct {v0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;-><init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4

    .line 6043
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->operatorUid_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessage;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 6044
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->operatorUid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessage;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 6046
    :cond_e
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->bitField0_:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    const/4 v0, 0x3

    .line 6047
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getMsgInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6049
    :cond_1b
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
