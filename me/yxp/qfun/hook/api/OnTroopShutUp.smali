.class public final Lme/yxp/qfun/hook/api/OnTroopShutUp;
.super Lme/yxp/qfun/hook/base/ApiHookItem;
.source "OnTroopShutUp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/hook/api/OnTroopShutUp$TroopShutUpListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

.field private static final SERVICE_CMD:Ljava/lang/String; = "trpc.msg.olpush.OlPushService.MsgPush"


# direct methods
.method public static synthetic $r8$lambda$jUS9clbeIErStY1XYgDZpQDVMhQ(Lme/yxp/qfun/hook/api/OnTroopShutUp;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/api/OnTroopShutUp;->lambda$loadHook$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lme/yxp/qfun/hook/api/OnTroopShutUp;

    invoke-direct {v0}, Lme/yxp/qfun/hook/api/OnTroopShutUp;-><init>()V

    sput-object v0, Lme/yxp/qfun/hook/api/OnTroopShutUp;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/ApiHookItem;-><init>()V

    return-void
.end method

.method private synthetic lambda$loadHook$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 13

    .line 27
    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 28
    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v1, "serviceCmd"

    .line 29
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, "trpc.msg.olpush.OlPushService.MsgPush"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_b5

    .line 37
    :cond_21
    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    const-string v0, "wupBuffer"

    .line 38
    invoke-virtual {p1, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 40
    new-instance v0, Lme/yxp/qfun/utils/json/ProtoData;

    invoke-direct {v0}, Lme/yxp/qfun/utils/json/ProtoData;-><init>()V

    .line 41
    invoke-virtual {v0, p1}, Lme/yxp/qfun/utils/json/ProtoData;->fromBytes([B)V

    .line 42
    invoke-virtual {v0}, Lme/yxp/qfun/utils/json/ProtoData;->toJSON()Lorg/json/JSONObject;

    move-result-object p1

    .line 43
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x2dc

    if-ne v3, v4, :cond_b5

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0xc

    if-eq v1, v3, :cond_5a

    goto :goto_b5

    .line 49
    :cond_5a
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "3"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 50
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 51
    const-string v3, "4"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lme/yxp/qfun/utils/qq/FriendTool;->getUinFromUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 52
    const-string v3, "5"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/qq/FriendTool;->getUinFromUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 53
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 55
    iget-object p0, p0, Lme/yxp/qfun/hook/base/ApiHookItem;->mListenerSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9e
    :goto_9e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lme/yxp/qfun/hook/base/ApiHookItem$Listener;

    .line 56
    instance-of v0, p1, Lme/yxp/qfun/hook/api/OnTroopShutUp$TroopShutUpListener;

    if-eqz v0, :cond_9e

    .line 57
    move-object v5, p1

    check-cast v5, Lme/yxp/qfun/hook/api/OnTroopShutUp$TroopShutUpListener;

    invoke-interface/range {v5 .. v10}, Lme/yxp/qfun/hook/api/OnTroopShutUp$TroopShutUpListener;->onShutUp(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_9e

    :cond_b5
    :goto_b5
    return-void
.end method


# virtual methods
.method public loadHook()V
    .registers 3

    .line 21
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_MSFServlet()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "onReceive"

    .line 22
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 23
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_FromServiceMsg()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 26
    new-instance v1, Lme/yxp/qfun/hook/api/OnTroopShutUp$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/api/OnTroopShutUp$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/api/OnTroopShutUp;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->hookAlways(Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method
