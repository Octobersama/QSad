.class public final Lme/yxp/qfun/hook/msg/RevokeMsgHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "RevokeMsgHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "防撤回"
    desc = "协议防撤回(需保活)"
.end annotation


# static fields
.field private static sOnMsfPushMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAddViewListener:Lme/yxp/qfun/hook/api/OnAIOViewUpdate$AIOViewUpdateListener;

.field private mRetractMessageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$B3Z_voqVNK9uT6777EXtwAsnrNI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 209
    new-instance v0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;

    invoke-direct {v0}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;-><init>()V

    .line 211
    new-instance v1, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$UserItem;

    invoke-static {p0}, Lme/yxp/qfun/utils/qq/FriendTool;->getUinFromUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/FriendTool;->getUinFromUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lme/yxp/qfun/utils/qq/TroopTool;->getMemberName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$UserItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;->append(Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$Item;)Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;

    .line 214
    const-string v1, "尝试撤回"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;->appendText(Ljava/lang/String;)Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;

    .line 215
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    .line 216
    new-instance p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$UserItem;

    invoke-static {p2}, Lme/yxp/qfun/utils/qq/FriendTool;->getUinFromUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {p2}, Lme/yxp/qfun/utils/qq/FriendTool;->getUinFromUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lme/yxp/qfun/utils/qq/TroopTool;->getMemberName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$UserItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p0}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;->append(Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$Item;)Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;

    .line 219
    const-string p0, "的"

    invoke-virtual {v0, p0}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;->appendText(Ljava/lang/String;)Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;

    .line 222
    :cond_3d
    new-instance p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$MsgRefItem;

    const-string p2, "一条消息"

    int-to-long v1, p3

    invoke-direct {p0, p2, v1, v2}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$MsgRefItem;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, p0}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;->append(Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$Item;)Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;

    .line 224
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_Contact()Ljava/lang/Class;

    move-result-object p0

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, ""

    filled-new-array {p2, p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 225
    invoke-virtual {v0}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 p2, 0x7e6

    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;->addLocalGrayTipMsg(Ljava/lang/Object;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$T_ZIx3nRp9AyMbIRzV_sCXu5Nwk(Lme/yxp/qfun/hook/msg/RevokeMsgHook;Landroid/widget/FrameLayout;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->lambda$initCallback$1(Landroid/widget/FrameLayout;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cE6lHt8lkjLbeeHblDedkRLHNrc(Lme/yxp/qfun/hook/msg/RevokeMsgHook;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->lambda$initCallback$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method

.method private addRevokeView(Landroid/widget/FrameLayout;)V
    .registers 4

    const/4 p0, 0x0

    .line 96
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const-string v1, "撤回视图"

    if-ge p0, v0, :cond_21

    .line 97
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 103
    :cond_21
    new-instance p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v0, -0xffff01

    .line 104
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x31

    .line 109
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 110
    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private handleInfoSyncPush([BLme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 9

    .line 143
    invoke-static {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->parseFrom([B)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->getSyncRecallContent()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;->getSyncInfoBodyList()Ljava/util/List;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoBody;

    .line 148
    invoke-virtual {v2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoBody;->getMsgList()Ljava/util/List;

    move-result-object v2

    .line 149
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    .line 150
    invoke-virtual {v3}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageContentInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object v4

    invoke-virtual {v4}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getMsgType()I

    move-result v4

    .line 151
    invoke-virtual {v3}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageContentInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getMsgSubType()I

    move-result v3

    const/16 v5, 0x2dc

    if-ne v4, v5, :cond_48

    const/16 v5, 0x11

    if-eq v3, v5, :cond_50

    :cond_48
    const/16 v5, 0x210

    if-ne v4, v5, :cond_24

    const/16 v4, 0x8a

    if-ne v3, v4, :cond_24

    .line 154
    :cond_50
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 156
    :goto_55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6c

    .line 157
    invoke-virtual {p1, v1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$Builder;->getSyncInfoBodyBuilder(I)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoBody$Builder;

    move-result-object v2

    .line 158
    invoke-virtual {v2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoBody$Builder;->clearMsg()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoBody$Builder;

    .line 159
    invoke-virtual {v2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoBody$Builder;->build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoBody;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$Builder;->setSyncInfoBody(ILme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$SyncInfoBody;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 162
    :cond_6c
    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;->toBuilder()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;

    move-result-object p0

    .line 163
    invoke-virtual {p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo$Builder;->build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;->setSyncRecallContent(Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$SyncRecallOperateInfo;)Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush$Builder;->build()Lme/yxp/qfun/proto/InfoSyncPushOuterClass$InfoSyncPush;

    move-result-object p0

    .line 165
    iget-object p1, p2, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, p1, p2

    :cond_85
    return-void
.end method

.method private handleMsgPush([BLme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 173
    invoke-static {p1}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->parseFrom([B)Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lme/yxp/qfun/proto/MsgPushOuterClass$MsgPush;->getQqMessage()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageContentInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getMsgType()I

    move-result v0

    .line 176
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageContentInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageContentInfo;->getMsgSubType()I

    move-result v1

    .line 177
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage;->getMessageBody()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;

    move-result-object p1

    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody;->getOperationInfo()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    const/16 v2, 0x2dc

    if-ne v0, v2, :cond_30

    const/16 v2, 0x11

    if-ne v1, v2, :cond_30

    .line 180
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->onGroupRecallByMsgPush([BLme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void

    :cond_30
    const/16 v2, 0x210

    if-ne v0, v2, :cond_3b

    const/16 v0, 0x8a

    if-ne v1, v0, :cond_3b

    .line 182
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->onC2CRecallByMsgPush([BLme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    :cond_3b
    return-void
.end method

.method private synthetic lambda$initCallback$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 53
    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    check-cast v1, [B

    .line 56
    const-string v2, "trpc.msg.register_proxy.RegisterProxy.InfoSyncPush"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 57
    invoke-direct {p0, v1, p1}, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->handleInfoSyncPush([BLme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void

    .line 58
    :cond_1c
    const-string v2, "trpc.msg.olpush.OlPushService.MsgPush"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 59
    invoke-direct {p0, v1, p1}, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->handleMsgPush([BLme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    :cond_27
    return-void
.end method

.method private synthetic lambda$initCallback$1(Landroid/widget/FrameLayout;Ljava/lang/Object;)V
    .registers 6

    .line 64
    invoke-static {p2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v1, "msgSeq"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Lme/yxp/qfun/javaplugin/api/MsgData;

    invoke-direct {v1, p2}, Lme/yxp/qfun/javaplugin/api/MsgData;-><init>(Ljava/lang/Object;)V

    .line 67
    iget-object p2, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->mRetractMessageMap:Ljava/util/Map;

    iget-object v2, v1, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUid:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_22

    return-void

    .line 71
    :cond_22
    iget-object p2, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->mRetractMessageMap:Ljava/util/Map;

    iget-object v1, v1, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUid:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 72
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->addRevokeView(Landroid/widget/FrameLayout;)V

    .line 74
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 75
    const-string p2, "已撤回"

    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->setRevokeViewText(Landroid/widget/FrameLayout;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_3b
    const-string p2, ""

    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->setRevokeViewText(Landroid/widget/FrameLayout;Ljava/lang/String;)V

    return-void
.end method

.method private onC2CRecallByMsgPush([BLme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 9

    .line 232
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->parseFrom([B)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getMsgTime()J

    move-result-wide v0

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v2, v0

    const-wide/16 v0, 0xe10

    cmp-long v0, v2, v0

    if-lez v0, :cond_1b

    goto :goto_5e

    .line 235
    :cond_1b
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getMsgSeq()I

    move-result v0

    .line 236
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;

    move-result-object p1

    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$C2CRecallOperationInfo$Info;->getOperatorUid()Ljava/lang/String;

    move-result-object p1

    .line 237
    iget-object v1, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->mRetractMessageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_40

    .line 238
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_5e

    .line 239
    :cond_40
    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->writeAndRefresh(Ljava/lang/String;I)V

    .line 241
    iget-object p0, p2, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 p2, 0x0

    new-array p2, p2, [B

    const/4 v1, 0x1

    aput-object p2, p0, v1

    .line 243
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object p0

    .line 244
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/FriendTool;->getUidFromUin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 245
    new-instance p2, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;

    invoke-direct {p2}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;-><init>()V

    .line 247
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5f

    :goto_5e
    return-void

    .line 250
    :cond_5f
    const-string p0, "对方"

    invoke-virtual {p2, p0}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;->appendText(Ljava/lang/String;)Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;

    .line 253
    const-string p0, "尝试撤回"

    invoke-virtual {p2, p0}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;->appendText(Ljava/lang/String;)Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;

    .line 254
    new-instance p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$MsgRefItem;

    const-string v2, "一条消息"

    int-to-long v3, v0

    invoke-direct {p0, v2, v3, v4}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$MsgRefItem;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p2, p0}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;->append(Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$Item;)Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;

    .line 255
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_Contact()Ljava/lang/Class;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    filled-new-array {v0, p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 256
    invoke-virtual {p2}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x7e5

    invoke-static {p0, p1, v0, v1}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;->addLocalGrayTipMsg(Ljava/lang/Object;Ljava/lang/String;J)V

    return-void
.end method

.method private onGroupRecallByMsgPush([BLme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 9

    const/4 v0, 0x7

    .line 188
    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 189
    invoke-static {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->parseFrom([B)Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getMsgInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getMsgTime()J

    move-result-wide v0

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v2, v0

    const-wide/16 v0, 0xe10

    cmp-long v0, v2, v0

    if-lez v0, :cond_25

    goto :goto_70

    .line 192
    :cond_25
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getMsgInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getMsgSeq()I

    move-result v0

    .line 193
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getPeerId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->mRetractMessageMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_4e

    .line 195
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    goto :goto_70

    .line 196
    :cond_4e
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object v2

    invoke-virtual {v2}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getOperatorUid()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo;->getInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;

    move-result-object p1

    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info;->getMsgInfo()Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;

    move-result-object p1

    invoke-virtual {p1}, Lme/yxp/qfun/proto/QQMessageOuterClass$QQMessage$MessageBody$GroupRecallOperationInfo$Info$MsgInfo;->getSenderUid()Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-static {v3}, Lme/yxp/qfun/utils/qq/FriendTool;->getUidFromUin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    :goto_70
    return-void

    .line 205
    :cond_71
    invoke-direct {p0, v1, v0}, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->writeAndRefresh(Ljava/lang/String;I)V

    .line 206
    iget-object p0, p2, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 p2, 0x0

    new-array p2, p2, [B

    const/4 v3, 0x1

    aput-object p2, p0, v3

    .line 208
    new-instance p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook$$ExternalSyntheticLambda2;

    invoke-direct {p0, v2, v1, p1, v0}, Lme/yxp/qfun/hook/msg/RevokeMsgHook$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "RevokeMsgHook"

    invoke-static {p1, p0}, Lme/yxp/qfun/utils/thread/SyncUtils;->runOnNewThread(Ljava/lang/String;Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method private readData()V
    .registers 3

    .line 123
    const-string v0, "data"

    const-string v1, "retractMessageMap"

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/data/DataUtils;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->mRetractMessageMap:Ljava/util/Map;

    return-void

    .line 127
    :cond_12
    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->mRetractMessageMap:Ljava/util/Map;

    return-void
.end method

.method private setRevokeViewText(Landroid/widget/FrameLayout;Ljava/lang/String;)V
    .registers 5

    const/4 p0, 0x0

    .line 114
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_29

    .line 115
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 116
    const-string v1, "撤回视图"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 117
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_29
    return-void
.end method

.method private writeAndRefresh(Ljava/lang/String;I)V
    .registers 4

    .line 132
    iget-object v0, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->mRetractMessageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_f

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    :cond_f
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object p2, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->mRetractMessageMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string p1, "retractMessageMap"

    iget-object p0, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->mRetractMessageMap:Ljava/util/Map;

    const-string p2, "data"

    invoke-static {p2, p1, p0}, Lme/yxp/qfun/utils/data/DataUtils;->serialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 4

    .line 52
    sget-object v0, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->sOnMsfPushMethod:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/msg/RevokeMsgHook$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/msg/RevokeMsgHook$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/msg/RevokeMsgHook;)V

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lme/yxp/qfun/utils/hook/HookUtils;->hookIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    .line 63
    new-instance v0, Lme/yxp/qfun/hook/msg/RevokeMsgHook$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lme/yxp/qfun/hook/msg/RevokeMsgHook$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/msg/RevokeMsgHook;)V

    iput-object v0, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->mAddViewListener:Lme/yxp/qfun/hook/api/OnAIOViewUpdate$AIOViewUpdateListener;

    return-void
.end method

.method public initMethod()Z
    .registers 4

    .line 42
    const-string p0, "com.tencent.qqnt.kernel.nativeinterface.PushExtraInfo"

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 43
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_QQNTWrapperSession()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "onMsfPush"

    .line 44
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-class v2, [B

    filled-new-array {v1, v2, p0}, [Ljava/lang/Class;

    move-result-object p0

    .line 45
    invoke-virtual {v0, p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->sOnMsfPushMethod:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method

.method public startHook()V
    .registers 2

    .line 84
    invoke-super {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->startHook()V

    .line 85
    invoke-direct {p0}, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->readData()V

    .line 86
    sget-object v0, Lme/yxp/qfun/hook/api/OnAIOViewUpdate;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object p0, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->mAddViewListener:Lme/yxp/qfun/hook/api/OnAIOViewUpdate$AIOViewUpdateListener;

    invoke-virtual {v0, p0}, Lme/yxp/qfun/hook/base/ApiHookItem;->addListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    return-void
.end method

.method public stopHook()V
    .registers 2

    .line 91
    invoke-super {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->stopHook()V

    .line 92
    sget-object v0, Lme/yxp/qfun/hook/api/OnAIOViewUpdate;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object p0, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->mAddViewListener:Lme/yxp/qfun/hook/api/OnAIOViewUpdate$AIOViewUpdateListener;

    invoke-virtual {v0, p0}, Lme/yxp/qfun/hook/base/ApiHookItem;->removeListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    return-void
.end method
