.class public final Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "QQMessageOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder;",
        "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private messageBodyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder;"
        }
    .end annotation
.end field

.field private messageBody_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

.field private messageContentInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder;"
        }
    .end annotation
.end field

.field private messageContentInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

.field private messageHeadBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder;"
        }
    .end annotation
.end field

.field private messageHead_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 9579
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 9580
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V
    .registers 2

    .line 9585
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    .line 9586
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;-><init>()V

    return-void
.end method

.method private buildPartial0(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)V
    .registers 5

    .line 9647
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_18

    .line 9650
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHeadBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v1, :cond_d

    .line 9651
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHead_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    goto :goto_13

    .line 9652
    :cond_d
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v1

    check-cast v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    :goto_13
    invoke-static {p1, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->-$$Nest$fputmessageHead_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)V

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2f

    .line 9656
    iget-object v2, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_24

    .line 9657
    iget-object v2, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    goto :goto_2a

    .line 9658
    :cond_24
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    :goto_2a
    invoke-static {p1, v2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->-$$Nest$fputmessageContentInfo_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;)V

    or-int/lit8 v1, v1, 0x2

    :cond_2f
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_45

    .line 9662
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBodyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_3a

    .line 9663
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBody_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    goto :goto_40

    .line 9664
    :cond_3a
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    :goto_40
    invoke-static {p1, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->-$$Nest$fputmessageBody_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;)V

    or-int/lit8 v1, v1, 0x4

    .line 9667
    :cond_45
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->-$$Nest$fgetbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)I

    move-result p0

    or-int/2addr p0, v1

    invoke-static {p1, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->-$$Nest$fputbitField0_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;I)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 9567
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMessageBodyFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder;"
        }
    .end annotation

    .line 10107
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBodyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1a

    .line 10108
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 10110
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->getMessageBody()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    move-result-object v1

    .line 10111
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/AbstractMessage$BuilderParent;

    move-result-object v2

    .line 10112
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBodyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 10113
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBody_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    .line 10115
    :cond_1a
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBodyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object p0
.end method

.method private internalGetMessageContentInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder;"
        }
    .end annotation

    .line 9986
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1a

    .line 9987
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 9989
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->getMessageContentInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object v1

    .line 9990
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/AbstractMessage$BuilderParent;

    move-result-object v2

    .line 9991
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 9992
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    .line 9994
    :cond_1a
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object p0
.end method

.method private internalGetMessageHeadFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder;"
        }
    .end annotation

    .line 9865
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHeadBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1a

    .line 9866
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 9868
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->getMessageHead()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object v1

    .line 9869
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/AbstractMessage$BuilderParent;

    move-result-object v2

    .line 9870
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHeadBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 9871
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHead_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    .line 9873
    :cond_1a
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHeadBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object p0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .line 9590
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 9591
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->internalGetMessageHeadFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 9592
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->internalGetMessageContentInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 9593
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->internalGetMessageBodyFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_f
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 9561
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 9561
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p0

    return-object p0
.end method

.method public build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 2

    .line 9631
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p0

    .line 9632
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 9633
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 9561
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 9561
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 3

    .line 9640
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    .line 9641
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->buildPartial0(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)V

    .line 9642
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 9561
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 1

    .line 9561
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 9561
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 9561
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 3

    .line 9598
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 9599
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 9600
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHead_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    .line 9601
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHeadBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v1, :cond_12

    .line 9602
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 9603
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHeadBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 9605
    :cond_12
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    .line 9606
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v1, :cond_1d

    .line 9607
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 9608
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 9610
    :cond_1d
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBody_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    .line 9611
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBodyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v1, :cond_28

    .line 9612
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 9613
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBodyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    :cond_28
    return-object p0
.end method

.method public clearMessageBody()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 3

    .line 10073
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 10074
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBody_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    .line 10075
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBodyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v1, :cond_12

    .line 10076
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 10077
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBodyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 10079
    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMessageContentInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 3

    .line 9952
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 9953
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    .line 9954
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v1, :cond_12

    .line 9955
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 9956
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 9958
    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMessageHead()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 3

    .line 9831
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 9832
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHead_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    .line 9833
    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHeadBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v1, :cond_12

    .line 9834
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 9835
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHeadBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 9837
    :cond_12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 9561
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 9561
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 1

    .line 9626
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 9621
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getMessageBody()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;
    .registers 2

    .line 10012
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBodyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_d

    .line 10013
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBody_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    if-nez p0, :cond_c

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    move-result-object p0

    :cond_c
    return-object p0

    .line 10015
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    return-object p0
.end method

.method public getMessageBodyBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$Builder;
    .registers 2

    .line 10086
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    .line 10087
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 10088
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->internalGetMessageBodyFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$Builder;

    return-object p0
.end method

.method public getMessageBodyOrBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBodyOrBuilder;
    .registers 2

    .line 10094
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBodyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_b

    .line 10095
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBodyOrBuilder;

    return-object p0

    .line 10097
    :cond_b
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBody_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    if-nez p0, :cond_13

    .line 10098
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method public getMessageContentInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;
    .registers 2

    .line 9891
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_d

    .line 9892
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    if-nez p0, :cond_c

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object p0

    :cond_c
    return-object p0

    .line 9894
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    return-object p0
.end method

.method public getMessageContentInfoBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;
    .registers 2

    .line 9965
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    .line 9966
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 9967
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->internalGetMessageContentInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    return-object p0
.end method

