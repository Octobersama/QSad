.class public Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;
.super Ljava/lang/Object;
.source "GrabVoiceRedPacket.java"


# static fields
.field private static BigDataUploader:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static Listener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static upload:Ljava/lang/reflect/Method;


# instance fields
.field private authkey:Ljava/lang/String;

.field private listid:Ljava/lang/String;

.field private msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

.field private title:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0ZE8sLGfbjtH_kH-2Yqe_XiFcaw(Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;Lme/yxp/qfun/hook/redpacket/RedPacketHook;Lme/yxp/qfun/javaplugin/api/MsgData;ZLjava/io/File;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p7}, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->lambda$doGrab$0(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Lme/yxp/qfun/javaplugin/api/MsgData;ZLjava/io/File;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetReqBytes(Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;)[B
    .registers 1

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->getReqBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetupload()Ljava/lang/reflect/Method;
    .registers 1

    .line 0
    sget-object v0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->upload:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v5, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->authkey:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v3, "hb_from"

    invoke-virtual {v2, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v3, "agreement"

    const-string v5, "0"

    invoke-virtual {v2, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v3, "pay_flag"

    invoke-virtual {v2, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v3, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-object v3, v3, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    const-string v5, "groupid"

    invoke-virtual {v2, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v3, "channel"

    const-string v5, "65536"

    invoke-virtual {v2, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v3, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-object v3, v3, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    const-string v5, "senderuin"

    invoke-virtual {v2, v5, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v3, "listid"

    iget-object v5, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->listid:Ljava/lang/String;

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

    invoke-virtual {v2, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    const-string v3, "groupuin"

    invoke-virtual {v2, v3, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string p0, "tinyid"

    invoke-virtual {v2, p0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string p0, "guild_id"

    invoke-virtual {v2, p0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string p0, "name"

    invoke-virtual {v2, p0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string p0, "uin"

    invoke-virtual {v2, p0, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string p0, "msg_id"

    invoke-virtual {v2, p0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string p0, "msg_md5"

    invoke-virtual {v2, p0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string p0, "msg_seq"

    invoke-virtual {v2, p0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private getReqBytes()[B
    .registers 4

    .line 79
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 80
    const-string v1, "bill_no"

    iget-object v2, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->listid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v1, "voice_text"

    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "make_uin"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string p0, "platform"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static initMethod()V
    .registers 3

    .line 40
    const-string v0, "com.tencent.qqnt.qwallet.bigdata.BigDataUploader"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->BigDataUploader:Ljava/lang/Class;

    .line 41
    const-string v0, "GrabVoiceRedPacket"

    invoke-static {v0}, Lme/yxp/qfun/utils/dexkit/DexKit;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->Listener:Ljava/lang/Class;

    .line 42
    sget-object v0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->BigDataUploader:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-class v2, [B

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->upload:Ljava/lang/reflect/Method;

    return-void
.end method

.method private synthetic lambda$doGrab$0(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Lme/yxp/qfun/javaplugin/api/MsgData;ZLjava/io/File;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 102
    :try_start_0
    invoke-virtual {p6}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result p5

    const/4 p6, 0x1

    if-ne p5, p6, :cond_32

    .line 104
    new-instance p5, Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p7, p7, v0

    check-cast p7, [B

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p5, p7, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 105
    new-instance p7, Lorg/json/JSONObject;

    invoke-direct {p7, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p5, "status"

    invoke-virtual {p7, p5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p5

    if-ne p5, p6, :cond_3b

    .line 108
    new-instance p5, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;

    invoke-direct {p0}, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->getHbgrabReqMap()Ljava/util/Map;

    move-result-object p0

    invoke-direct {p5, p1, p2, p0, p3}, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;-><init>(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Lme/yxp/qfun/javaplugin/api/MsgData;Ljava/util/Map;Z)V

    invoke-virtual {p5}, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->doGrabHb()V

    .line 109
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    goto :goto_3b

    :catchall_30
    move-exception p0

    goto :goto_38

    .line 113
    :cond_32
    const-string p0, "未知错误"

    invoke-static {p6, p0}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_30

    goto :goto_3b

    .line 116
    :goto_38
    invoke-static {p1, p0}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public doGrab(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Ljava/lang/String;Ljava/lang/String;Lme/yxp/qfun/javaplugin/api/MsgData;Ljava/lang/String;Z)V
    .registers 14

    .line 91
    iput-object p2, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->listid:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->authkey:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->title:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    .line 96
    const-string p2, "temp"

    const-string p3, " temp.slk"

    invoke-static {p2, p3}, Lme/yxp/qfun/utils/data/DataUtils;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 97
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 99
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->getHostClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    sget-object v0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->Listener:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v6

    new-instance v0, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;Lme/yxp/qfun/hook/redpacket/RedPacketHook;Lme/yxp/qfun/javaplugin/api/MsgData;ZLjava/io/File;)V

    invoke-static {p3, v6, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 121
    sget-object p1, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->BigDataUploader:Ljava/lang/Class;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 123
    const-string p1, "https://api.jkyai.top/API/xsyyhc.php?msg=title"

    const-string p3, "title"

    invoke-virtual {p1, p3, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$1;

    invoke-direct {p3, v1, p0, p2, v2}, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket$1;-><init>(Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;Ljava/lang/Object;Ljava/lang/String;Lme/yxp/qfun/hook/redpacket/RedPacketHook;)V

    invoke-static {p1, p2, p3}, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->convertMp3ApiToSilk(Ljava/lang/String;Ljava/lang/String;Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;)V

    return-void
.end method
