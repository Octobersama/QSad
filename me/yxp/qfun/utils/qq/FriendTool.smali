.class public Lme/yxp/qfun/utils/qq/FriendTool;
.super Ljava/lang/Object;
.source "FriendTool.java"


# static fields
.field private static FriendsInfoServiceImpl:Ljava/lang/Object;

.field private static RelationNTUinAndUidApiImpl:Ljava/lang/Object;

.field private static sCardHandler:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sSendZan:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    :try_start_0
    invoke-static {}, Lme/yxp/qfun/utils/qq/FriendTool;->initMethod()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    .line 27
    const-string v1, "FriendTool"

    invoke-static {v1, v0}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createZanRequestData(Ljava/lang/String;)[B
    .registers 6

    const/16 v0, 0xa

    .line 100
    new-array v0, v0, [B

    const/16 v1, 0xc

    const/4 v2, 0x0

    .line 101
    aput-byte v1, v0, v2

    const/16 v1, 0x18

    const/4 v3, 0x1

    .line 102
    aput-byte v1, v0, v3

    const/4 v1, 0x2

    .line 103
    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 104
    aput-byte v3, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x6

    .line 105
    aput-byte v2, v0, v1

    const/4 v1, 0x5

    .line 106
    aput-byte v3, v0, v1

    const/16 v1, 0x31

    .line 107
    aput-byte v1, v0, v2

    const/4 v2, 0x7

    const/16 v4, 0x16

    .line 108
    aput-byte v4, v0, v2

    const/16 v2, 0x8

    .line 109
    aput-byte v3, v0, v2

    .line 111
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/FriendTool;->isFriend(Ljava/lang/String;)Z

    move-result p0

    const/16 v2, 0x9

    if-eqz p0, :cond_33

    .line 112
    aput-byte v1, v0, v2

    return-object v0

    :cond_33
    const/16 p0, 0x35

    .line 114
    aput-byte p0, v0, v2

    return-object v0
.end method

.method private static determineZanType(Ljava/lang/String;)I
    .registers 1

    .line 121
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/FriendTool;->isFriend(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x5

    return p0
.end method

.method public static getAllFriend()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    sget-object v1, Lme/yxp/qfun/utils/qq/FriendTool;->FriendsInfoServiceImpl:Ljava/lang/Object;

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, ""

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "getAllFriend"

    invoke-static {v1, v5, v2, v4}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 49
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 50
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    .line 53
    aget-object v5, v2, v5

    const/4 v6, 0x4

    .line 54
    aget-object v2, v2, v6

    .line 55
    sget-object v6, Lme/yxp/qfun/utils/qq/FriendTool;->FriendsInfoServiceImpl:Ljava/lang/Object;

    const-string v7, "getNickWithUid"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 56
    sget-object v7, Lme/yxp/qfun/utils/qq/FriendTool;->FriendsInfoServiceImpl:Ljava/lang/Object;

    const-string v8, "getRemarkWithUid"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 58
    const-string v8, "uin"

    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v5, "uid"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v2, "name"

    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v2, "remark"

    invoke-static {v7, v3}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_82
    return-object v0
.end method

.method public static getUidFromUin(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 76
    sget-object v0, Lme/yxp/qfun/utils/qq/FriendTool;->RelationNTUinAndUidApiImpl:Ljava/lang/Object;

    const-string v1, "getUidFromUin"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getUinFromUid(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 80
    sget-object v0, Lme/yxp/qfun/utils/qq/FriendTool;->RelationNTUinAndUidApiImpl:Ljava/lang/Object;

    const-string v1, "getUinFromUid"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static initMethod()V
    .registers 7

    .line 32
    const-string v0, "com.tencent.qqnt.ntrelation.friendsinfo.api.impl.FriendsInfoServiceImpl"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 33
    const-string v1, "com.tencent.relation.common.api.impl.RelationNTUinAndUidApiImpl"

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 34
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/FriendTool;->FriendsInfoServiceImpl:Ljava/lang/Object;

    .line 35
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/FriendTool;->RelationNTUinAndUidApiImpl:Ljava/lang/Object;

    .line 36
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_CardHandler()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/FriendTool;->sCardHandler:Ljava/lang/Class;

    .line 38
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 39
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-class v3, [B

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object v2, v1

    move-object v5, v4

    move-object v6, v4

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Class;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/FriendTool;->sSendZan:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static isFriend(Ljava/lang/String;)Z
    .registers 3

    .line 71
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/FriendTool;->getUidFromUin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 72
    sget-object v0, Lme/yxp/qfun/utils/qq/FriendTool;->FriendsInfoServiceImpl:Ljava/lang/Object;

    const-string v1, ""

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "isFriend"

    invoke-static {v0, v1, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static sendZan(Ljava/lang/String;I)V
    .registers 10

    .line 84
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/FriendTool;->createZanRequestData(Ljava/lang/String;)[B

    move-result-object v2

    .line 85
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/FriendTool;->determineZanType(Ljava/lang/String;)I

    move-result v0

    .line 87
    sget-object v6, Lme/yxp/qfun/utils/qq/FriendTool;->sSendZan:Ljava/lang/reflect/Method;

    sget-object v1, Lme/yxp/qfun/utils/qq/FriendTool;->sCardHandler:Ljava/lang/Class;

    .line 88
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getQQAppInterface()Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 90
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 91
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 p1, 0x0

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v1

    move-object v1, p0

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    .line 87
    invoke-static {v6, v7, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
