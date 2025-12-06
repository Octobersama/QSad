.class public final Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "InfoSyncPushOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder;",
        "Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private endSeq_:I

.field private groupPeerId_:J

.field private qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder;"
        }
    .end annotation
.end field

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
.method private constructor <init>()V
    .registers 2

    .line 674
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1005
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V
    .registers 2

    .line 680
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    .line 1005
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;-><init>()V

    return-void
.end method

.method private buildPartial0(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)V
    .registers 5

    .line 742
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_b

    .line 744
    iget-wide v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->groupPeerId_:J

    invoke-static {p1, v1, v2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->-$$Nest$fputgroupPeerId_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;J)V

    :cond_b
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_14

    .line 747
    iget v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->startSeq_:I

    invoke-static {p1, v1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->-$$Nest$fputstartSeq_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;I)V

    :cond_14
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1d

    .line 750
    iget p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->endSeq_:I

    invoke-static {p1, p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->-$$Nest$fputendSeq_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;I)V

    :cond_1d
    return-void
.end method

.method private buildPartialRepeatedFields(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)V
    .registers 3

    .line 730
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1e

    .line 731
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_18

    .line 732
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    .line 733
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    .line 735
    :cond_18
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-static {p1, p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->-$$Nest$fputqqMessage_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;Ljava/util/List;)V

    return-void

    .line 737
    :cond_1e
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->-$$Nest$fputqqMessage_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;Ljava/util/List;)V

    return-void
.end method

.method private ensureQqMessageIsMutable()V
    .registers 3

    .line 1007
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_15

    .line 1008
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    .line 1009
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 662
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_InfoSyncPush_SyncContent_GroupSyncContent_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private internalGetQqMessageFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder;"
        }
    .end annotation

    .line 1304
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_21

    .line 1305
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    iget v2, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 1309
    :goto_11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/AbstractMessage$BuilderParent;

    move-result-object v3

    .line 1310
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 1311
    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    .line 1313
    :cond_21
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method


