.class public final Lme/yxp/qfun/hook/qrcode/LiftQRCodeLimitHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "LiftQRCodeLimitHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "解除扫码限制"
    desc = "解除长按识别或从相册中扫描二维码时的风险检查"
.end annotation


# static fields
.field private static sCheckMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$TtsTbAVZtLIM0Joodvi22cNyQhU(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 39
    iget-object v0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 40
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 41
    aget-object v2, v0, v1

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_12

    .line 42
    iget-object v2, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 4

    .line 37
    sget-object v0, Lme/yxp/qfun/hook/qrcode/LiftQRCodeLimitHook;->sCheckMethod:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/qrcode/LiftQRCodeLimitHook$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lme/yxp/qfun/hook/qrcode/LiftQRCodeLimitHook$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lme/yxp/qfun/utils/hook/HookUtils;->hookIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method

.method public initMethod()Z
    .registers 6

    .line 21
    const-class p0, Landroid/os/Bundle;

    const-class v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    :try_start_8
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_QrAgentLoginManager()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v3

    .line 22
    invoke-virtual {v3, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v3

    filled-new-array {v1, v0, p0}, [Ljava/lang/Class;

    move-result-object v4

    .line 23
    invoke-virtual {v3, v4}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lme/yxp/qfun/hook/qrcode/LiftQRCodeLimitHook;->sCheckMethod:Ljava/lang/reflect/Method;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_22} :catch_23

    goto :goto_41

    .line 26
    :catch_23
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_QrAgentLoginManager()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v3

    .line 27
    invoke-virtual {v3, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    .line 28
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_QrAgentLoginManager()Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v3, v1, v0, p0}, [Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/qrcode/LiftQRCodeLimitHook;->sCheckMethod:Ljava/lang/reflect/Method;

    :goto_41
    const/4 p0, 0x1

    return p0
.end method
