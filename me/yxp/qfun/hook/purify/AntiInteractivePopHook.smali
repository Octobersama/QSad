.class public final Lme/yxp/qfun/hook/purify/AntiInteractivePopHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "AntiInteractivePopHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "屏蔽弹出动画"
    desc = "屏蔽某些特定文本消息弹出的与游戏相关的烦人动画"
.end annotation


# static fields
.field private static sPopMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$RZm0dJK7Uy_mJDHbQc5DZuN64Nc(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 1

    .line 30
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

    .line 30
    sget-object v0, Lme/yxp/qfun/hook/purify/AntiInteractivePopHook;->sPopMethod:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/purify/AntiInteractivePopHook$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lme/yxp/qfun/hook/purify/AntiInteractivePopHook$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->replaceIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V

    return-void
.end method

.method public initMethod()Z
    .registers 4

    .line 19
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->isTIM()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 20
    :cond_8
    const-string p0, "androidx.fragment.app.Fragment"

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 21
    const-class v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 23
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_InteractivePopManager()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    const/4 v2, 0x0

    filled-new-array {p0, v2, v2, v0}, [Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/purify/AntiInteractivePopHook;->sPopMethod:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method
