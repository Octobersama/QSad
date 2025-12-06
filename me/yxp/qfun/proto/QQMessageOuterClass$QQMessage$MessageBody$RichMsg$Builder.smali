.class public final Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "QQMessageOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder;",
        "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsgOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder;"
        }
    .end annotation
.end field

.field private msgContent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 4718
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 4881
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V
    .registers 2

    .line 4724
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    .line 4881
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;-><init>()V

    return-void
.end method

.method private buildPartial0(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;)V
    .registers 2

    .line 0
    return-void
.end method

.method private buildPartialRepeatedFields(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;)V
    .registers 3

    .line 4771
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1e

    .line 4772
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    .line 4773
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    .line 4774
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->bitField0_:I

    .line 4776
    :cond_18
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-static {p1, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;->-$$Nest$fputmsgContent_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;Ljava/util/List;)V

    return-void

    .line 4778
    :cond_1e
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;->-$$Nest$fputmsgContent_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;Ljava/util/List;)V

    return-void
.end method

.method private ensureMsgContentIsMutable()V
    .registers 3

    .line 4883
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 4884
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    .line 4885
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 4706
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_RichMsg_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMsgContentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder;"
        }
    .end annotation

    .line 5108
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_20

    .line 5109
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    iget v2, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 5113
    :goto_10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/AbstractMessage$BuilderParent;

    move-result-object v2

    .line 5114
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 5115
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    .line 5117
    :cond_20
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method


