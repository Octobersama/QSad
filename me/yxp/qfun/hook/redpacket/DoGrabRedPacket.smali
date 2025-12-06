.class public Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;
.super Ljava/lang/Object;
.source "DoGrabRedPacket.java"


# instance fields
.field private final msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

.field private final needCheck:Z

.field private final redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

.field private final reqMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-1p2uPhM1sWd5DpiVPQuhvohqgE(Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->lambda$doGrabHb$0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$I-YvKUPZfdEJM18ODeuj3PzU2ns(Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;Lme/yxp/qfun/javaplugin/api/MsgData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->lambda$onSuccess$2(Lme/yxp/qfun/javaplugin/api/MsgData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RMhvLI8Jghre3cNTxnCp4yJDqMQ(Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->lambda$doGrabHb$1()V

    return-void
.end method

.method public constructor <init>(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Lme/yxp/qfun/javaplugin/api/MsgData;Ljava/util/Map;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/yxp/qfun/hook/redpacket/RedPacketHook;",
            "Lme/yxp/qfun/javaplugin/api/MsgData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    .line 39
    iput-object p2, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    .line 41
    iput-object p3, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->reqMap:Ljava/util/Map;

    .line 43
    iput-boolean p4, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->needCheck:Z

    return-void
.end method

.method private checkResult(Landroid/os/Bundle;)V
    .registers 6

    .line 119
    const-string v0, "tencent.im.qqwallet.QWalletHbPreGrab$QQHBReply"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 121
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    const-string v2, "rsp_bytes"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 124
    const-class v2, [B

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "mergeFrom"

    invoke-static {v0, v3, v2, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 126
    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    const-string v0, "retCode"

    invoke-virtual {p1, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    invoke-virtual {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 128
    new-array v0, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "get"

    invoke-static {p1, v2, v0, v1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 129
    iget-object p1, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->msgData:Lme/yxp/qfun/javaplugin/api/MsgData;

    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->onSuccess(Lme/yxp/qfun/javaplugin/api/MsgData;)V

    :cond_4c
    return-void
.end method

.method private getEncryptResult()Ljava/lang/Object;
    .registers 13

    .line 49
    const-string v0, "com.tenpay.sdk.net.core.processor.PsKeyProcessor"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    const-string v1, "com.tenpay.sdk.net.core.comm.SessionKey"

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 51
    const-string v2, "com.tenpay.sdk.net.core.processor.EncryptProcessor"

    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 53
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v3

    const-string v4, "getPsKey"

    invoke-virtual {v3, v4}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v3

    invoke-virtual {v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v3

    .line 54
    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v4

    const-string v5, "processEncrypt"

    invoke-virtual {v4, v5}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v4

    invoke-virtual {v4}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    .line 56
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    const-string v6, "https://mqq.tenpay.com/cgi-bin/hongbao/qpay_hb_na_grap.cgi?"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 58
    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v3

    const-string v6, "qpay_hb_na_grap"

    filled-new-array {v6, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 57
    invoke-static {v1, v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 60
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget-object v8, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->reqMap:Ljava/util/Map;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v11, 0x0

    const-string v6, "https://mqq.tenpay.com/cgi-bin/hongbao/qpay_hb_na_grap.cgi?"

    move-object v10, v9

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$doGrabHb$0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 91
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onReceive"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x2

    .line 93
    aget-object p1, p3, p1

    check-cast p1, Landroid/os/Bundle;

    .line 95
    :try_start_11
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->checkResult(Landroid/os/Bundle;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_1f

    :catchall_15
    move-exception p1

    .line 97
    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$doGrabHb$1()V
    .registers 12

    .line 69
    invoke-direct {p0}, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->getEncryptResult()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v1, "bodyData"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 72
    const-string v1, "com.tencent.mobileqq.pb.ByteStringMicro"

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 73
    const-string v2, "tencent.im.qqwallet.QWalletHbPreGrab$QQHBRequest"

    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 74
    const-string v3, "mqq.app.NewIntent"

    invoke-static {v3}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 75
    const-string v4, "mqq.observer.BusinessObserver"

    invoke-static {v4}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 77
    iget-object v5, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    .line 78
    invoke-virtual {v5, v0}, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->processMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 77
    invoke-static {v1, v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v5, 0x0

    .line 79
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 81
    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v6

    const-string v7, "cgiName"

    invoke-virtual {v6, v7}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v6

    invoke-virtual {v6}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 82
    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v7

    const-string v8, "reqBody"

    invoke-virtual {v7, v8}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v7

    invoke-virtual {v7}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 84
    const-class v8, Ljava/lang/String;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    const-string v9, "qpay_hb_na_grap"

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "set"

    invoke-static {v6, v10, v8, v9}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v10, v1, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    new-array v1, v5, [Ljava/lang/Class;

    new-array v5, v5, [Ljava/lang/Object;

    .line 88
    const-string v6, "toByteArray"

    invoke-static {v2, v6, v1, v5}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 87
    invoke-virtual {v0, v1}, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->add4byte([B)[B

    move-result-object v0

    .line 89
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->getHostClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v2

    new-instance v5, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;)V

    invoke-static {v1, v2, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iget-object v5, v5, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->Servlet:Ljava/lang/Class;

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 106
    const-string v3, "cmd"

    const-string v5, "trpc.qqhb.qqhb_proxy.Handler.sso_handle"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 108
    const-string v0, "timeout"

    const-wide/16 v5, 0x7530

    invoke-virtual {v2, v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 109
    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "setObserver"

    invoke-static {v2, v3, v0, v1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->startServlet:Ljava/lang/reflect/Method;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getQQAppInterface()Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$onSuccess$2(Lme/yxp/qfun/javaplugin/api/MsgData;)V
    .registers 4

    .line 141
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 142
    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    const-string v1, "replys"

    invoke-virtual {p0, v1}, Lme/yxp/qfun/utils/data/TernaryDataList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 143
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 144
    iget-object p1, p1, Lme/yxp/qfun/javaplugin/api/MsgData;->contact:Ljava/lang/Object;

    invoke-static {p1, p0}, Lme/yxp/qfun/utils/qq/MsgTool;->sendMsg(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private onSuccess(Lme/yxp/qfun/javaplugin/api/MsgData;)V
    .registers 4

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->needCheck:Z

    if-eqz v1, :cond_c

    const-string v1, "自"

    goto :goto_e

    :cond_c
    const-string v1, "手"

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "动抢红包成功"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    .line 137
    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    iget-object v0, v0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    const-string v1, "replys"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->needCheck:Z

    if-eqz v0, :cond_3c

    .line 139
    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    invoke-virtual {v0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket$$ExternalSyntheticLambda2;-><init>(Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;Lme/yxp/qfun/javaplugin/api/MsgData;)V

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/thread/SyncUtils;->runOnNewThread(Ljava/lang/String;Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    :cond_3c
    return-void
.end method


# virtual methods
.method public doGrabHb()V
    .registers 3

    .line 67
    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;->redPacketHook:Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    invoke-virtual {v0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/redpacket/DoGrabRedPacket;)V

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/thread/SyncUtils;->runOnNewThread(Ljava/lang/String;Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method
