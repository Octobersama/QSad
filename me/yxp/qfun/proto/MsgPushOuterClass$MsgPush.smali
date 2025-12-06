.class public final Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MsgPushOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPushOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/MsgPushOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MsgPush"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final QQMESSAGE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private qqMessage_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;)I
    .registers 1

    .line 0
    iget p0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;I)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputqqMessage_(Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->qqMessage_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 57
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    .line 63
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x20

    const/4 v3, 0x1

    .line 57
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 554
    new-instance v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    invoke-direct {v0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    .line 562
    new-instance v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$1;

    invoke-direct {v0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$1;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 112
    iput-byte v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->memoizedIsInitialized:B

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

    .line 67
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 p1, -0x1

    .line 112
    iput-byte p1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/MsgPushOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method public static synthetic access$000()Z
    .registers 1

    .line 51
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
    .registers 1

    .line 558
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 74
    invoke-static {}, Lme/yxp/qfun/proto/MsgPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_MsgPush_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;
    .registers 1

    .line 257
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->toBuilder()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;
    .registers 2

    .line 260
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->toBuilder()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->mergeFrom(Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
    .registers 2

    .line 229
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->PARSER:Lcom/google/protobuf/Parser;

    .line 230
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
    .registers 3

    .line 237
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->PARSER:Lcom/google/protobuf/Parser;

    .line 238
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
    .registers 2

    .line 196
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
    .registers 3

    .line 202
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
    .registers 2

    .line 243
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->PARSER:Lcom/google/protobuf/Parser;

    .line 244
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
    .registers 3

    .line 250
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->PARSER:Lcom/google/protobuf/Parser;

    .line 251
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
    .registers 2

    .line 216
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->PARSER:Lcom/google/protobuf/Parser;

    .line 217
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
    .registers 3

    .line 223
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->PARSER:Lcom/google/protobuf/Parser;

    .line 224
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
    .registers 2

    .line 185
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
    .registers 3

    .line 191
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    return-object p0
.end method

.method public static parseFrom([B)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
    .registers 2

    .line 206
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
    .registers 3

    .line 212
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

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

    .line 584
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 152
    :cond_4
    instance-of v1, p1, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    if-nez v1, :cond_d

    .line 153
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 155
    :cond_d
    check-cast p1, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    .line 157
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->hasQqMessage()Z

    move-result v1

    invoke-virtual {p1}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->hasQqMessage()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 158
    :cond_1b
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->hasQqMessage()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 159
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->getQqMessage()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object v1

    .line 160
    invoke-virtual {p1}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->getQqMessage()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 162
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

    .line 51
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->getDefaultInstanceForType()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 51
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->getDefaultInstanceForType()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;
    .registers 1

    .line 594
    sget-object p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

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

    .line 589
    sget-object p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getQqMessage()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 1

    .line 102
    iget-object p0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->qqMessage_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getQqMessageOrBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessageOrBuilder;
    .registers 1

    .line 109
    iget-object p0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->qqMessage_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getSerializedSize()I
    .registers 3

    .line 134
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 138
    :cond_6
    iget v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 140
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->getQqMessage()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 142
    :goto_16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public hasQqMessage()Z
    .registers 2

    .line 94
    iget p0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->bitField0_:I

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

    .line 168
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 172
    :cond_5
    invoke-static {}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    .line 173
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->hasQqMessage()Z

    move-result v0

    if-eqz v0, :cond_25

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 175
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->getQqMessage()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_25
    mul-int/lit8 v1, v1, 0x1d

    .line 177
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 178
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 80
    invoke-static {}, Lme/yxp/qfun/proto/MsgPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_MsgPush_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    const-class v1, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 115
    iget-byte v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 119
    :cond_a
    iput-byte v1, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 51
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->newBuilderForType()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 51
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->newBuilderForType()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;
    .registers 1

    .line 255
    invoke-static {}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->newBuilder()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;
    .registers 3

    .line 271
    new-instance p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/MsgPushOuterClass-IA;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 51
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->toBuilder()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 51
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->toBuilder()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;
    .registers 3

    .line 264
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 265
    new-instance p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    invoke-direct {p0, v1}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;-><init>(Lme/yxp/qfun/proto/MsgPushOuterClass-IA;)V

    return-object p0

    :cond_b
    new-instance v0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    invoke-direct {v0, v1}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;-><init>(Lme/yxp/qfun/proto/MsgPushOuterClass-IA;)V

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;->mergeFrom(Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4

    .line 126
    iget v0, p0, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 127
    invoke-virtual {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->getQqMessage()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 129
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
