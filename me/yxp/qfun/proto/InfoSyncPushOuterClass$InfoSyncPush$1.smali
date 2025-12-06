.class Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$1;
.super Lcom/google/protobuf/AbstractParser;
.source "InfoSyncPushOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5681
    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3

    .line 5681
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    move-result-object p0

    return-object p0
.end method

.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;
    .registers 3

    .line 5687
    invoke-static {}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->newBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;

    move-result-object p0

    .line 5689
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;
    :try_end_7
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_7} :catch_29
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_4 .. :try_end_7} :catch_1b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_c

    .line 5698
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;->buildPartial()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    move-result-object p0

    return-object p0

    :catch_c
    move-exception p1

    .line 5695
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 5696
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;->buildPartial()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1b
    move-exception p1

    .line 5693
    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;->buildPartial()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_29
    move-exception p1

    .line 5691
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;->buildPartial()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method
