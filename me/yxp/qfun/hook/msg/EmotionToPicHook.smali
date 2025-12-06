.class public final Lme/yxp/qfun/hook/msg/EmotionToPicHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "EmotionToPicHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "以图片方式打开表情"
.end annotation


# static fields
.field private static sSendIntentMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$xiE6wJv0xa-wyds98GhLaSR8W2Q(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 34
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    const-string v0, "picElement"

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 35
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v1, "picSubType"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    .line 36
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    const-string v0, "picType"

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

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

    .line 33
    sget-object v0, Lme/yxp/qfun/hook/msg/EmotionToPicHook;->sSendIntentMethod:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/msg/EmotionToPicHook$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lme/yxp/qfun/hook/msg/EmotionToPicHook$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lme/yxp/qfun/utils/hook/HookUtils;->hookIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method

.method public initMethod()Z
    .registers 8

    .line 19
    const-string p0, "com.tencent.mobileqq.aio.msglist.holder.base.util.PicContentViewUtil"

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 21
    const-string v0, "com.tencent.qqnt.kernel.nativeinterface.MsgElement"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 23
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 24
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Runnable;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-class v4, Ljava/util/ArrayList;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Class;

    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/msg/EmotionToPicHook;->sSendIntentMethod:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method