.method public getMessageContentInfoOrBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfoOrBuilder;
    .registers 2

    .line 9973
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_b

    .line 9974
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfoOrBuilder;

    return-object p0

    .line 9976
    :cond_b
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    if-nez p0, :cond_13

    .line 9977
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method public getMessageHead()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;
    .registers 2

    .line 9770
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHeadBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_d

    .line 9771
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHead_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    if-nez p0, :cond_c

    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object p0

    :cond_c
    return-object p0

    .line 9773
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    return-object p0
.end method

.method public getMessageHeadBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;
    .registers 2

    .line 9844
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    .line 9845
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 9846
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->internalGetMessageHeadFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    return-object p0
.end method

.method public getMessageHeadOrBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHeadOrBuilder;
    .registers 2

    .line 9852
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHeadBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_b

    .line 9853
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHeadOrBuilder;

    return-object p0

    .line 9855
    :cond_b
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHead_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    if-nez p0, :cond_13

    .line 9856
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method public hasMessageBody()Z
    .registers 1

    .line 10005
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

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

    .line 9884
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

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

    .line 9763
    iget p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 9573
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    .line 9574
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .line 9561
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 9561
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 9561
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 9561
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 9561
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 9561
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 7

    .line 9707
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_63

    .line 9712
    :try_start_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    const/16 v3, 0xa

    if-eq v1, v3, :cond_49

    const/16 v3, 0x12

    if-eq v1, v3, :cond_37

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_25

    .line 9739
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1f
    move v0, v2

    goto :goto_4

    :catchall_21
    move-exception p1

    goto :goto_5f

    :catch_23
    move-exception p1

    goto :goto_5a

    .line 9733
    :cond_25
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->internalGetMessageBodyFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    .line 9732
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 9735
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    goto :goto_4

    .line 9726
    :cond_37
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->internalGetMessageContentInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    .line 9725
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 9728
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    goto :goto_4

    .line 9719
    :cond_49
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->internalGetMessageHeadFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    .line 9718
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 9721
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I
    :try_end_59
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_59} :catch_23
    .catchall {:try_start_6 .. :try_end_59} :catchall_21

    goto :goto_4

    .line 9747
    :goto_5a
    :try_start_5a
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_21

    .line 9749
    :goto_5f
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 9750
    throw p1

    .line 9749
    :cond_63
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 3

    .line 9672
    instance-of v0, p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    if-eqz v0, :cond_b

    .line 9673
    check-cast p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    move-result-object p0

    return-object p0

    .line 9675
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 3

    .line 9681
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 9682
    :cond_7
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->hasMessageHead()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 9683
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageHead()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->mergeMessageHead(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    .line 9685
    :cond_14
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->hasMessageContentInfo()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 9686
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageContentInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->mergeMessageContentInfo(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    .line 9688
    :cond_21
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->hasMessageBody()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 9689
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageBody()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->mergeMessageBody(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    .line 9691
    :cond_2e
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 9692
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeMessageBody(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 4

    .line 10052
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBodyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1f

    .line 10053
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBody_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    if-eqz v0, :cond_1c

    .line 10055
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    .line 10056
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->getMessageBodyBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$Builder;

    goto :goto_22

    .line 10058
    :cond_1c
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBody_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    goto :goto_22

    .line 10061
    :cond_1f
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 10063
    :goto_22
    iget-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBody_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    if-eqz p1, :cond_2f

    .line 10064
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    .line 10065
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    :cond_2f
    return-object p0
.end method

.method public mergeMessageContentInfo(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 4

    .line 9931
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1f

    .line 9932
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    if-eqz v0, :cond_1c

    .line 9934
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    .line 9935
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->getMessageContentInfoBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;

    goto :goto_22

    .line 9937
    :cond_1c
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    goto :goto_22

    .line 9940
    :cond_1f
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9942
    :goto_22
    iget-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    if-eqz p1, :cond_2f

    .line 9943
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    .line 9944
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    :cond_2f
    return-object p0
.end method

.method public mergeMessageHead(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 4

    .line 9810
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHeadBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1f

    .line 9811
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHead_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    if-eqz v0, :cond_1c

    .line 9813
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    .line 9814
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->getMessageHeadBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;

    goto :goto_22

    .line 9816
    :cond_1c
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHead_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    goto :goto_22

    .line 9819
    :cond_1f
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9821
    :goto_22
    iget-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHead_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    if-eqz p1, :cond_2f

    .line 9822
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    .line 9823
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    :cond_2f
    return-object p0
.end method

.method public setMessageBody(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$Builder;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 3

    .line 10039
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBodyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_b

    .line 10040
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBody_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    goto :goto_12

    .line 10042
    :cond_b
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 10044
    :goto_12
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    .line 10045
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMessageBody(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 3

    .line 10022
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBodyBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_a

    .line 10024
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10026
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageBody_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    goto :goto_d

    .line 10028
    :cond_a
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 10030
    :goto_d
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    .line 10031
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMessageContentInfo(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 3

    .line 9918
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_b

    .line 9919
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    goto :goto_12

    .line 9921
    :cond_b
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9923
    :goto_12
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    .line 9924
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMessageContentInfo(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 3

    .line 9901
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_a

    .line 9903
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9905
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageContentInfo_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    goto :goto_d

    .line 9907
    :cond_a
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9909
    :goto_d
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    .line 9910
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMessageHead(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 3

    .line 9797
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHeadBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_b

    .line 9798
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHead_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    goto :goto_12

    .line 9800
    :cond_b
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9802
    :goto_12
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    .line 9803
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMessageHead(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 3

    .line 9780
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHeadBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_a

    .line 9782
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9784
    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->messageHead_:Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageHead;

    goto :goto_d

    .line 9786
    :cond_a
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9788
    :goto_d
    iget p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->bitField0_:I

    .line 9789
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
