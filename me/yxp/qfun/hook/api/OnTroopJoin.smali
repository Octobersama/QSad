.class public final Lme/yxp/qfun/hook/api/OnTroopJoin;
.super Lme/yxp/qfun/hook/base/ApiHookItem;
.source "OnTroopJoin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/hook/api/OnTroopJoin$TroopJoinListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;


# direct methods
.method public static synthetic $r8$lambda$-_aALKGdKGUaeRyXoqWBgQgqhX8(Lme/yxp/qfun/hook/api/OnTroopJoin;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/api/OnTroopJoin;->lambda$loadHook$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method public static synthetic $r8$lambda$13fzcQrWZZ2qk4OHL-Xs1jwHArc(Lme/yxp/qfun/hook/api/OnTroopJoin;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/api/OnTroopJoin;->lambda$loadHook$1(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lme/yxp/qfun/hook/api/OnTroopJoin;

    invoke-direct {v0}, Lme/yxp/qfun/hook/api/OnTroopJoin;-><init>()V

    sput-object v0, Lme/yxp/qfun/hook/api/OnTroopJoin;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/ApiHookItem;-><init>()V

    return-void
.end method

.method private handleJoin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 53
    iget-object p0, p0, Lme/yxp/qfun/hook/base/ApiHookItem;->mListenerSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/yxp/qfun/hook/base/ApiHookItem$Listener;

    .line 54
    instance-of v1, v0, Lme/yxp/qfun/hook/api/OnTroopJoin$TroopJoinListener;

    if-eqz v1, :cond_6

    .line 55
    check-cast v0, Lme/yxp/qfun/hook/api/OnTroopJoin$TroopJoinListener;

    invoke-interface {v0, p1, p2}, Lme/yxp/qfun/hook/api/OnTroopJoin$TroopJoinListener;->onJoin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method private synthetic lambda$loadHook$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 25
    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/hook/api/OnTroopJoin;->handleJoin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$loadHook$1(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 37
    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/util/ArrayList;

    .line 38
    new-instance v0, Lme/yxp/qfun/utils/json/ProtoData;

    invoke-direct {v0}, Lme/yxp/qfun/utils/json/ProtoData;-><init>()V

    .line 39
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lme/yxp/qfun/utils/json/ProtoData;->fromBytes([B)V

    .line 40
    invoke-virtual {v0}, Lme/yxp/qfun/utils/json/ProtoData;->toJSON()Lorg/json/JSONObject;

    move-result-object p1

    .line 42
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "3"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "2"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p1}, Lme/yxp/qfun/utils/qq/FriendTool;->getUinFromUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/hook/api/OnTroopJoin;->handleJoin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public loadHook()V
    .registers 4

    .line 23
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->isTIM()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 24
    const-class v0, Lme/yxp/qfun/hook/api/OnTroopJoin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/dexkit/DexKit;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 25
    new-instance v2, Lme/yxp/qfun/hook/api/OnTroopJoin$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lme/yxp/qfun/hook/api/OnTroopJoin$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/api/OnTroopJoin;)V

    invoke-static {v0, v1, v2}, Lme/yxp/qfun/utils/hook/HookUtils;->hookAlways(Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    .line 28
    :cond_19
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->isQQ()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 29
    const-string v0, "com.tencent.qqnt.push.processor.TroopMemberAddPushProcessor"

    .line 30
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 32
    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-class v2, Ljava/util/ArrayList;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 36
    new-instance v2, Lme/yxp/qfun/hook/api/OnTroopJoin$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lme/yxp/qfun/hook/api/OnTroopJoin$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/api/OnTroopJoin;)V

    invoke-static {v0, v1, v2}, Lme/yxp/qfun/utils/hook/HookUtils;->hookAlways(Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    :cond_45
    return-void
.end method
