.class public Lme/yxp/qfun/hook/purify/RemoveEmoReplyHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "RemoveEmoReplyHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "移除表情回应"
    desc = "长按消息时不再显示回应表情的菜单"
.end annotation


# static fields
.field private static needShow:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$h_IKGwZS7VXqC8GuVjKZmCloKtg(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 1

    .line 23
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 3

    .line 23
    sget-object v0, Lme/yxp/qfun/hook/purify/RemoveEmoReplyHook;->needShow:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/purify/RemoveEmoReplyHook$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lme/yxp/qfun/hook/purify/RemoveEmoReplyHook$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->replaceIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V

    return-void
.end method

.method public initMethod()Z
    .registers 1

    .line 17
    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/utils/dexkit/DexKit;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/purify/RemoveEmoReplyHook;->needShow:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method
