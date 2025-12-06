.class public final Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
.super Lcom/google/protobuf/GeneratedMessage;
.source "InfoSyncPushOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupSyncContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

.field public static final ENDSEQ_FIELD_NUMBER:I = 0x5

.field public static final GROUPPEERID_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final QQMESSAGE_FIELD_NUMBER:I = 0x6

.field public static final STARTSEQ_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private endSeq_:I

.field private groupPeerId_:J

.field private memoizedIsInitialized:B

.field private qqMessage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;",
            ">;"
        }
    .end annotation
.end field

.field private startSeq_:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetqqMessage_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->qqMessage_:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputendSeq_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;I)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->endSeq_:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputgroupPeerId_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->groupPeerId_:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputqqMessage_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;Ljava/util/List;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->qqMessage_:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputstartSeq_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;I)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->startSeq_:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 325
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    .line 331
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x20

    const/4 v3, 0x1

    .line 325
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 1322
    new-instance v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    invoke-direct {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    .line 1330
    new-instance v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$1;

    invoke-direct {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$1;-><init>()V

    sput-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 337
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const-wide/16 v0, 0x0

    .line 355
    iput-wide v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->groupPeerId_:J

    const/4 v0, 0x0

    .line 370
    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->startSeq_:I

    .line 385
    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->endSeq_:I

    const/4 v0, -0x1

    .line 460
    iput-byte v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->memoizedIsInitialized:B

    .line 338
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->qqMessage_:Ljava/util/List;

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

    .line 335
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const-wide/16 v0, 0x0

    .line 355
    iput-wide v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->groupPeerId_:J

    const/4 p1, 0x0

    .line 370
    iput p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->startSeq_:I

    .line 385
    iput p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->endSeq_:I

    const/4 p1, -0x1

    .line 460
    iput-byte p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method public static synthetic access$000()Z
    .registers 1

    .line 319
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 1

    .line 1326
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 343
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_InfoSyncPush_SyncContent_GroupSyncContent_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 1

    .line 636
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 2

    .line 639
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    invoke-virtual {v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->mergeFrom(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 2

    .line 608
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->PARSER:Lcom/google/protobuf/Parser;

    .line 609
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 3

    .line 616
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->PARSER:Lcom/google/protobuf/Parser;

    .line 617
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 2

    .line 575
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 3

    .line 581
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 2

    .line 622
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->PARSER:Lcom/google/protobuf/Parser;

    .line 623
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 3

    .line 629
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->PARSER:Lcom/google/protobuf/Parser;

    .line 630
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 2

    .line 595
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->PARSER:Lcom/google/protobuf/Parser;

    .line 596
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 3

    .line 602
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->PARSER:Lcom/google/protobuf/Parser;

    .line 603
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessage;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 2

    .line 564
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 3

    .line 570
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    return-object p0
.end method

.method public static parseFrom([B)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 2

    .line 585
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 3

    .line 591
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

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

    .line 1352
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 521
    :cond_4
    instance-of v1, p1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    if-nez v1, :cond_d

    .line 522
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 524
    :cond_d
    check-cast p1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    .line 526
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getGroupPeerId()J

    move-result-wide v1

    .line 527
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getGroupPeerId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    return v2

    .line 528
    :cond_1d
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getStartSeq()I

    move-result v1

    .line 529
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getStartSeq()I

    move-result v3

    if-eq v1, v3, :cond_28

    return v2

    .line 530
    :cond_28
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getEndSeq()I

    move-result v1

    .line 531
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getEndSeq()I

    move-result v3

    if-eq v1, v3, :cond_33

    return v2

    .line 532
    :cond_33
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getQqMessageList()Ljava/util/List;

    move-result-object v1

    .line 533
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getQqMessageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v2

    .line 534
    :cond_42
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    return v2

    :cond_51
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 319
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 319
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 1

    .line 1362
    sget-object p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    return-object p0
.end method

.method public getEndSeq()I
    .registers 1

    .line 396
    iget p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->endSeq_:I

    return p0
.end method

.method public getGroupPeerId()J
    .registers 3

    .line 366
    iget-wide v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->groupPeerId_:J

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

    .line 1357
    sget-object p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getQqMessage(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 2

    .line 445
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->qqMessage_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-object p0
.end method

.method public getQqMessageCount()I
    .registers 1

    .line 434
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->qqMessage_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getQqMessageList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;",
            ">;"
        }
    .end annotation

    .line 411
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->qqMessage_:Ljava/util/List;

    return-object p0
.end method

.method public getQqMessageOrBuilder(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessageOrBuilder;
    .registers 2

    .line 457
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->qqMessage_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessageOrBuilder;

    return-object p0
.end method

.method public getQqMessageOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessageOrBuilder;",
            ">;"
        }
    .end annotation

    .line 423
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->qqMessage_:Ljava/util/List;

    return-object p0
.end method

.method public getSerializedSize()I
    .registers 5

    .line 491
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 495
    :cond_6
    iget-wide v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->groupPeerId_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    const/4 v2, 0x3

    .line 497
    invoke-static {v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v3

    .line 499
    :goto_16
    iget v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->startSeq_:I

    if-eqz v1, :cond_20

    const/4 v2, 0x4

    .line 501
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 503
    :cond_20
    iget v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->endSeq_:I

    if-eqz v1, :cond_2a

    const/4 v2, 0x5

    .line 505
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 507
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->qqMessage_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_43

    .line 508
    iget-object v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->qqMessage_:Ljava/util/List;

    .line 509
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 511
    :cond_43
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 512
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getStartSeq()I
    .registers 1

    .line 381
    iget p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->startSeq_:I

    return p0
.end method

.method public hashCode()I
    .registers 5

    .line 540
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 544
    :cond_5
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    .line 547
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getGroupPeerId()J

    move-result-wide v2

    .line 546
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    .line 549
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getStartSeq()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    .line 551
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getEndSeq()I

    move-result v0

    add-int/2addr v1, v0

    .line 552
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getQqMessageCount()I

    move-result v0

    if-lez v0, :cond_4a

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x35

    .line 554
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getQqMessageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_4a
    mul-int/lit8 v1, v1, 0x1d

    .line 556
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 557
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 349
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_InfoSyncPush_SyncContent_GroupSyncContent_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    const-class v1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    .line 350
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 463
    iget-byte v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 467
    :cond_a
    iput-byte v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 319
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->newBuilderForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 319
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 319
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->newBuilderForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 1

    .line 634
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->newBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 3

    .line 650
    new-instance p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 319
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 319
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 3

    .line 643
    sget-object v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->DEFAULT_INSTANCE:Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 644
    new-instance p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    invoke-direct {p0, v1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;-><init>(Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V

    return-object p0

    :cond_b
    new-instance v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    invoke-direct {v0, v1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;-><init>(Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V

    invoke-virtual {v0, p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->mergeFrom(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6

    .line 474
    iget-wide v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->groupPeerId_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    const/4 v2, 0x3

    .line 475
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 477
    :cond_c
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->startSeq_:I

    if-eqz v0, :cond_14

    const/4 v1, 0x4

    .line 478
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 480
    :cond_14
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->endSeq_:I

    if-eqz v0, :cond_1c

    const/4 v1, 0x5

    .line 481
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1c
    const/4 v0, 0x0

    .line 483
    :goto_1d
    iget-object v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->qqMessage_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 484
    iget-object v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->qqMessage_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 486
    :cond_34
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
