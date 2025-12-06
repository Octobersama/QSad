.class public final Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "InfoSyncPushOuterClass.java"

# interfaces
.implements Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder;",
        "Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder;"
        }
    .end annotation
.end field

.field private groupSyncContent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1608
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1771
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V
    .registers 2

    .line 1614
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    .line 1771
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;-><init>(Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;-><init>()V

    return-void
.end method

.method private buildPartial0(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;)V
    .registers 2

    .line 0
    return-void
.end method

.method private buildPartialRepeatedFields(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;)V
    .registers 3

    .line 1661
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1e

    .line 1662
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    .line 1663
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    .line 1664
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->bitField0_:I

    .line 1666
    :cond_18
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-static {p1, p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->-$$Nest$fputgroupSyncContent_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;Ljava/util/List;)V

    return-void

    .line 1668
    :cond_1e
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->-$$Nest$fputgroupSyncContent_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;Ljava/util/List;)V

    return-void
.end method

.method private ensureGroupSyncContentIsMutable()V
    .registers 3

    .line 1773
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_15

    .line 1774
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    .line 1775
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->bitField0_:I

    :cond_15
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1596
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_InfoSyncPush_SyncContent_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private internalGetGroupSyncContentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder;"
        }
    .end annotation

    .line 2070
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_20

    .line 2071
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    iget v2, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    .line 2075
    :goto_10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/AbstractMessage$BuilderParent;

    move-result-object v2

    .line 2076
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    .line 2077
    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    .line 2079
    :cond_20
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method