# virtual methods
.method public addAllMsgContent(Ljava/lang/Iterable;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;",
            ">;)",
            "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;"
        }
    .end annotation

    .line 5019
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_10

    .line 5020
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->ensureMsgContentIsMutable()V

    .line 5021
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 5023
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 5025
    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public addMsgContent(ILme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$Builder;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;
    .registers 4

    .line 5005
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_14

    .line 5006
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->ensureMsgContentIsMutable()V

    .line 5007
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-virtual {p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5008
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 5010
    :cond_14
    invoke-virtual {p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public addMsgContent(ILme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;
    .registers 4

    .line 4974
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_13

    .line 4976
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4978
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->ensureMsgContentIsMutable()V

    .line 4979
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4980
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 4982
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public addMsgContent(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$Builder;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;
    .registers 3

    .line 4991
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_14

    .line 4992
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->ensureMsgContentIsMutable()V

    .line 4993
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4994
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 4996
    :cond_14
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public addMsgContent(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;
    .registers 3

    .line 4957
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_13

    .line 4959
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4961
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->ensureMsgContentIsMutable()V

    .line 4962
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4963
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 4965
    :cond_13
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public addMsgContentBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$Builder;
    .registers 2

    .line 5087
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->internalGetMsgContentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object p0

    .line 5088
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;

    move-result-object v0

    .line 5087
    invoke-virtual {p0, v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$Builder;

    return-object p0
.end method

.method public addMsgContentBuilder(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$Builder;
    .registers 3

    .line 5095
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->internalGetMsgContentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object p0

    .line 5096
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;

    move-result-object v0

    .line 5095
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 4700
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 4700
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;

    move-result-object p0

    return-object p0
.end method

.method public build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;
    .registers 2

    .line 4754
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;

    move-result-object p0

    .line 4755
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 4756
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 4700
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 4700
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;
    .registers 3

    .line 4763
    new-instance v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/QQMessageOuterClass-IA;)V

    .line 4764
    invoke-direct {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->buildPartialRepeatedFields(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;)V

    .line 4765
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->bitField0_:I

    if-eqz v1, :cond_10

    invoke-direct {p0, v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->buildPartial0(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;)V

    .line 4766
    :cond_10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 4700
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 1

    .line 4700
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 4700
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 4700
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;
    .registers 3

    .line 4729
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 4730
    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->bitField0_:I

    .line 4731
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_f

    .line 4732
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    goto :goto_15

    :cond_f
    const/4 v1, 0x0

    .line 4734
    iput-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    .line 4735
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    .line 4737
    :goto_15
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearMsgContent()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;
    .registers 2

    .line 5033
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_12

    .line 5034
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    .line 5035
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->bitField0_:I

    .line 5036
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 5038
    :cond_12
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 4700
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 4700
    invoke-virtual {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;
    .registers 1

    .line 4749
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 4744
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_RichMsg_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getMsgContent(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;
    .registers 3

    .line 4916
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_d

    .line 4917
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;

    return-object p0

    .line 4919
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;

    return-object p0
.end method

.method public getMsgContentBuilder(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$Builder;
    .registers 2

    .line 5060
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->internalGetMsgContentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$Builder;

    return-object p0
.end method

.method public getMsgContentBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$Builder;",
            ">;"
        }
    .end annotation

    .line 5103
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->internalGetMsgContentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMsgContentCount()I
    .registers 2

    .line 4906
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_b

    .line 4907
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    .line 4909
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result p0

    return p0
.end method

.method public getMsgContentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;",
            ">;"
        }
    .end annotation

    .line 4896
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_b

    .line 4897
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4899
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMsgContentOrBuilder(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContentOrBuilder;
    .registers 3

    .line 5067
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_d

    .line 5068
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContentOrBuilder;

    return-object p0

    .line 5069
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContentOrBuilder;

    return-object p0
.end method

.method public getMsgContentOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5077
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_9

    .line 5078
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5080
    :cond_9
    iget-object p0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 4712
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_QQMessage_MessageBody_RichMsg_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;

    const-class v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;

    .line 4713
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

    .line 4700
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 4700
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 4700
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 4700
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 4700
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 4700
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;
    .registers 7

    .line 4840
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_41

    .line 4845
    :try_start_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    const/16 v3, 0x12

    if-eq v1, v3, :cond_1d

    .line 4864
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_17
    move v0, v2

    goto :goto_4

    :catchall_19
    move-exception p1

    goto :goto_3d

    :catch_1b
    move-exception p1

    goto :goto_38

    .line 4853
    :cond_1d
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;->parser()Lcom/google/protobuf/Parser;

    move-result-object v1

    .line 4852
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;

    .line 4855
    iget-object v2, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_34

    .line 4856
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->ensureMsgContentIsMutable()V

    .line 4857
    iget-object v2, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4859
    :cond_34
    invoke-virtual {v2, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;
    :try_end_37
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_37} :catch_1b
    .catchall {:try_start_6 .. :try_end_37} :catchall_19

    goto :goto_4

    .line 4872
    :goto_38
    :try_start_38
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_19

    .line 4874
    :goto_3d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 4875
    throw p1

    .line 4874
    :cond_41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;
    .registers 3

    .line 4788
    instance-of v0, p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;

    if-eqz v0, :cond_b

    .line 4789
    check-cast p1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;

    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;

    move-result-object p0

    return-object p0

    .line 4791
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;
    .registers 4

    .line 4797
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 4798
    :cond_7
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_3a

    .line 4799
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;->-$$Nest$fgetmsgContent_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 4800
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 4801
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;->-$$Nest$fgetmsgContent_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    .line 4802
    iget v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->bitField0_:I

    goto :goto_36

    .line 4804
    :cond_2a
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->ensureMsgContentIsMutable()V

    .line 4805
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;->-$$Nest$fgetmsgContent_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4807
    :goto_36
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_76

    .line 4810
    :cond_3a
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;->-$$Nest$fgetmsgContent_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 4811
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 4812
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    const/4 v0, 0x0

    .line 4813
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 4814
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;->-$$Nest$fgetmsgContent_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    .line 4815
    iget v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->bitField0_:I

    .line 4817
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;->access$700()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 4818
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->internalGetMsgContentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_6a
    iput-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_76

    .line 4820
    :cond_6d
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;->-$$Nest$fgetmsgContent_(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 4824
    :cond_76
    :goto_76
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4825
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public removeMsgContent(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;
    .registers 3

    .line 5046
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_10

    .line 5047
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->ensureMsgContentIsMutable()V

    .line 5048
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5049
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 5051
    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    return-object p0
.end method

.method public setMsgContent(ILme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$Builder;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;
    .registers 4

    .line 4944
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_14

    .line 4945
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->ensureMsgContentIsMutable()V

    .line 4946
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-virtual {p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4947
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 4949
    :cond_14
    invoke-virtual {p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public setMsgContent(ILme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$MsgContent;)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;
    .registers 4

    .line 4927
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_13

    .line 4929
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4931
    invoke-direct {p0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->ensureMsgContentIsMutable()V

    .line 4932
    iget-object v0, p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$RichMsg$Builder;->msgContent_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4933
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 4935
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method
