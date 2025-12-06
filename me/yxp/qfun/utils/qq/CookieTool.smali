.class public Lme/yxp/qfun/utils/qq/CookieTool;
.super Ljava/lang/Object;
.source "CookieTool.java"


# static fields
.field private static sGetBkn:Ljava/lang/reflect/Method;

.field private static sGetPskeyFromLocal:Ljava/lang/reflect/Method;

.field private static sGetPt4Token:Ljava/lang/reflect/Method;

.field private static sGetRealSkey:Ljava/lang/reflect/Method;

.field private static sGetSkey:Ljava/lang/reflect/Method;

.field private static sGetStweb:Ljava/lang/reflect/Method;

.field private static sKeyVar:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sOnCreate:Ljava/lang/reflect/Method;

.field private static sPskeyManagerImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sTicketManagerImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sToReturnType:Ljava/lang/reflect/Method;

.field private static sTroopHWApiImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    :try_start_0
    invoke-static {}, Lme/yxp/qfun/utils/qq/CookieTool;->initMethod()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    .line 32
    const-string v1, "CookieTool"

    invoke-static {v1, v0}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBkn(Ljava/lang/String;)J
    .registers 4

    .line 115
    sget-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sGetBkn:Ljava/lang/reflect/Method;

    sget-object v1, Lme/yxp/qfun/utils/qq/CookieTool;->sTroopHWApiImpl:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFriendRKey()Ljava/lang/String;
    .registers 1

    .line 119
    sget-object v0, Lme/yxp/qfun/hook/api/OnRKey;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    check-cast v0, Lme/yxp/qfun/hook/api/OnRKey;

    iget-object v0, v0, Lme/yxp/qfun/hook/api/OnRKey;->friendRkey:Ljava/lang/String;

    return-object v0
.end method

.method public static getGTK(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 86
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/CookieTool;->getPskey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1505

    const/4 v1, 0x0

    .line 88
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_18

    shl-int/lit8 v2, v0, 0x5

    .line 89
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_18
    const p0, 0x7fffffff

    and-int/2addr p0, v0

    .line 91
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGroupRKey()Ljava/lang/String;
    .registers 1

    .line 123
    sget-object v0, Lme/yxp/qfun/hook/api/OnRKey;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    check-cast v0, Lme/yxp/qfun/hook/api/OnRKey;

    iget-object v0, v0, Lme/yxp/qfun/hook/api/OnRKey;->groupRkey:Ljava/lang/String;

    return-object v0
.end method

.method public static getPskey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 96
    sget-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sPskeyManagerImpl:Ljava/lang/Class;

    const/4 v1, 0x0

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 96
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    sget-object v1, Lme/yxp/qfun/utils/qq/CookieTool;->sOnCreate:Ljava/lang/reflect/Method;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getQQAppInterface()Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 100
    sget-object v3, Lme/yxp/qfun/utils/qq/CookieTool;->sKeyVar:Ljava/lang/Class;

    const-string v4, ""

    filled-new-array {v4, v4, v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v3, Lme/yxp/qfun/utils/qq/CookieTool;->sGetPskeyFromLocal:Ljava/lang/reflect/Method;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 103
    sget-object v3, Lme/yxp/qfun/utils/qq/CookieTool;->sToReturnType:Ljava/lang/reflect/Method;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    .line 105
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getPt4Token(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 109
    sget-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sTicketManagerImpl:Ljava/lang/Class;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getQQAppInterface()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    sget-object v1, Lme/yxp/qfun/utils/qq/CookieTool;->sGetPt4Token:Ljava/lang/reflect/Method;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRealSkey()Ljava/lang/String;
    .registers 3

    .line 71
    sget-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sTicketManagerImpl:Ljava/lang/Class;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getQQAppInterface()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    sget-object v1, Lme/yxp/qfun/utils/qq/CookieTool;->sGetRealSkey:Ljava/lang/reflect/Method;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSkey()Ljava/lang/String;
    .registers 3

    .line 76
    sget-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sTicketManagerImpl:Ljava/lang/Class;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getQQAppInterface()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    sget-object v1, Lme/yxp/qfun/utils/qq/CookieTool;->sGetSkey:Ljava/lang/reflect/Method;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStweb()Ljava/lang/String;
    .registers 3

    .line 81
    sget-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sTicketManagerImpl:Ljava/lang/Class;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getQQAppInterface()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    sget-object v1, Lme/yxp/qfun/utils/qq/CookieTool;->sGetStweb:Ljava/lang/reflect/Method;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initMethod()V
    .registers 2

    .line 37
    const-string v0, "mqq.app.TicketManagerImpl"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sTicketManagerImpl:Ljava/lang/Class;

    .line 38
    const-string v0, "com.tencent.mobileqq.troop.api.impl.TroopHWApiImpl"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sTroopHWApiImpl:Ljava/lang/Class;

    .line 39
    const-string v0, "com.tencent.mobileqq.pskey.api.impl.PskeyManagerImpl"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sPskeyManagerImpl:Ljava/lang/Class;

    .line 40
    const-string v0, "CookieTool"

    invoke-static {v0}, Lme/yxp/qfun/utils/dexkit/DexKit;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sKeyVar:Ljava/lang/Class;

    .line 43
    sget-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sTicketManagerImpl:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "getSkey"

    .line 44
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sGetSkey:Ljava/lang/reflect/Method;

    .line 47
    sget-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sTicketManagerImpl:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "getRealSkey"

    .line 48
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sGetRealSkey:Ljava/lang/reflect/Method;

    .line 50
    sget-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sTicketManagerImpl:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "getStweb"

    .line 51
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sGetStweb:Ljava/lang/reflect/Method;

    .line 53
    sget-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sTicketManagerImpl:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "getPt4Token"

    .line 54
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sGetPt4Token:Ljava/lang/reflect/Method;

    .line 56
    sget-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sPskeyManagerImpl:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "getPskeyFromLocal"

    .line 57
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sGetPskeyFromLocal:Ljava/lang/reflect/Method;

    .line 59
    sget-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sPskeyManagerImpl:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "onCreate"

    .line 60
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sOnCreate:Ljava/lang/reflect/Method;

    .line 62
    sget-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sPskeyManagerImpl:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "toReturnType"

    .line 63
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sToReturnType:Ljava/lang/reflect/Method;

    .line 65
    sget-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sTroopHWApiImpl:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "getBknBySkey"

    .line 66
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/CookieTool;->sGetBkn:Ljava/lang/reflect/Method;

    return-void
.end method
