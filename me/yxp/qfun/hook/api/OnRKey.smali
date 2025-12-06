.class public final Lme/yxp/qfun/hook/api/OnRKey;
.super Lme/yxp/qfun/hook/base/ApiHookItem;
.source "OnRKey.java"


# static fields
.field public static final INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

.field private static final SERVICE_CMD:Ljava/lang/String; = "OidbSvcTrpcTcp.0x9067_202"


# instance fields
.field public friendRkey:Ljava/lang/String;

.field public groupRkey:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$aPopTYjl6A2OydqSJfs-eW3ZhkA(Lme/yxp/qfun/hook/api/OnRKey;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/api/OnRKey;->lambda$loadHook$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lme/yxp/qfun/hook/api/OnRKey;

    invoke-direct {v0}, Lme/yxp/qfun/hook/api/OnRKey;-><init>()V

    sput-object v0, Lme/yxp/qfun/hook/api/OnRKey;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/ApiHookItem;-><init>()V

    return-void
.end method

.method private synthetic lambda$loadHook$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 7

    .line 29
    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    const-string v1, "fromServiceMsg"

    .line 30
    invoke-virtual {p1, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 33
    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    const-string v2, "serviceCmd"

    .line 34
    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v2, "OidbSvcTrpcTcp.0x9067_202"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return-void

    .line 40
    :cond_2e
    new-instance v1, Lme/yxp/qfun/utils/json/ProtoData;

    invoke-direct {v1}, Lme/yxp/qfun/utils/json/ProtoData;-><init>()V

    .line 41
    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    const-string v2, "wupBuffer"

    .line 42
    invoke-virtual {p1, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 41
    invoke-virtual {v1, p1}, Lme/yxp/qfun/utils/json/ProtoData;->fromBytes([B)V

    .line 44
    invoke-virtual {v1}, Lme/yxp/qfun/utils/json/ProtoData;->toJSON()Lorg/json/JSONObject;

    move-result-object p1

    .line 46
    const-string v1, "4"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 47
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 48
    const-string v3, "1"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x0

    .line 49
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 50
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lme/yxp/qfun/hook/api/OnRKey;->friendRkey:Ljava/lang/String;

    .line 51
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 52
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 53
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 55
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/hook/api/OnRKey;->groupRkey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public loadHook()V
    .registers 3

    .line 23
    const-string v0, "mqq.app.msghandle.MsgRespHandler"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "dispatchRespMsg"

    .line 25
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 28
    new-instance v1, Lme/yxp/qfun/hook/api/OnRKey$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/api/OnRKey$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/api/OnRKey;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->hookAlways(Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method
