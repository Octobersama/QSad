.class public Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;
.super Ljava/lang/Object;
.source "GrabCommandRedPacket.java"


# static fields
.field private static IMsgOperateCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private answer:Ljava/lang/String;

.field private authkey:Ljava/lang/String;

.field private listid:Ljava/lang/String;

.field private msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

.field private msg_id:Ljava/lang/String;

.field private msg_md5:Ljava/lang/String;

.field private msg_seq:Ljava/lang/String;

.field private needCheck:Z

.field private redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;


# direct methods
.method public static synthetic $r8$lambda$Imn2mzNEvs9_CwX7EjO13Rf_ofg(Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;Lme/yxp/qfun/hook/redpacket/RedPacketHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->lambda$doGrab$0(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MoatSn_a_1Tu2JVQMK6ndFjq9r4(Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;Ljava/lang/String;Lme/yxp/qfun/hook/redpacket/RedPacketHook;Lme/yxp/qfun/javaplugin/api/MsgData;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->lambda$doGrab$1(Ljava/lang/String;Lme/yxp/qfun/hook/redpacket/RedPacketHook;Lme/yxp/qfun/javaplugin/api/MsgData;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private chekResult(Ljava/lang/Object;)V
    .registers 8

    .line 132
    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v1, "msgRandom"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->msg_id:Ljava/lang/String;

    .line 133
    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v1, "clientSeq"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->msg_seq:Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    const-string v0, "msgId"

    invoke-virtual {p1, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    invoke-virtual {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 136
    new-instance p1, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;

    iget-object v2, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iget-object v3, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    invoke-direct {p0}, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->getHbgrabReqMap()Ljava/util/Map;

    move-result-object v4

    iget-boolean v5, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->needCheck:Z

    invoke-direct {p1, v2, v3, v4, v5}, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;-><init>(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Lme/yxp/qfun/javaplugin/api/MsgData;Ljava/util/Map;Z)V

    invoke-virtual {p1}, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->doGrabHb()V

    const-wide/16 v2, 0x64

    .line 137
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 138
    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->contact:Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lme/yxp/qfun/utils/qq/MsgTool;->recallMsg(Ljava/lang/Object;J)V

    return-void
.end method

.method private getHbgrabReqMap()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentNickname()Ljava/lang/String;

    move-result-object v1

    .line 51
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 52
    const-string v3, "subchanne"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v3, "authkey"

    iget-object v5, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->authkey:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v3, "hb_from"

    const-string v5, "0"

    invoke-virtual {v2, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v3, "agreement"

    invoke-virtual {v2, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v3, "pay_flag"

    invoke-virtual {v2, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v3, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-object v3, v3, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    const-string v5, "groupid"

    invoke-virtual {v2, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v3, "channel"

    const-string v5, "32"

    invoke-virtual {v2, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v3, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-object v3, v3, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    const-string v5, "senderuin"

    invoke-virtual {v2, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v3, "listid"

    iget-object v5, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->listid:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v3, "grouptype"

    const-string v5, "1"

    invoke-virtual {v2, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v3, "sub_guild_id"

    invoke-virtual {v2, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v3, "answer"

    iget-object v5, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->answer:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v3, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-object v3, v3, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    const-string v5, "groupuin"

    invoke-virtual {v2, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v3, "tinyid"

    invoke-virtual {v2, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v3, "guild_id"

    invoke-virtual {v2, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v3, "name"

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "uin"

    invoke-virtual {v2, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "msg_id"

    iget-object v1, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->msg_id:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "msg_md5"

    iget-object v1, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->msg_md5:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "msg_seq"

    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->msg_seq:Ljava/lang/String;

    invoke-virtual {v2, v0, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private getMd5(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 79
    const-string p0, "MD5"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/16 p1, 0x10

    .line 80
    new-array v0, p1, [C

    fill-array-data v0, :array_48

    .line 81
    array-length v1, p0

    if-ne v1, p1, :cond_45

    const/16 v1, 0x20

    .line 82
    new-array v1, v1, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v2, p1, :cond_39

    .line 85
    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    ushr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 88
    aget-char v6, v0, v6

    aput-char v6, v1, v3

    add-int/lit8 v3, v3, 0x2

    and-int/lit8 v4, v4, 0xf

    .line 90
    aget-char v4, v0, v4

    aput-char v4, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 92
    :cond_39
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_45
    const-string p0, ""

    return-object p0

    :array_48
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static initMethod()V
    .registers 1

    .line 43
    const-string v0, "com.tencent.qqnt.kernel.nativeinterface.IMsgOperateCallback"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->IMsgOperateCallback:Ljava/lang/Class;

    return-void
.end method

.method private synthetic lambda$doGrab$0(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 114
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onResult"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_e

    return-object p3

    :cond_e
    const/4 p2, 0x2

    .line 116
    aget-object p2, p4, p2

    check-cast p2, Ljava/util/List;

    .line 117
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1a

    return-object p3

    :cond_1a
    const/4 p4, 0x0

    .line 120
    :try_start_1b
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->chekResult(Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception p0

    .line 122
    invoke-static {p1, p0}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    :goto_27
    return-object p3
.end method

.method private synthetic lambda$doGrab$1(Ljava/lang/String;Lme/yxp/qfun/hook/redpacket/RedPacketHook;Lme/yxp/qfun/javaplugin/api/MsgData;)V
    .registers 7

    .line 110
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->msg_md5:Ljava/lang/String;

    .line 112
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->getHostClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->IMsgOperateCallback:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;Lme/yxp/qfun/hook/redpacket/RedPacketHook;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 126
    invoke-static {p3, p1, p0}, Lme/yxp/qfun/utils/qq/MsgTool;->sendTextWithInterface(Lme/yxp/qfun/javaplugin/api/MsgData;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public doGrab(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Ljava/lang/String;Ljava/lang/String;Lme/yxp/qfun/javaplugin/api/MsgData;Ljava/lang/String;Z)V
    .registers 7

    .line 101
    iput-object p1, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    .line 102
    iput-object p2, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->listid:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->authkey:Ljava/lang/String;

    .line 104
    iput-object p4, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    .line 105
    iput-object p5, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->answer:Ljava/lang/String;

    .line 106
    iput-boolean p6, p0, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->needCheck:Z

    .line 108
    invoke-virtual {p1}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p5, p1, p4}, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;Ljava/lang/String;Lme/yxp/qfun/hook/redpacket/RedPacketHook;Lme/yxp/qfun/javaplugin/api/MsgData;)V

    invoke-static {p2, p3}, Lme/yxp/qfun/utils/thread/SyncUtils;->runOnNewThread(Ljava/lang/String;Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method
