.class public final Lme/yxp/qfun/hook/file/AutoSendOriginalPicHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "AutoSendOriginalPicHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "自动勾选原图"
    desc = "发送图片时自动勾选原图（半屏相册）"
.end annotation


# static fields
.field private static sHandleUIState:Ljava/lang/reflect/Method;

.field private static sSetChecked:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$gTAq9xHV9_akRX-vaf1J1XIcd_Q(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 36
    sget-object v0, Lme/yxp/qfun/hook/file/AutoSendOriginalPicHook;->sSetChecked:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 4

    .line 35
    sget-object v0, Lme/yxp/qfun/hook/file/AutoSendOriginalPicHook;->sHandleUIState:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/file/AutoSendOriginalPicHook$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lme/yxp/qfun/hook/file/AutoSendOriginalPicHook$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->hookIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method

.method public initMethod()Z
    .registers 3

    .line 19
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_PhotoPanelVB()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 20
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const-string v1, "com.tencent.mvi.base.mvi.MviUIState"

    .line 21
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/file/AutoSendOriginalPicHook;->sHandleUIState:Ljava/lang/reflect/Method;

    .line 24
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_PhotoPanelVB()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    sget-object v1, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->PUBLIC:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    .line 25
    invoke-virtual {p0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withAccessModifier(Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 26
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/file/AutoSendOriginalPicHook;->sSetChecked:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method
