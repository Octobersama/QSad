.class public Lme/yxp/qfun/hook/redpacket/GrabLuckyRedPacket;
.super Ljava/lang/Object;
.source "GrabLuckyRedPacket.java"


# instance fields
.field private authkey:Ljava/lang/String;

.field private listid:Ljava/lang/String;

.field private msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

.field private pre_grap_token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getHbgrabReqMap()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentNickname()Ljava/lang/String;

    move-result-object v1

    .line 23
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    const-string v3, "subchanne"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v3, "authkey"

    iget-object v5, p0, Lme/yxp/qfun/hook/redpacket/GrabLuckyRedPacket;->authkey:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v3, "hb_from"

    const-string v5, "0"

    invoke-virtual {v2, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v3, "agreement"

    invoke-virtual {v2, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v3, "pay_flag"

    invoke-virtual {v2, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v3, p0, Lme/yxp/qfun/hook/redpacket/GrabLuckyRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-object v3, v3, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    const-string v5, "groupid"

    invoke-virtual {v2, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v3, "channel"

    const-string v5, "1"

    invoke-virtual {v2, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v3, "pre_grap_token"

    iget-object v6, p0, Lme/yxp/qfun/hook/redpacket/GrabLuckyRedPacket;->pre_grap_token:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v3, p0, Lme/yxp/qfun/hook/redpacket/GrabLuckyRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-object v3, v3, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    const-string v6, "senderuin"

    invoke-virtual {v2, v6, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v3, "listid"

    iget-object v6, p0, Lme/yxp/qfun/hook/redpacket/GrabLuckyRedPacket;->listid:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v3, "grouptype"

    invoke-virtual {v2, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v3, "sub_guild_id"

    invoke-virtual {v2, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v3, "answer"

    invoke-virtual {v2, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/GrabLuckyRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    const-string v3, "groupuin"

    invoke-virtual {v2, v3, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string p0, "tinyid"

    invoke-virtual {v2, p0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string p0, "guild_id"

    invoke-virtual {v2, p0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string p0, "name"

    invoke-virtual {v2, p0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string p0, "uin"

    invoke-virtual {v2, p0, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string p0, "msg_md5"

    invoke-virtual {v2, p0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string p0, "msg_seq"

    invoke-virtual {v2, p0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string p0, "msg_id"

    invoke-virtual {v2, p0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method


# virtual methods
.method public doGrab(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Ljava/lang/String;Ljava/lang/String;Lme/yxp/qfun/javaplugin/api/MsgData;Ljava/lang/String;Z)V
    .registers 7

    .line 53
    iput-object p2, p0, Lme/yxp/qfun/hook/redpacket/GrabLuckyRedPacket;->listid:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lme/yxp/qfun/hook/redpacket/GrabLuckyRedPacket;->authkey:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lme/yxp/qfun/hook/redpacket/GrabLuckyRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    .line 56
    iput-object p5, p0, Lme/yxp/qfun/hook/redpacket/GrabLuckyRedPacket;->pre_grap_token:Ljava/lang/String;

    .line 58
    new-instance p2, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;

    invoke-direct {p0}, Lme/yxp/qfun/hook/redpacket/GrabLuckyRedPacket;->getHbgrabReqMap()Ljava/util/Map;

    move-result-object p0

    invoke-direct {p2, p1, p4, p0, p6}, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;-><init>(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Lme/yxp/qfun/javaplugin/api/MsgData;Ljava/util/Map;Z)V

    invoke-virtual {p2}, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->doGrabHb()V

    return-void
.end method
