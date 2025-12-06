.class public interface abstract Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPushOrBuilder;
.super Ljava/lang/Object;
.source "MsgPushOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/proto/MsgPushOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MsgPushOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic findInitializationErrors()Ljava/util/List;
.end method

.method public abstract synthetic getAllFields()Ljava/util/Map;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/google/protobuf/MessageOrBuilder;->getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
.end method

.method public abstract synthetic getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
.end method

.method public abstract synthetic getInitializationErrorString()Ljava/lang/String;
.end method

.method public abstract synthetic getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Descriptors$FieldDescriptor;
.end method

.method public abstract getQqMessage()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;
.end method

.method public abstract getQqMessageOrBuilder()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessageOrBuilder;
.end method

.method public abstract synthetic getRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
.end method

.method public abstract synthetic getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$FieldDescriptor;)I
.end method

.method public abstract synthetic getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
.end method

.method public abstract synthetic hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
.end method

.method public abstract synthetic hasOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Z
.end method

.method public abstract hasQqMessage()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
