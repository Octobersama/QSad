.class public final Lme/yxp/qfun/hook/purify/RemoveFilterVideoHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "RemoveFilterVideoHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "去除滤镜视频"
    desc = "去除新版QQ底部选项中的滤镜视频（QQ9.2.10（11310）及以上）"
.end annotation


# static fields
.field private static sAddFilterVideoItem:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$JLbQDKQxVMm-B91QSXHzzTZ1VIQ(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 1

    .line 28
    const/4 p0, 0x0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 3

    .line 28
    sget-object v0, Lme/yxp/qfun/hook/purify/RemoveFilterVideoHook;->sAddFilterVideoItem:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/purify/RemoveFilterVideoHook$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lme/yxp/qfun/hook/purify/RemoveFilterVideoHook$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->replaceIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V

    return-void
.end method

.method public initMethod()Z
    .registers 5

    .line 19
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->isTIM()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->isQQ()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getVersionCode()J

    move-result-wide v0

    const-wide/16 v2, 0x2c2e

    cmp-long v0, v0, v2

    if-gez v0, :cond_17

    goto :goto_40

    .line 22
    :cond_17
    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/utils/dexkit/DexKit;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const-class v0, Ljava/util/List;

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/purify/RemoveFilterVideoHook;->sAddFilterVideoItem:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0

    :cond_40
    :goto_40
    const/4 p0, 0x0

    return p0
.end method
