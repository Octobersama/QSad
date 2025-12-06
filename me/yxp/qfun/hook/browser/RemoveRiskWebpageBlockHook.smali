.class public final Lme/yxp/qfun/hook/browser/RemoveRiskWebpageBlockHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "RemoveRiskWebpageBlockHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "解除风险网页拦截"
    TargetProcess = ":tool"
    desc = "点击消息中链接时不再拦截风险网页"
.end annotation


# static fields
.field private static sLoadUrl:Ljava/lang/reflect/Method;


# instance fields
.field private targetUrl:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Q3oGIaslpM7HcLOATfeB5tIVkCA(Lme/yxp/qfun/hook/browser/RemoveRiskWebpageBlockHook;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/browser/RemoveRiskWebpageBlockHook;->lambda$initCallback$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method

.method private synthetic lambda$initCallback$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 4

    .line 31
    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 32
    const-string v1, "c.pc.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 33
    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p0, p0, Lme/yxp/qfun/hook/browser/RemoveRiskWebpageBlockHook;->targetUrl:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 35
    :cond_1e
    iput-object v0, p0, Lme/yxp/qfun/hook/browser/RemoveRiskWebpageBlockHook;->targetUrl:Ljava/lang/String;

    .line 36
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

    .line 30
    sget-object v0, Lme/yxp/qfun/hook/browser/RemoveRiskWebpageBlockHook;->sLoadUrl:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/browser/RemoveRiskWebpageBlockHook$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/browser/RemoveRiskWebpageBlockHook$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/browser/RemoveRiskWebpageBlockHook;)V

    invoke-static {p0, v0, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->replaceIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V

    return-void
.end method

.method public initMethod()Z
    .registers 2

    .line 21
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_CustomWebView()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const-string v0, "loadUrl"

    .line 22
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/browser/RemoveRiskWebpageBlockHook;->sLoadUrl:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method