# virtual methods
.method public addAllQqMessage(Ljava/lang/Iterable;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;",
            ">;)",
            "Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;"
        }
    .end annotation

    .line 1183
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_10

    .line 1184
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->ensureQqMessageIsMutable()V

    .line 1185
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1187
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1189
    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public addQqMessage(ILme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 4

    .line 1165
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_14

    .line 1166
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->ensureQqMessageIsMutable()V

    .line 1167
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-virtual {p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1168
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1170
    :cond_14
    invoke-virtual {p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public addQqMessage(ILme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 4

    .line 1126
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_13

    .line 1128
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1130
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->ensureQqMessageIsMutable()V

    .line 1131
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1132
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1134
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public addQqMessage(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 3

    .line 1147
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_14

    .line 1148
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->ensureQqMessageIsMutable()V

    .line 1149
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1152
    :cond_14
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public addQqMessage(Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 3

    .line 1105
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_13

    .line 1107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1109
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->ensureQqMessageIsMutable()V

    .line 1110
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1113
    :cond_13
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public addQqMessageBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 2

    .line 1275
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->internalGetQqMessageFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object p0

    .line 1276
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object v0

    .line 1275
    invoke-virtual {p0, v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    return-object p0
.end method

.method public addQqMessageBuilder(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 3

    .line 1287
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->internalGetQqMessageFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object p0

    .line 1288
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getDefaultInstance()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object v0

    .line 1287
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 656
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 656
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object p0

    return-object p0
.end method

.method public build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 2

    .line 713
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->buildPartial()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object p0

    .line 714
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 715
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 656
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->buildPartial()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 656
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->buildPartial()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 3

    .line 722
    new-instance v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V

    .line 723
    invoke-direct {p0, v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->buildPartialRepeatedFields(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)V

    .line 724
    iget v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    if-eqz v1, :cond_10

    invoke-direct {p0, v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->buildPartial0(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)V

    .line 725
    :cond_10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 656
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->clear()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 1

    .line 656
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->clear()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 656
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->clear()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 656
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->clear()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 4

    .line 685
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 686
    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 687
    iput-wide v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->groupPeerId_:J

    .line 688
    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->startSeq_:I

    .line 689
    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->endSeq_:I

    .line 690
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_17

    .line 691
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    goto :goto_1d

    :cond_17
    const/4 v1, 0x0

    .line 693
    iput-object v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    .line 694
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    .line 696
    :goto_1d
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearEndSeq()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 2

    .line 998
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 999
    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->endSeq_:I

    .line 1000
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearGroupPeerId()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 3

    .line 910
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 911
    iput-wide v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->groupPeerId_:J

    .line 912
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearQqMessage()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 2

    .line 1201
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_12

    .line 1202
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    .line 1203
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    .line 1204
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1206
    :cond_12
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    return-object p0
.end method

.method public clearStartSeq()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 2

    .line 954
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 955
    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->startSeq_:I

    .line 956
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 656
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 656
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 1

    .line 708
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getDefaultInstance()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 703
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_InfoSyncPush_SyncContent_GroupSyncContent_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getEndSeq()I
    .registers 1

    .line 971
    iget p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->endSeq_:I

    return p0
.end method

.method public getGroupPeerId()J
    .registers 3

    .line 883
    iget-wide v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->groupPeerId_:J

    return-wide v0
.end method

.method public getQqMessage(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
    .registers 3

    .line 1052
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_d

    .line 1053
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-object p0

    .line 1055
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    return-object p0
.end method

.method public getQqMessageBuilder(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;
    .registers 2

    .line 1236
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->internalGetQqMessageFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;

    return-object p0
.end method

.method public getQqMessageBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;",
            ">;"
        }
    .end annotation

    .line 1299
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->internalGetQqMessageFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getQqMessageCount()I
    .registers 2

    .line 1038
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_b

    .line 1039
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    .line 1041
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result p0

    return p0
.end method

.method public getQqMessageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;",
            ">;"
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_b

    .line 1025
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1027
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getQqMessageOrBuilder(I)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessageOrBuilder;
    .registers 3

    .line 1247
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_d

    .line 1248
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessageOrBuilder;

    return-object p0

    .line 1249
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessageOrBuilder;

    return-object p0
.end method

.method public getQqMessageOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessageOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1261
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_9

    .line 1262
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1264
    :cond_9
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getStartSeq()I
    .registers 1

    .line 927
    iget p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->startSeq_:I

    return p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 668
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_InfoSyncPush_SyncContent_GroupSyncContent_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    const-class v1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    .line 669
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

    .line 656
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 656
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 656
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 656
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 656
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 656
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 8

    .line 817
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_73

    .line 822
    :try_start_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    const/16 v3, 0x18

    if-eq v1, v3, :cond_5e

    const/16 v3, 0x20

    if-eq v1, v3, :cond_51

    const/16 v3, 0x28

    if-eq v1, v3, :cond_44

    const/16 v3, 0x32

    if-eq v1, v3, :cond_29

    .line 856
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/GeneratedMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_23
    move v0, v2

    goto :goto_4

    :catchall_25
    move-exception p1

    goto :goto_6f

    :catch_27
    move-exception p1

    goto :goto_6a

    .line 845
    :cond_29
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->parser()Lcom/google/protobuf/Parser;

    move-result-object v1

    .line 844
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    .line 847
    iget-object v2, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_40

    .line 848
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->ensureQqMessageIsMutable()V

    .line 849
    iget-object v2, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 851
    :cond_40
    invoke-virtual {v2, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_4

    .line 838
    :cond_44
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->endSeq_:I

    .line 839
    iget v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    goto :goto_4

    .line 833
    :cond_51
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->startSeq_:I

    .line 834
    iget v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    goto :goto_4

    .line 828
    :cond_5e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->groupPeerId_:J

    .line 829
    iget v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I
    :try_end_69
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_69} :catch_27
    .catchall {:try_start_6 .. :try_end_69} :catchall_25

    goto :goto_4

    .line 864
    :goto_6a
    :try_start_6a
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_25

    .line 866
    :goto_6f
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 867
    throw p1

    .line 866
    :cond_73
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 3

    .line 756
    instance-of v0, p1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    if-eqz v0, :cond_b

    .line 757
    check-cast p1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->mergeFrom(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    move-result-object p0

    return-object p0

    .line 759
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 6

    .line 765
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getDefaultInstance()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 766
    :cond_7
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getGroupPeerId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 767
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getGroupPeerId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->setGroupPeerId(J)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    .line 769
    :cond_18
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getStartSeq()I

    move-result v0

    if-eqz v0, :cond_25

    .line 770
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getStartSeq()I

    move-result v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->setStartSeq(I)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    .line 772
    :cond_25
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getEndSeq()I

    move-result v0

    if-eqz v0, :cond_32

    .line 773
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getEndSeq()I

    move-result v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->setEndSeq(I)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    .line 775
    :cond_32
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_65

    .line 776
    invoke-static {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->-$$Nest$fgetqqMessage_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 777
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 778
    invoke-static {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->-$$Nest$fgetqqMessage_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    .line 779
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    goto :goto_61

    .line 781
    :cond_55
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->ensureQqMessageIsMutable()V

    .line 782
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-static {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->-$$Nest$fgetqqMessage_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 784
    :goto_61
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_a1

    .line 787
    :cond_65
    invoke-static {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->-$$Nest$fgetqqMessage_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 788
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 789
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    const/4 v0, 0x0

    .line 790
    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 791
    invoke-static {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->-$$Nest$fgetqqMessage_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    .line 792
    iget v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    .line 794
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->access$000()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 795
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->internalGetQqMessageFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_95
    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_a1

    .line 797
    :cond_98
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->-$$Nest$fgetqqMessage_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 801
    :cond_a1
    :goto_a1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 802
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public removeQqMessage(I)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 3

    .line 1218
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_10

    .line 1219
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->ensureQqMessageIsMutable()V

    .line 1220
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1221
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1223
    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    return-object p0
.end method

.method public setEndSeq(I)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 2

    .line 984
    iput p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->endSeq_:I

    .line 985
    iget p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    .line 986
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setGroupPeerId(J)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 3

    .line 896
    iput-wide p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->groupPeerId_:J

    .line 897
    iget p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    .line 898
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setQqMessage(ILme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 4

    .line 1088
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_14

    .line 1089
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->ensureQqMessageIsMutable()V

    .line 1090
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-virtual {p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1091
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1093
    :cond_14
    invoke-virtual {p2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$Builder;->build()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public setQqMessage(ILme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 4

    .line 1067
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessageBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_13

    .line 1069
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1071
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->ensureQqMessageIsMutable()V

    .line 1072
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->qqMessage_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1073
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1075
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public setStartSeq(I)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 2

    .line 940
    iput p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->startSeq_:I

    .line 941
    iget p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->bitField0_:I

    .line 942
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