# virtual methods
.method public addAllGroupSyncContent(Ljava/lang/Iterable;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;",
            ">;)",
            "Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;"
        }
    .end annotation

    .line 1949
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_10

    .line 1950
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->ensureGroupSyncContentIsMutable()V

    .line 1951
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1953
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1955
    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public addGroupSyncContent(ILme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 4

    .line 1931
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_14

    .line 1932
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->ensureGroupSyncContentIsMutable()V

    .line 1933
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-virtual {p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1934
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1936
    :cond_14
    invoke-virtual {p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public addGroupSyncContent(ILme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 4

    .line 1892
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_13

    .line 1894
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1896
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->ensureGroupSyncContentIsMutable()V

    .line 1897
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1898
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1900
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public addGroupSyncContent(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 3

    .line 1913
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_14

    .line 1914
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->ensureGroupSyncContentIsMutable()V

    .line 1915
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1916
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1918
    :cond_14
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public addGroupSyncContent(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 3

    .line 1871
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_13

    .line 1873
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1875
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->ensureGroupSyncContentIsMutable()V

    .line 1876
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1877
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1879
    :cond_13
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public addGroupSyncContentBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 2

    .line 2041
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->internalGetGroupSyncContentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object p0

    .line 2042
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getDefaultInstance()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object v0

    .line 2041
    invoke-virtual {p0, v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    return-object p0
.end method

.method public addGroupSyncContentBuilder(I)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 3

    .line 2053
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->internalGetGroupSyncContentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object p0

    .line 2054
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->getDefaultInstance()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object v0

    .line 2053
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 1

    .line 1590
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1590
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object p0

    return-object p0
.end method

.method public build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 2

    .line 1644
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->buildPartial()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object p0

    .line 1645
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 1646
    :cond_b
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 1

    .line 1590
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->buildPartial()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1590
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->buildPartial()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 3

    .line 1653
    new-instance v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lme/yxp/qfun/proto/InfoSyncPushOuterClass-IA;)V

    .line 1654
    invoke-direct {p0, v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->buildPartialRepeatedFields(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;)V

    .line 1655
    iget v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->bitField0_:I

    if-eqz v1, :cond_10

    invoke-direct {p0, v0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->buildPartial0(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;)V

    .line 1656
    :cond_10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 1

    .line 1590
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->clear()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 1

    .line 1590
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->clear()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 1

    .line 1590
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->clear()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 1590
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->clear()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 3

    .line 1619
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 1620
    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->bitField0_:I

    .line 1621
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_f

    .line 1622
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    goto :goto_15

    :cond_f
    const/4 v1, 0x0

    .line 1624
    iput-object v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    .line 1625
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    .line 1627
    :goto_15
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearGroupSyncContent()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 2

    .line 1967
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_12

    .line 1968
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    .line 1969
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->bitField0_:I

    .line 1970
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1972
    :cond_12
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 1

    .line 1590
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1590
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;
    .registers 1

    .line 1639
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->getDefaultInstance()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 1634
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_InfoSyncPush_SyncContent_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getGroupSyncContent(I)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;
    .registers 3

    .line 1818
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_d

    .line 1819
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    return-object p0

    .line 1821
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    return-object p0
.end method

.method public getGroupSyncContentBuilder(I)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;
    .registers 2

    .line 2002
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->internalGetGroupSyncContentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;

    return-object p0
.end method

.method public getGroupSyncContentBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;",
            ">;"
        }
    .end annotation

    .line 2065
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->internalGetGroupSyncContentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGroupSyncContentCount()I
    .registers 2

    .line 1804
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_b

    .line 1805
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    .line 1807
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result p0

    return p0
.end method

.method public getGroupSyncContentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;",
            ">;"
        }
    .end annotation

    .line 1790
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_b

    .line 1791
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1793
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGroupSyncContentOrBuilder(I)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContentOrBuilder;
    .registers 3

    .line 2013
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_d

    .line 2014
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContentOrBuilder;

    return-object p0

    .line 2015
    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContentOrBuilder;

    return-object p0
.end method

.method public getGroupSyncContentOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2027
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_9

    .line 2028
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2030
    :cond_9
    iget-object p0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 3

    .line 1602
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass;->-$$Nest$sfgetinternal_static_me_yxp_qfun_proto_InfoSyncPush_SyncContent_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    const-class v1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    .line 1603
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

    .line 1590
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .line 1590
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 3

    .line 1590
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .line 1590
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    .line 1590
    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    .line 1590
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 7

    .line 1730
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-nez v0, :cond_41

    .line 1735
    :try_start_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_1d

    .line 1754
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

    .line 1743
    :cond_1d
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;->parser()Lcom/google/protobuf/Parser;

    move-result-object v1

    .line 1742
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    .line 1745
    iget-object v2, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_34

    .line 1746
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->ensureGroupSyncContentIsMutable()V

    .line 1747
    iget-object v2, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1749
    :cond_34
    invoke-virtual {v2, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;
    :try_end_37
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_37} :catch_1b
    .catchall {:try_start_6 .. :try_end_37} :catchall_19

    goto :goto_4

    .line 1762
    :goto_38
    :try_start_38
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_19

    .line 1764
    :goto_3d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 1765
    throw p1

    .line 1764
    :cond_41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 3

    .line 1678
    instance-of v0, p1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    if-eqz v0, :cond_b

    .line 1679
    check-cast p1, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->mergeFrom(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;

    move-result-object p0

    return-object p0

    .line 1681
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 4

    .line 1687
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->getDefaultInstance()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1688
    :cond_7
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_3a

    .line 1689
    invoke-static {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->-$$Nest$fgetgroupSyncContent_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 1690
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1691
    invoke-static {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->-$$Nest$fgetgroupSyncContent_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    .line 1692
    iget v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->bitField0_:I

    goto :goto_36

    .line 1694
    :cond_2a
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->ensureGroupSyncContentIsMutable()V

    .line 1695
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-static {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->-$$Nest$fgetgroupSyncContent_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1697
    :goto_36
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_76

    .line 1700
    :cond_3a
    invoke-static {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->-$$Nest$fgetgroupSyncContent_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 1701
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1702
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    const/4 v0, 0x0

    .line 1703
    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1704
    invoke-static {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->-$$Nest$fgetgroupSyncContent_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    .line 1705
    iget v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->bitField0_:I

    .line 1707
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->access$100()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1708
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->internalGetGroupSyncContentFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_6a
    iput-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_76

    .line 1710
    :cond_6d
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;->-$$Nest$fgetgroupSyncContent_(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1714
    :cond_76
    :goto_76
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1715
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public removeGroupSyncContent(I)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 3

    .line 1984
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_10

    .line 1985
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->ensureGroupSyncContentIsMutable()V

    .line 1986
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1987
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1989
    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    return-object p0
.end method

.method public setGroupSyncContent(ILme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 4

    .line 1854
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_14

    .line 1855
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->ensureGroupSyncContentIsMutable()V

    .line 1856
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-virtual {p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1857
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1859
    :cond_14
    invoke-virtual {p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent$Builder;->build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method

.method public setGroupSyncContent(ILme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$GroupSyncContent;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;
    .registers 4

    .line 1833
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContentBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_13

    .line 1835
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1837
    invoke-direct {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->ensureGroupSyncContentIsMutable()V

    .line 1838
    iget-object v0, p0, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncContent$Builder;->groupSyncContent_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1839
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    .line 1841
    :cond_13
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object p0
.end method
