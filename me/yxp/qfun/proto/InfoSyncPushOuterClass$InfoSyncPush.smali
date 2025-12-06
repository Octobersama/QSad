.class public final Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
.super Lcom/google/protobuf/GeneratedMessage;
.source "InfoSyncPushOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPushOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/InfoSyncPushOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InfoSyncPush"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;,
        Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;,
        Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;,
        Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfoOrBuilder;,
        Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContentOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final PUSHID_FIELD_NUMBER:I = 0x4

.field public static final SYNCCONTENT_FIELD_NUMBER:I = 0x7

.field public static final SYNCRECALLCONTENT_FIELD_NUMBER:I = 0x8

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private pushId_:I

.field private syncContent_:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

.field private syncRecallContent_:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;

.field private type_:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetbitField0_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;)I
    .registers 1

    .line 0
    iget p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->bitField0_:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputbitField0_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;I)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->bitField0_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputpushId_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;I)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->pushId_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputsyncContent_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->syncContent_:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputsyncRecallContent_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->syncRecallContent_:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtype_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;I)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->type_:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 124
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    .line 130
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x20

    const/4 v3, 0x1

    .line 124
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 5673
    new-instance v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    invoke-direct {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    .line 5681
    new-instance v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$1;

    invoke-direct {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$1;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 136
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, 0x0

    .line 4753
    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->type_:I

    .line 4768
    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->pushId_:I

    const/4 v0, -0x1

    .line 4858
    iput-byte v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->memoizedIsInitialized:B

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

    .line 134
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 p1, 0x0

    .line 4753
    iput p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->type_:I

    .line 4768
    iput p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->pushId_:I

    const/4 p1, -0x1

    .line 4858
    iput-byte p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method public static synthetic access$600()Z
    .registers 1

    .line 118
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
    .registers 1

    .line 5677
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 141
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_InfoSyncPush_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;
    .registers 1

    .line 5041
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;
    .registers 2

    .line 5044
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;->mergeFrom(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
    .registers 2

    .line 5013
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->PARSER:Lcom/google/protobuf/Parser;

    .line 5014
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
    .registers 3

    .line 5021
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->PARSER:Lcom/google/protobuf/Parser;

    .line 5022
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
    .registers 2

    .line 4980
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
    .registers 3

    .line 4986
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
    .registers 2

    .line 5027
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->PARSER:Lcom/google/protobuf/Parser;

    .line 5028
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
    .registers 3

    .line 5034
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->PARSER:Lcom/google/protobuf/Parser;

    .line 5035
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
    .registers 2

    .line 5000
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->PARSER:Lcom/google/protobuf/Parser;

    .line 5001
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
    .registers 3

    .line 5007
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->PARSER:Lcom/google/protobuf/Parser;

    .line 5008
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
    .registers 2

    .line 4969
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
    .registers 3

    .line 4975
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    return-object p0
.end method

.method public static parseFrom([B)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
    .registers 2

    .line 4990
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
    .registers 3

    .line 4996
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

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

    .line 5703
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 4919
    :cond_4
    instance-of v1, p1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    if-nez v1, :cond_d

    .line 4920
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 4922
    :cond_d
    check-cast p1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    .line 4924
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getType()I

    move-result v1

    .line 4925
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getType()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 4926
    :cond_1b
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getPushId()I

    move-result v1

    .line 4927
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getPushId()I

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 4928
    :cond_26
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->hasSyncContent()Z

    move-result v1

    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->hasSyncContent()Z

    move-result v2

    if-eq v1, v2, :cond_31

    return v3

    .line 4929
    :cond_31
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->hasSyncContent()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 4930
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getSyncContent()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object v1

    .line 4931
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getSyncContent()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v3

    .line 4933
    :cond_46
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->hasSyncRecallContent()Z

    move-result v1

    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->hasSyncRecallContent()Z

    move-result v2

    if-eq v1, v2, :cond_51

    return v3

    .line 4934
    :cond_51
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->hasSyncRecallContent()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 4935
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getSyncRecallContent()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;

    move-result-object v1

    .line 4936
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getSyncRecallContent()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    return v3

    .line 4938
    :cond_66
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_75

    return v3

    :cond_75
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 118
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 118
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
    .registers 1

    .line 5713
    sget-object p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

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

    .line 5708
    sget-object p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getPushId()I
    .registers 1

    .line 4779
    iget p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->pushId_:I

    return p0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 4889
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 4893
    :cond_6
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->type_:I

    if-eqz v0, :cond_10

    const/4 v1, 0x3

    .line 4895
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 4897
    :goto_11
    iget v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->pushId_:I

    if-eqz v1, :cond_1b

    const/4 v2, 0x4

    .line 4899
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4901
    :cond_1b
    iget v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2b

    const/4 v1, 0x7

    .line 4903
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getSyncContent()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4905
    :cond_2b
    iget v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3c

    const/16 v1, 0x8

    .line 4907
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getSyncRecallContent()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4909
    :cond_3c
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4910
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSyncContent()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 1

    .line 4806
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->syncContent_:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->getDefaultInstance()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getSyncContentOrBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContentOrBuilder;
    .registers 1

    .line 4817
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->syncContent_:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->getDefaultInstance()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getSyncRecallContent()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;
    .registers 1

    .line 4844
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->syncRecallContent_:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;->getDefaultInstance()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getSyncRecallContentOrBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfoOrBuilder;
    .registers 1

    .line 4855
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->syncRecallContent_:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;

    if-nez p0, :cond_8

    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;->getDefaultInstance()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getType()I
    .registers 1

    .line 4764
    iget p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->type_:I

    return p0
.end method

.method public hasSyncContent()Z
    .registers 2

    .line 4794
    iget p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasSyncRecallContent()Z
    .registers 1

    .line 4832
    iget p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 4944
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 4948
    :cond_5
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 4950
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getType()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 4952
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getPushId()I

    move-result v0

    add-int/2addr v1, v0

    .line 4953
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->hasSyncContent()Z

    move-result v0

    if-eqz v0, :cond_3b

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x35

    .line 4955
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getSyncContent()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4957
    :cond_3b
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->hasSyncRecallContent()Z

    move-result v0

    if-eqz v0, :cond_50

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x35

    .line 4959
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getSyncRecallContent()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_50
    mul-int/lit8 v1, v1, 0x1d

    .line 4961
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 4962
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 147
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_InfoSyncPush_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    const-class v1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 4861
    iget-byte v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 4865
    :cond_a
    iput-byte v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 118
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->newBuilderForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 118
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 118
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->newBuilderForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;
    .registers 1

    .line 5039
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->newBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;
    .registers 3

    .line 5055
    new-instance p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 118
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 118
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;
    .registers 3

    .line 5048
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 5049
    new-instance p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;

    invoke-direct {p0, v1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;-><init>(Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V

    return-object p0

    :cond_b
    new-instance v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;

    invoke-direct {v0, v1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;-><init>(Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;->mergeFrom(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4

    .line 4872
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->type_:I

    if-eqz v0, :cond_8

    const/4 v1, 0x3

    .line 4873
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4875
    :cond_8
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->pushId_:I

    if-eqz v0, :cond_10

    const/4 v1, 0x4

    .line 4876
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4878
    :cond_10
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1e

    const/4 v0, 0x7

    .line 4879
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getSyncContent()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4881
    :cond_1e
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2d

    const/16 v0, 0x8

    .line 4882
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getSyncRecallContent()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4884
    :cond_2d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
