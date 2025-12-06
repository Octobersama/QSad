.class public final Lme/yxp/qfun/proto/MsgPushOuterClass;
.super Lcom/google/protobuf/GeneratedFile;
.source "MsgPushOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;,
        Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPushOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_me_yxp_qfun_proto_MsgPush_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_me_yxp_qfun_proto_MsgPush_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetinternal_static_me_yxp_qfun_proto_MsgPush_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .line 0
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass;->internal_static_me_yxp_qfun_proto_MsgPush_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetinternal_static_me_yxp_qfun_proto_MsgPush_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 1

    .line 0
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass;->internal_static_me_yxp_qfun_proto_MsgPush_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 12
    sget-object v0, Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;

    const-class v1, Lme/yxp/qfun/proto/MsgPushOuterClass;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    const/16 v2, 0x20

    const/4 v3, 0x1

    .line 12
    const-string v4, ""

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/RuntimeVersion;->validateProtobufGencodeVersion(Lcom/google/protobuf/RuntimeVersion$RuntimeDomain;IIILjava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v0, "\n\rMsgPush.proto\u0012\u0011me.yxp.qfun.proto\u001a\u000fQQMessage.proto\":\n\u0007MsgPush\u0012/\n\tqqMessage\u0018\u0001 \u0001(\u000b2\u001c.me.yxp.qfun.proto.QQMessageB\u0013\n\u0011me.yxp.qfun.protob\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 621
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    filled-new-array {v1}, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    .line 619
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 624
    invoke-static {}, Lme/yxp/qfun/proto/MsgPushOuterClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass;->internal_static_me_yxp_qfun_proto_MsgPush_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 625
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "QqMessage"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lme/yxp/qfun/proto/MsgPushOuterClass;->internal_static_me_yxp_qfun_proto_MsgPush_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 629
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->resolveAllFeaturesImmutable()V

    .line 630
    invoke-static {}, Lme/yxp/qfun/proto/QQMessageOuterClass;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedFile;-><init>()V

    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .registers 1

    .line 607
    sget-object v0, Lme/yxp/qfun/proto/MsgPushOuterClass;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .registers 1

    .line 26
    invoke-static {p0}, Lme/yxp/qfun/proto/MsgPushOuterClass;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 1

    .line 0
    return-void
.end method
