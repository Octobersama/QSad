.class public final Lme/yxp/qfun/hook/purify/AntiLinkPreviewHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "AntiLinkPreviewHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "屏蔽链接预览"
    desc = "屏蔽连接文本的预览信息"
.end annotation


# static fields
.field private static addPreview:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$7o7_ADZMXCXL6mT7DFyxgcPgBz8(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 1

    .line 32
    const/4 p0, 0x0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 3

    .line 32
    sget-object v0, Lme/yxp/qfun/hook/purify/AntiLinkPreviewHook;->addPreview:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/purify/AntiLinkPreviewHook$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lme/yxp/qfun/hook/purify/AntiLinkPreviewHook$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->replaceIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V

    return-void
.end method

.method public initMethod()Z
    .registers 3

    .line 19
    const-string p0, "com.tencent.qqnt.kernel.nativeinterface.LinkInfo"

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 21
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_TextMsgContent()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 22
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const/4 v1, 0x0

    filled-new-array {v1, p0}, [Ljava/lang/Class;

    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/purify/AntiLinkPreviewHook;->addPreview:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method
