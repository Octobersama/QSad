.class public final Lme/yxp/qfun/hook/device/TabletModeHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "TabletModeHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "平板模式"
    TargetProcess = ":MSF"
    desc = "让QQ将当前设备识别为平板(重启QQ生效)"
.end annotation


# static fields
.field private static sGetDeviceTypeMethod:Ljava/lang/reflect/Method;

.field private static sTabletDeviceType:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$u98pCSrjVTpBtN4gvYv89Vf27mY(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 32
    sget-object v0, Lme/yxp/qfun/hook/device/TabletModeHook;->sTabletDeviceType:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

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

    .line 31
    sget-object v0, Lme/yxp/qfun/hook/device/TabletModeHook;->sGetDeviceTypeMethod:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/device/TabletModeHook$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lme/yxp/qfun/hook/device/TabletModeHook$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->hookIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method

.method public initMethod()Z
    .registers 3

    .line 20
    const-string p0, "com.tencent.common.config.pad.DeviceType"

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 21
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_PadUtil()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/hook/device/TabletModeHook;->sGetDeviceTypeMethod:Ljava/lang/reflect/Method;

    .line 25
    const-string v0, "TABLET"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/device/TabletModeHook;->sTabletDeviceType:Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method
