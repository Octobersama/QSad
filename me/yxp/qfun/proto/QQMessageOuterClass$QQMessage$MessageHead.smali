.class public final Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
.super Lcom/google/protobuf/GeneratedMessage;
.source "QQMessageOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHeadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageHead"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;,
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;,
        Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfoOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final RECEIVERPEERID_FIELD_NUMBER:I = 0x5

.field public static final RECEIVERUID_FIELD_NUMBER:I = 0x6

.field public static final SENDERINFO_FIELD_NUMBER:I = 0x8

.field public static final SENDERPEERID_FIELD_NUMBER:I = 0x1

.field public static final SENDERUID_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private receiverPeerId_:J

.field private volatile receiverUid_:Ljava/lang/Object;

.field private senderInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

.field private senderPeerId_:J

.field private volatile senderUid_:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)I
    .registers 1

    .line 0
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetreceiverUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverUid_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsenderUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderUid_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;I)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputreceiverPeerId_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverPeerId_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputreceiverUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;Ljava/lang/Object;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverUid_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputsenderInfo_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputsenderPeerId_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderPeerId_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputsenderUid_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;Ljava/lang/Object;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderUid_:Ljava/lang/Object;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 179
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    .line 185
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x20

    const/4 v3, 0x1

    .line 179
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 1737
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    invoke-direct {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    .line 1745
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$1;

    invoke-direct {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$1;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 191
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const-wide/16 v0, 0x0

    .line 866
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderPeerId_:J

    .line 877
    const-string v2, ""

    iput-object v2, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderUid_:Ljava/lang/Object;

    .line 916
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverPeerId_:J

    .line 927
    iput-object v2, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverUid_:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 991
    iput-byte v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->memoizedIsInitialized:B

    .line 192
    iput-object v2, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderUid_:Ljava/lang/Object;

    .line 193
    iput-object v2, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverUid_:Ljava/lang/Object;

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

    .line 189
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const-wide/16 v0, 0x0

    .line 866
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderPeerId_:J

    .line 877
    const-string p1, ""

    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderUid_:Ljava/lang/Object;

    .line 916
    iput-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverPeerId_:J

    .line 927
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverUid_:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 991
    iput-byte p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method public static synthetic access$100()Z
    .registers 1

    .line 173
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$200(Lcom/google/protobuf/ByteString;)V
    .registers 1

    .line 173
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/protobuf/ByteString;)V
    .registers 1

    .line 173
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 1

    .line 1741
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 198
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageHead_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 1

    .line 1180
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 2

    .line 1183
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 2

    .line 1152
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->PARSER:Lcom/google/protobuf/Parser;

    .line 1153
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 3

    .line 1160
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->PARSER:Lcom/google/protobuf/Parser;

    .line 1161
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 2

    .line 1119
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 3

    .line 1125
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 2

    .line 1166
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->PARSER:Lcom/google/protobuf/Parser;

    .line 1167
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 3

    .line 1173
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->PARSER:Lcom/google/protobuf/Parser;

    .line 1174
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 2

    .line 1139
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->PARSER:Lcom/google/protobuf/Parser;

    .line 1140
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 3

    .line 1146
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->PARSER:Lcom/google/protobuf/Parser;

    .line 1147
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 2

    .line 1108
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 3

    .line 1114
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    return-object p0
.end method

.method public static parseFrom([B)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 2

    .line 1129
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 3

    .line 1135
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

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

    .line 1767
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1057
    :cond_4
    instance-of v1, p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    if-nez v1, :cond_d

    .line 1058
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1060
    :cond_d
    check-cast p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    .line 1062
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getSenderPeerId()J

    move-result-wide v1

    .line 1063
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getSenderPeerId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    return v2

    .line 1064
    :cond_1d
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getSenderUid()Ljava/lang/String;

    move-result-object v1

    .line 1065
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getSenderUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    .line 1066
    :cond_2c
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getReceiverPeerId()J

    move-result-wide v3

    .line 1067
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getReceiverPeerId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_39

    return v2

    .line 1068
    :cond_39
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getReceiverUid()Ljava/lang/String;

    move-result-object v1

    .line 1069
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getReceiverUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    return v2

    .line 1070
    :cond_48
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->hasSenderInfo()Z

    move-result v1

    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->hasSenderInfo()Z

    move-result v3

    if-eq v1, v3, :cond_53

    return v2

    .line 1071
    :cond_53
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->hasSenderInfo()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1072
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getSenderInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object v1

    .line 1073
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getSenderInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    return v2

    .line 1075
    :cond_68
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_77

    return v2

    :cond_77
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 173
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 173
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 1

    .line 1777
    sget-object p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

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

    .line 1772
    sget-object p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getReceiverPeerId()J
    .registers 3

    .line 923
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverPeerId_:J

    return-wide v0
.end method

.method public getReceiverUid()Ljava/lang/String;
    .registers 3

    .line 935
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverUid_:Ljava/lang/Object;

    .line 936
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 937
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 939
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 941
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 942
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverUid_:Ljava/lang/Object;

    return-object v0
.end method

.method public getReceiverUidBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 953
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverUid_:Ljava/lang/Object;

    .line 954
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 955
    check-cast v0, Ljava/lang/String;

    .line 956
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 958
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverUid_:Ljava/lang/Object;

    return-object v0

    .line 961
    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSenderInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;
    .registers 1

    .line 981
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getSenderInfoOrBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfoOrBuilder;
    .registers 1

    .line 988
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getSenderPeerId()J
    .registers 3

    .line 873
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderPeerId_:J

    return-wide v0
.end method

.method public getSenderUid()Ljava/lang/String;
    .registers 3

    .line 885
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderUid_:Ljava/lang/Object;

    .line 886
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 887
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 889
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 891
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 892
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderUid_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSenderUidBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 903
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderUid_:Ljava/lang/Object;

    .line 904
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 905
    check-cast v0, Ljava/lang/String;

    .line 906
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 908
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderUid_:Ljava/lang/Object;

    return-object v0

    .line 911
    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .line 1025
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 1029
    :cond_6
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderPeerId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_14

    .line 1031
    invoke-static {v5, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1033
    :goto_15
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderUid_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessage;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const/4 v1, 0x2

    .line 1034
    iget-object v4, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderUid_:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/protobuf/GeneratedMessage;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1036
    :cond_25
    iget-wide v6, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverPeerId_:J

    cmp-long v1, v6, v2

    if-eqz v1, :cond_31

    const/4 v1, 0x5

    .line 1038
    invoke-static {v1, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1040
    :cond_31
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverUid_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessage;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    const/4 v1, 0x6

    .line 1041
    iget-object v2, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverUid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessage;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1043
    :cond_41
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->bitField0_:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_51

    const/16 v1, 0x8

    .line 1045
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getSenderInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1047
    :cond_51
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1048
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public hasSenderInfo()Z
    .registers 2

    .line 973
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->bitField0_:I

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

    .line 1081
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 1085
    :cond_5
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    .line 1088
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getSenderPeerId()J

    move-result-wide v2

    .line 1087
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    .line 1090
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getSenderUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 1093
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getReceiverPeerId()J

    move-result-wide v2

    .line 1092
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 1095
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getReceiverUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1096
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->hasSenderInfo()Z

    move-result v0

    if-eqz v0, :cond_61

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 1098
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getSenderInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_61
    mul-int/lit8 v1, v1, 0x1d

    .line 1100
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 1101
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 204
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageHead_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    .line 205
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 994
    iget-byte v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 998
    :cond_a
    iput-byte v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 173
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 173
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 173
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 1

    .line 1178
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->newBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 3

    .line 1194
    new-instance p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 173
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 173
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 3

    .line 1187
    sget-object v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 1188
    new-instance p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    invoke-direct {p0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;-><init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    return-object p0

    :cond_b
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    invoke-direct {v0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;-><init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8

    .line 1005
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderPeerId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_c

    .line 1006
    invoke-virtual {p1, v5, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1008
    :cond_c
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderUid_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessage;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x2

    .line 1009
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->senderUid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1011
    :cond_1a
    iget-wide v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverPeerId_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_24

    const/4 v2, 0x5

    .line 1012
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1014
    :cond_24
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverUid_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessage;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x6

    .line 1015
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->receiverUid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1017
    :cond_32
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->bitField0_:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_40

    const/16 v0, 0x8

    .line 1018
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getSenderInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$SenderInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1020
    :cond_40
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
