.class public final Lme/yxp/qfun/hook/device/CustomDeviceHook;
.super Lme/yxp/qfun/hook/base/BaseWithDataHookItem;
.source "CustomDeviceHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "伪装设备在线状态"
    TargetProcess = "All"
    desc = "点击设置机型，可用于设置在线状态机型（包含文字可能无效，重启生效）"
.end annotation


# static fields
.field private static final KEY_FAKE_MODEL:Ljava/lang/String; = "FAKE_MODEL"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "QFun_Config"

.field private static sGetModelMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mFakeModel:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$OuwqWU9ToomPmHALKv5rKr2EOIk(Lme/yxp/qfun/hook/device/CustomDeviceHook;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/device/CustomDeviceHook;->lambda$initCallback$1(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qilGKHxL94_T_dHQhEMqi0BXeSs(Lme/yxp/qfun/hook/device/CustomDeviceHook;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/hook/device/CustomDeviceHook;->lambda$onClick$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseWithDataHookItem;-><init>()V

    return-void
.end method

.method private synthetic lambda$initCallback$1(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 59
    invoke-virtual {p0}, Lme/yxp/qfun/hook/device/CustomDeviceHook;->initData()V

    .line 60
    iget-object p0, p0, Lme/yxp/qfun/hook/device/CustomDeviceHook;->mFakeModel:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onClick$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 52
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/hook/device/CustomDeviceHook;->mFakeModel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 4

    .line 58
    sget-object v0, Lme/yxp/qfun/hook/device/CustomDeviceHook;->sGetModelMethod:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/device/CustomDeviceHook$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/device/CustomDeviceHook$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/device/CustomDeviceHook;)V

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lme/yxp/qfun/utils/hook/HookUtils;->hookIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method

.method public initData()V
    .registers 4

    .line 28
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "QFun_Config"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    const-string v1, "FAKE_MODEL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/hook/device/CustomDeviceHook;->mFakeModel:Ljava/lang/String;

    return-void
.end method

.method public initMethod()Z
    .registers 2

    .line 66
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_DeviceInfoMonitor()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const-string v0, "getModel"

    .line 67
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/device/CustomDeviceHook;->sGetModelMethod:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 43
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 45
    iget-object v1, p0, Lme/yxp/qfun/hook/device/CustomDeviceHook;->mFakeModel:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_10
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string p1, "设备信息"

    .line 50
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lme/yxp/qfun/hook/device/CustomDeviceHook$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lme/yxp/qfun/hook/device/CustomDeviceHook$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/device/CustomDeviceHook;Landroid/widget/EditText;)V

    .line 52
    const-string p0, "确定"

    invoke-virtual {p1, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public savaData()V
    .registers 4

    .line 35
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "QFun_Config"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "FAKE_MODEL"

    iget-object p0, p0, Lme/yxp/qfun/hook/device/CustomDeviceHook;->mFakeModel:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
