.class public final Lme/yxp/qfun/hook/social/OneClickLikeHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "OneClickLikeHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "一键点赞"
    desc = "一次性点赞至每天上限次数"
.end annotation


# static fields
.field private static sSendZanMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$o_cuqD49rPOfyxXZ2hX7gRbWgEQ(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 5

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v0, 0x0

    :goto_10
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1f

    .line 32
    iget-object v1, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v2, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v3, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1f
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 4

    .line 28
    sget-object v0, Lme/yxp/qfun/hook/social/OneClickLikeHook;->sSendZanMethod:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/social/OneClickLikeHook$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lme/yxp/qfun/hook/social/OneClickLikeHook$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lme/yxp/qfun/utils/hook/HookUtils;->hookIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method

.method public initMethod()Z
    .registers 7

    .line 18
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_CardHandler()Ljava/lang/Class;

    move-result-object p0

    .line 19
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 20
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const-class v2, [B

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object v1, v0

    move-object v4, v3

    move-object v5, v3

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Class;

    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/social/OneClickLikeHook;->sSendZanMethod:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method
