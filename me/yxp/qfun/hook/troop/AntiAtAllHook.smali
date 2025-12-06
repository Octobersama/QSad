.class public final Lme/yxp/qfun/hook/troop/AntiAtAllHook;
.super Lme/yxp/qfun/hook/base/BaseWithDataHookItem;
.source "AntiAtAllHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "屏蔽艾特全体消息"
    desc = "屏蔽艾特全体和群待办，点击可选择不需要屏蔽的群聊"
.end annotation


# static fields
.field private static sAtAllMethod:Ljava/lang/reflect/Method;

.field private static sTroopToDoMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;


# direct methods
.method public static synthetic $r8$lambda$IEvE90AUysN9i8Hqyj5UdVulsMQ(Lme/yxp/qfun/hook/troop/AntiAtAllHook;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/troop/AntiAtAllHook;->lambda$initCallback$1(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Zoqyru2jv2y-h3xARwJ47Nrk0VI(Lme/yxp/qfun/hook/troop/AntiAtAllHook;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/troop/AntiAtAllHook;->lambda$initCallback$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseWithDataHookItem;-><init>()V

    return-void
.end method

.method private extractUIN(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 89
    const-string p0, "http"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_19

    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://example.com/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 93
    :cond_19
    new-instance p0, Ljava/net/URI;

    invoke-direct {p0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5e

    .line 99
    const-string p1, "&"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 100
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 102
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_32
    if-ge v2, v0, :cond_4b

    aget-object v3, p0, v2

    .line 103
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 104
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_48

    .line 105
    aget-object v4, v3, v1

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 109
    :cond_4b
    const-string p0, "uin"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_56

    return-object p0

    .line 111
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "URL中没有uin参数"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "URL中没有查询参数"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$initCallback$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 5

    .line 50
    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v2, "peerUin"

    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v2, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v1, v2, v1

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    const-string v2, "atType"

    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 52
    iget-object p0, p0, Lme/yxp/qfun/hook/troop/AntiAtAllHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    iget-object p0, p0, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_41

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_41
    iget-object p0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$initCallback$1(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 4

    .line 60
    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/ArrayList;

    .line 61
    new-instance v1, Lme/yxp/qfun/utils/json/ProtoData;

    invoke-direct {v1}, Lme/yxp/qfun/utils/json/ProtoData;-><init>()V

    .line 62
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lme/yxp/qfun/utils/json/ProtoData;->fromBytes([B)V

    .line 63
    invoke-virtual {v1}, Lme/yxp/qfun/utils/json/ProtoData;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lme/yxp/qfun/hook/troop/AntiAtAllHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    iget-object v1, v1, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-direct {p0, v0}, Lme/yxp/qfun/hook/troop/AntiAtAllHook;->extractUIN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_47

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_47
    iget-object p0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public initCallback()V
    .registers 3

    .line 47
    new-instance v0, Lme/yxp/qfun/utils/qq/EnableInfo$TroopEnableInfo;

    const-string v1, "AntiAtAll"

    invoke-direct {v0, v1}, Lme/yxp/qfun/utils/qq/EnableInfo$TroopEnableInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lme/yxp/qfun/hook/troop/AntiAtAllHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    .line 49
    sget-object v0, Lme/yxp/qfun/hook/troop/AntiAtAllHook;->sAtAllMethod:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/troop/AntiAtAllHook$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/troop/AntiAtAllHook$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/troop/AntiAtAllHook;)V

    invoke-static {p0, v0, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->replaceIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V

    .line 59
    sget-object v0, Lme/yxp/qfun/hook/troop/AntiAtAllHook;->sTroopToDoMethod:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/troop/AntiAtAllHook$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/troop/AntiAtAllHook$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/troop/AntiAtAllHook;)V

    invoke-static {p0, v0, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->replaceIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V

    return-void
.end method

.method public initData()V
    .registers 1

    .line 73
    iget-object p0, p0, Lme/yxp/qfun/hook/troop/AntiAtAllHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-virtual {p0}, Lme/yxp/qfun/utils/qq/EnableInfo;->initInfo()V

    return-void
.end method

.method public initMethod()Z
    .registers 6

    .line 33
    const-string v0, "com.tencent.qqnt.kernel.nativeinterface.NotificationCommonInfo"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 34
    const-string v1, "com.tencent.qqnt.kernel.nativeinterface.RecentContactInfo"

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 36
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_NotificationFacade()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 37
    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    .line 38
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AppRuntime()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v1, v0, v4}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/hook/troop/AntiAtAllHook;->sAtAllMethod:Ljava/lang/reflect/Method;

    .line 41
    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/utils/dexkit/DexKit;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/troop/AntiAtAllHook;->sTroopToDoMethod:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lme/yxp/qfun/hook/troop/AntiAtAllHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-virtual {v0}, Lme/yxp/qfun/utils/qq/EnableInfo;->updateInfo()V

    .line 85
    new-instance v0, Lme/yxp/qfun/utils/ui/EnableDialog;

    iget-object p0, p0, Lme/yxp/qfun/hook/troop/AntiAtAllHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-direct {v0, p1, p0}, Lme/yxp/qfun/utils/ui/EnableDialog;-><init>(Landroid/content/Context;Lme/yxp/qfun/utils/qq/EnableInfo;)V

    invoke-virtual {v0}, Lme/yxp/qfun/utils/ui/EnableDialog;->show()V

    return-void
.end method

.method public savaData()V
    .registers 1

    .line 78
    iget-object p0, p0, Lme/yxp/qfun/hook/troop/AntiAtAllHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-virtual {p0}, Lme/yxp/qfun/utils/qq/EnableInfo;->savaInfo()V

    return-void
.end method
