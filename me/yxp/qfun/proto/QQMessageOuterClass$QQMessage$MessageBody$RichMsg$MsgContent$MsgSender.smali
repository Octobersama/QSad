.class public final Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;
.super Lcom/google/protobuf/GeneratedMessage;
.source "QQMessageOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSenderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MsgSender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

.field public static final NICKNAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private volatile nickName_:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$fgetnickName_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->nickName_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputnickName_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;Ljava/lang/Object;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->nickName_:Ljava/lang/Object;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 3313
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    .line 3319
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x20

    const/4 v3, 0x1

    .line 3313
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 3753
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    invoke-direct {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    .line 3761
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$1;

    invoke-direct {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$1;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 3325
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3343
    const-string v0, ""

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->nickName_:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 3381
    iput-byte v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->memoizedIsInitialized:B

    .line 3326
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->nickName_:Ljava/lang/Object;

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

    .line 3323
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 3343
    const-string p1, ""

    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->nickName_:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 3381
    iput-byte p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/google/protobuf/ByteString;)V
    .registers 1

    .line 3307
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;
    .registers 1

    .line 3757
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 3331
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_RichMsg_MsgContent_MsgSender_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;
    .registers 1

    .line 3520
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;
    .registers 2

    .line 3523
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;
    .registers 2

    .line 3492
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->PARSER:Lcom/google/protobuf/Parser;

    .line 3493
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;
    .registers 3

    .line 3500
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->PARSER:Lcom/google/protobuf/Parser;

    .line 3501
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;
    .registers 2

    .line 3459
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;
    .registers 3

    .line 3465
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;
    .registers 2

    .line 3506
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->PARSER:Lcom/google/protobuf/Parser;

    .line 3507
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;
    .registers 3

    .line 3513
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->PARSER:Lcom/google/protobuf/Parser;

    .line 3514
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;
    .registers 2

    .line 3479
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->PARSER:Lcom/google/protobuf/Parser;

    .line 3480
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;
    .registers 3

    .line 3486
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->PARSER:Lcom/google/protobuf/Parser;

    .line 3487
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;
    .registers 2

    .line 3448
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;
    .registers 3

    .line 3454
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    return-object p0
.end method

.method public static parseFrom([B)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;
    .registers 2

    .line 3469
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;
    .registers 3

    .line 3475
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

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

    .line 3783
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 3420
    :cond_4
    instance-of v1, p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    if-nez v1, :cond_d

    .line 3421
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 3423
    :cond_d
    check-cast p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    .line 3425
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->getNickName()Ljava/lang/String;

    move-result-object v1

    .line 3426
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    return v2

    .line 3427
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

    .line 3307
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 3307
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;
    .registers 1

    .line 3793
    sget-object p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    return-object p0
.end method

.method public getNickName()Ljava/lang/String;
    .registers 3

    .line 3351
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->nickName_:Ljava/lang/Object;

    .line 3352
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3353
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3355
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3357
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3358
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->nickName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNickNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 3369
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->nickName_:Ljava/lang/Object;

    .line 3370
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3371
    check-cast v0, Ljava/lang/String;

    .line 3372
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3374
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->nickName_:Ljava/lang/Object;

    return-object v0

    .line 3377
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

    .line 3788
    sget-object p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 3

    .line 3403
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 3407
    :cond_6
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->nickName_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessage;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    .line 3408
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->nickName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/GeneratedMessage;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 3410
    :goto_17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3411
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 3433
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 3437
    :cond_5
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 3439
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1d

    .line 3440
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 3441
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 3337
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_RichMsg_MsgContent_MsgSender_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;

    .line 3338
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 3384
    iget-byte v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 3388
    :cond_a
    iput-byte v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 3307
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 3307
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 3307
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;
    .registers 1

    .line 3518
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->newBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;
    .registers 3

    .line 3534
    new-instance p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 3307
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 3307
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;
    .registers 3

    .line 3527
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 3528
    new-instance p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;

    invoke-direct {p0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;-><init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    return-object p0

    :cond_b
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;

    invoke-direct {v0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;-><init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4

    .line 3395
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->nickName_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessage;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 3396
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$MsgSender;->nickName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3398
    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
