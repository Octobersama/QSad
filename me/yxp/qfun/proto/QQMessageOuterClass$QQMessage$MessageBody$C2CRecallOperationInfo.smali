.class public final Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "QQMessageOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "C2CRecallOperationInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;,
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;,
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$InfoOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

.field public static final INFO_FIELD_NUMBER:I = 0x1

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

.field private info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

.field private memoizedIsInitialized:B


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;I)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputinfo_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 7287
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    .line 7293
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x20

    const/4 v3, 0x1

    .line 7287
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 8660
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    invoke-direct {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    .line 8668
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$1;

    invoke-direct {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$1;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 7299
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 8218
    iput-byte v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->memoizedIsInitialized:B

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

    .line 7297
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 p1, -0x1

    .line 8218
    iput-byte p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method public static synthetic access$1400()Z
    .registers 1

    .line 7281
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
    .registers 1

    .line 8664
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 7304
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_C2CRecallOperationInfo_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;
    .registers 1

    .line 8363
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;
    .registers 2

    .line 8366
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
    .registers 2

    .line 8335
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8336
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
    .registers 3

    .line 8343
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8344
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
    .registers 2

    .line 8302
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
    .registers 3

    .line 8308
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
    .registers 2

    .line 8349
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8350
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
    .registers 3

    .line 8356
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8357
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
    .registers 2

    .line 8322
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8323
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
    .registers 3

    .line 8329
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8330
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
    .registers 2

    .line 8291
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
    .registers 3

    .line 8297
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
    .registers 2

    .line 8312
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
    .registers 3

    .line 8318
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

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

    .line 8690
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 8258
    :cond_4
    instance-of v1, p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    if-nez v1, :cond_d

    .line 8259
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 8261
    :cond_d
    check-cast p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    .line 8263
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->hasInfo()Z

    move-result v1

    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->hasInfo()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 8264
    :cond_1b
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->hasInfo()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 8265
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object v1

    .line 8266
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 8268
    :cond_30
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    return v3

    :cond_3f
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 7281
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 7281
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;
    .registers 1

    .line 8700
    sget-object p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    return-object p0
.end method

.method public getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;
    .registers 1

    .line 8208
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getInfoOrBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$InfoOrBuilder;
    .registers 1

    .line 8215
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->info_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

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

    .line 8695
    sget-object p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 3

    .line 8240
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 8244
    :cond_6
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 8246
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 8248
    :goto_16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 8249
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public hasInfo()Z
    .registers 2

    .line 8200
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->bitField0_:I

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

    .line 8274
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 8278
    :cond_5
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 8279
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->hasInfo()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 8281
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_25
    mul-int/lit8 v1, v1, 0x1d

    .line 8283
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 8284
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 7310
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_C2CRecallOperationInfo_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    .line 7311
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 8221
    iget-byte v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 8225
    :cond_a
    iput-byte v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 7281
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 7281
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 7281
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;
    .registers 1

    .line 8361
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->newBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;
    .registers 3

    .line 8377
    new-instance p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 7281
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 7281
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;
    .registers 3

    .line 8370
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 8371
    new-instance p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    invoke-direct {p0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;-><init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    return-object p0

    :cond_b
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    invoke-direct {v0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;-><init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4

    .line 8232
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 8233
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 8235
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
