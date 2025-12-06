.class public Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;
.super Ljava/lang/Object;
.source "PreGrabRedPacket.java"


# instance fields
.field private answer:Ljava/lang/String;

.field private authkey:Ljava/lang/String;

.field private channel:I

.field private listid:Ljava/lang/String;

.field private msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

.field private needCheck:Z

.field private randomInt:I

.field private redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;


# direct methods
.method public static synthetic $r8$lambda$6BX5G1ulOJXP21_f6mcxLmn9BwM(Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;Landroid/os/Bundle;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->lambda$preGrabHb$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e97gSxvED7Q1fFkC2QSTtAcygl4(Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;Lme/yxp/qfun/hook/redpacket/RedPacketHook;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->lambda$preGrabHb$2(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$mBE6D86by8pNpl-sI9M0qxGreek(Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;Lme/yxp/qfun/hook/redpacket/RedPacketHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->lambda$preGrabHb$1(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkHbdetail(Ljava/lang/String;)V
    .registers 19

    move-object/from16 v0, p0

    .line 163
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    const-string v2, "retcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_a7

    .line 168
    :cond_13
    const-string v2, "send_object"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 170
    const-string v3, "total_amount"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 171
    const-string v5, "total_num"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 172
    const-string v8, "recv_num"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    div-double/2addr v3, v5

    .line 175
    invoke-virtual {v7, v2}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_51

    .line 176
    iget-boolean v0, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->needCheck:Z

    if-nez v0, :cond_a7

    .line 177
    const-string v0, "这个红包已经被领完了！"

    invoke-static {v5, v0}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    return-void

    .line 181
    :cond_51
    iget-object v2, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iget-object v2, v2, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    const-string v6, "average"

    invoke-virtual {v2, v6}, Lme/yxp/qfun/utils/data/TernaryDataList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpg-double v2, v3, v7

    if-gez v2, :cond_9b

    iget-object v2, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iget-object v2, v2, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    .line 182
    invoke-virtual {v2, v6}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9b

    iget-boolean v2, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->needCheck:Z

    if-eqz v2, :cond_9b

    .line 183
    iget-object v1, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iget-object v2, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iget-object v3, v3, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v3, v6}, Lme/yxp/qfun/utils/data/TernaryDataList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->channel:I

    invoke-virtual {v1, v2, v3, v5, v0}, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->sendReasonMsg(Lme/yxp/qfun/javaplugin/api/MsgData;Ljava/lang/String;II)V

    return-void

    .line 188
    :cond_9b
    iget v2, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->channel:I

    if-ne v2, v5, :cond_bf

    .line 189
    const-string v2, "pre_grap_token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a8

    :cond_a7
    :goto_a7
    return-void

    .line 191
    :cond_a8
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 192
    new-instance v4, Lme/yxp/qfun/hook/redpacket/GrabLuckyRedPacket;

    invoke-direct {v4}, Lme/yxp/qfun/hook/redpacket/GrabLuckyRedPacket;-><init>()V

    iget-object v5, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iget-object v6, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->listid:Ljava/lang/String;

    iget-object v7, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->authkey:Ljava/lang/String;

    iget-object v8, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-boolean v10, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->needCheck:Z

    invoke-virtual/range {v4 .. v10}, Lme/yxp/qfun/hook/redpacket/GrabLuckyRedPacket;->doGrab(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Ljava/lang/String;Ljava/lang/String;Lme/yxp/qfun/javaplugin/api/MsgData;Ljava/lang/String;Z)V

    return-void

    :cond_bf
    const/16 v1, 0x20

    if-ne v2, v1, :cond_d8

    .line 194
    new-instance v3, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;

    invoke-direct {v3}, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;-><init>()V

    iget-object v4, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iget-object v5, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->listid:Ljava/lang/String;

    iget-object v6, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->authkey:Ljava/lang/String;

    iget-object v7, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-object v8, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->answer:Ljava/lang/String;

    iget-boolean v9, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->needCheck:Z

    invoke-virtual/range {v3 .. v9}, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->doGrab(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Ljava/lang/String;Ljava/lang/String;Lme/yxp/qfun/javaplugin/api/MsgData;Ljava/lang/String;Z)V

    return-void

    .line 196
    :cond_d8
    new-instance v10, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;

    invoke-direct {v10}, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;-><init>()V

    iget-object v11, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iget-object v12, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->listid:Ljava/lang/String;

    iget-object v13, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->authkey:Ljava/lang/String;

    iget-object v14, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-object v15, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->answer:Ljava/lang/String;

    iget-boolean v0, v0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->needCheck:Z

    move/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->doGrab(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Ljava/lang/String;Ljava/lang/String;Lme/yxp/qfun/javaplugin/api/MsgData;Ljava/lang/String;Z)V

    return-void
.end method

.method private checkResult(Landroid/os/Bundle;)V
    .registers 8

    .line 141
    const-string v0, "tencent.im.qqwallet.QWalletHbPreGrab$QQHBReply"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 142
    const-string v1, "com.tenpay.sdk.basebl.EncryptRequest"

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 144
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    const-string v3, "decypt"

    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    .line 146
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 149
    const-class v4, [B

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "rsp_bytes"

    .line 150
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 149
    const-string v5, "mergeFrom"

    invoke-static {v0, v5, v4, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 151
    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    const-string v0, "rspText"

    invoke-virtual {p1, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    invoke-virtual {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 153
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v0

    .line 154
    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "get"

    invoke-static {p1, v5, v4, v3}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 155
    iget v3, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->randomInt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "hb_pre_grap"

    filled-new-array {v0, v4, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 156
    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    const-string v0, "decryptStr"

    invoke-virtual {p1, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    invoke-virtual {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 157
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->checkHbdetail(Ljava/lang/String;)V

    return-void
.end method

.method private getHbPreGrabReqMap()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 47
    const-string v1, "listid"

    iget-object v2, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->listid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget v1, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->channel:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-object v1, v1, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    const-string v2, "groupid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "grouptype"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-object v1, v1, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    const-string v2, "groupuin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "name"

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentNickname()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "pay_flag"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "authkey"

    iget-object v3, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->authkey:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "uin"

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget p0, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->randomInt:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "trans_seq"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string p0, "hb_from"

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private synthetic lambda$preGrabHb$0(Landroid/os/Bundle;)V
    .registers 2

    .line 121
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->checkResult(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$preGrabHb$1(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 118
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onReceive"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    const/4 p2, 0x2

    .line 120
    aget-object p2, p4, p2

    check-cast p2, Landroid/os/Bundle;

    .line 121
    invoke-virtual {p1}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p2}, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda2;-><init>(Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;Landroid/os/Bundle;)V

    invoke-static {p1, p3}, Lme/yxp/qfun/utils/thread/SyncUtils;->runOnNewThread(Ljava/lang/String;Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$preGrabHb$2(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Z)V
    .registers 16

    .line 77
    iget-object v0, p1, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz p2, :cond_1b

    .line 78
    iget-object p2, p1, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {p2, v1}, Lme/yxp/qfun/utils/data/TernaryDataList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 81
    :cond_1b
    const-string p2, "com.tenpay.sdk.basebl.EncryptRequest"

    invoke-static {p2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 82
    const-string v0, "com.tencent.mobileqq.qwallet.api.impl.NewQWalletApiImpl"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 83
    const-string v1, "tencent.im.qqwallet.QWalletHbPreGrab$QQHBRequest"

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 84
    const-string v2, "mqq.app.NewIntent"

    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 85
    const-string v3, "mqq.observer.BusinessObserver"

    invoke-static {v3}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 87
    invoke-static {p2}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v4

    const-string v5, "encypt"

    invoke-virtual {v4, v5}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v4

    invoke-virtual {v4}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v4

    .line 88
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v5

    const-string v6, "hexGuid"

    invoke-virtual {v5, v6}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v5

    invoke-virtual {v5}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v5

    .line 90
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {p2, v6}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v6, 0x0

    .line 91
    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v0, v7}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v7}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 94
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v7

    .line 95
    invoke-direct {p0}, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->getHbPreGrabReqMap()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p1, v8}, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->processMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 96
    const-string v8, "tenpay.com"

    invoke-static {v8}, Lme/yxp/qfun/utils/qq/CookieTool;->getPskey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x0

    .line 97
    invoke-virtual {v5, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 99
    iget v0, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->randomInt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v8, "hb_pre_grapver=2.0&chv=3"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 102
    invoke-static {p2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p2

    const-string v0, "encText"

    invoke-virtual {p2, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p2

    invoke-virtual {p2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 104
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v4, "cgiName"

    invoke-virtual {v0, v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 105
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v4

    const-string v5, "reqText"

    invoke-virtual {v4, v5}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v4

    invoke-virtual {v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 106
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v5

    const-string v7, "random"

    invoke-virtual {v5, v7}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v5

    invoke-virtual {v5}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 107
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v7

    const-string v8, "enType"

    invoke-virtual {v7, v8}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v7

    invoke-virtual {v7}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 109
    const-class v8, Ljava/lang/String;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v9

    const-string v10, "hb_pre_grap"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "set"

    invoke-static {v0, v11, v9, v10}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v4, v11, v0, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object p2

    iget v0, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->randomInt:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v11, p2, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v11, p2, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-array p2, v6, [Ljava/lang/Class;

    new-array v0, v6, [Ljava/lang/Object;

    .line 115
    const-string v4, "toByteArray"

    invoke-static {v1, v4, p2, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 114
    invoke-virtual {p1, p2}, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->add4byte([B)[B

    move-result-object p2

    .line 116
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->getHostClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v1

    new-instance v4, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1}, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;Lme/yxp/qfun/hook/redpacket/RedPacketHook;)V

    invoke-static {v0, v1, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 127
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->Servlet:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 129
    const-string v1, "cmd"

    const-string v2, "trpc.qqhb.qqhb_proxy.Handler.sso_handle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 131
    const-string p2, "timeout"

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 132
    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object p2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "setObserver"

    invoke-static {v0, v1, p2, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object p0, p1, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->startServlet:Ljava/lang/reflect/Method;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getQQAppInterface()Ljava/lang/Object;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public preGrabHb(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILme/yxp/qfun/javaplugin/api/MsgData;Z)V
    .registers 8

    .line 66
    iput-object p1, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    .line 67
    iput-object p2, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->listid:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->authkey:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->answer:Ljava/lang/String;

    .line 70
    iput p5, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->channel:I

    .line 71
    iput-object p6, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    .line 72
    iput-boolean p7, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->needCheck:Z

    .line 73
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    rem-int/lit8 p2, p2, 0x10

    iput p2, p0, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->randomInt:I

    .line 75
    invoke-virtual {p1}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p7}, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;Lme/yxp/qfun/hook/redpacket/RedPacketHook;Z)V

    invoke-static {p2, p3}, Lme/yxp/qfun/utils/thread/SyncUtils;->runOnNewThread(Ljava/lang/String;Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method
