.class public final Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
.super Lcom/google/protobuf/GeneratedMessage;
.source "QQMessageOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/QQMessageOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QQMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;,
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;,
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;,
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;,
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBodyOrBuilder;,
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfoOrBuilder;,
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHeadOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

.field public static final MESSAGEBODY_FIELD_NUMBER:I = 0x3

.field public static final MESSAGECONTENTINFO_FIELD_NUMBER:I = 0x2

.field public static final MESSAGEHEAD_FIELD_NUMBER:I = 0x1

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

.field private messageBody_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

.field private messageContentInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

.field private messageHead_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)I
    .registers 1

    .line 0
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;I)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmessageBody_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->messageBody_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmessageContentInfo_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->messageContentInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmessageHead_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->messageHead_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 87
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x20

    const/4 v3, 0x1

    .line 87
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 10124
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    invoke-direct {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    .line 10132
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$1;

    invoke-direct {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$1;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 99
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 9364
    iput-byte v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->memoizedIsInitialized:B

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

    .line 97
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 p1, -0x1

    .line 9364
    iput-byte p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method public static synthetic access$1600()Z
    .registers 1

    .line 81
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 1

    .line 10128
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 104
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 1

    .line 9541
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 2

    .line 9544
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 2

    .line 9513
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 9514
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 3

    .line 9521
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 9522
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 2

    .line 9480
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 3

    .line 9486
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 2

    .line 9527
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 9528
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 3

    .line 9534
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 9535
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 2

    .line 9500
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 9501
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 3

    .line 9507
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 9508
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 2

    .line 9469
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 3

    .line 9475
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 2

    .line 9490
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 3

    .line 9496
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

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

    .line 10154
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 9418
    :cond_4
    instance-of v1, p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    if-nez v1, :cond_d

    .line 9419
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 9421
    :cond_d
    check-cast p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    .line 9423
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->hasMessageHead()Z

    move-result v1

    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->hasMessageHead()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 9424
    :cond_1b
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->hasMessageHead()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 9425
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageHead()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object v1

    .line 9426
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageHead()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 9428
    :cond_30
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->hasMessageContentInfo()Z

    move-result v1

    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->hasMessageContentInfo()Z

    move-result v2

    if-eq v1, v2, :cond_3b

    return v3

    .line 9429
    :cond_3b
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->hasMessageContentInfo()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 9430
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageContentInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object v1

    .line 9431
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageContentInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    return v3

    .line 9433
    :cond_50
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->hasMessageBody()Z

    move-result v1

    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->hasMessageBody()Z

    move-result v2

    if-eq v1, v2, :cond_5b

    return v3

    .line 9434
    :cond_5b
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->hasMessageBody()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 9435
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageBody()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    move-result-object v1

    .line 9436
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageBody()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    return v3

    .line 9438
    :cond_70
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7f

    return v3

    :cond_7f
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 81
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 81
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 1

    .line 10164
    sget-object p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-object p0
.end method

.method public getMessageBody()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;
    .registers 1

    .line 9354
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->messageBody_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getMessageBodyOrBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBodyOrBuilder;
    .registers 1

    .line 9361
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->messageBody_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getMessageContentInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;
    .registers 1

    .line 9328
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->messageContentInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getMessageContentInfoOrBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfoOrBuilder;
    .registers 1

    .line 9335
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->messageContentInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getMessageHead()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 1

    .line 9302
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->messageHead_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getMessageHeadOrBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHeadOrBuilder;
    .registers 1

    .line 9309
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->messageHead_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object p0

    :cond_8
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

    .line 10159
    sget-object p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 9392
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 9396
    :cond_6
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 9398
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageHead()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 9400
    :goto_16
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_25

    .line 9402
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageContentInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9404
    :cond_25
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_35

    const/4 v1, 0x3

    .line 9406
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageBody()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9408
    :cond_35
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 9409
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public hasMessageBody()Z
    .registers 1

    .line 9346
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasMessageContentInfo()Z
    .registers 1

    .line 9320
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasMessageHead()Z
    .registers 2

    .line 9294
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->bitField0_:I

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

    .line 9444
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 9448
    :cond_5
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 9449
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->hasMessageHead()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 9451
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageHead()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 9453
    :cond_25
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->hasMessageContentInfo()Z

    move-result v0

    if-eqz v0, :cond_3a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 9455
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageContentInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 9457
    :cond_3a
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->hasMessageBody()Z

    move-result v0

    if-eqz v0, :cond_4f

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 9459
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageBody()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4f
    mul-int/lit8 v1, v1, 0x1d

    .line 9461
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 9462
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 110
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    .line 111
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 9367
    iget-byte v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 9371
    :cond_a
    iput-byte v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 81
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 81
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 1

    .line 9539
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->newBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 3

    .line 9555
    new-instance p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 81
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 81
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 3

    .line 9548
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 9549
    new-instance p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    invoke-direct {p0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;-><init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    return-object p0

    :cond_b
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    invoke-direct {v0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;-><init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4

    .line 9378
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 9379
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageHead()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9381
    :cond_d
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    .line 9382
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageContentInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9384
    :cond_1a
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_28

    const/4 v0, 0x3

    .line 9385
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageBody()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9387
    :cond_28
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
