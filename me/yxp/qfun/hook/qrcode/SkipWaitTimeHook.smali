.class public final Lme/yxp/qfun/hook/qrcode/SkipWaitTimeHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "SkipWaitTimeHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "跳过扫码确认等待时间"
    desc = "可忽略倒计时，直接点击确认即可"
.end annotation


# static fields
.field private static sDoOnCreate:Ljava/lang/reflect/Method;

.field private static sQUIButton:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CryW3J2QYNdW2JFRzTKWATX9nVc(Landroid/widget/Button;)V
    .registers 3

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setType"

    invoke-static {p0, v1, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic $r8$lambda$t7t-ZkybBbjBHMN7ogMQIn8XMTU(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 36
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    sget-object v0, Lme/yxp/qfun/hook/qrcode/SkipWaitTimeHook;->sQUIButton:Ljava/lang/Class;

    .line 37
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    .line 38
    new-instance v0, Lme/yxp/qfun/hook/qrcode/SkipWaitTimeHook$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lme/yxp/qfun/hook/qrcode/SkipWaitTimeHook$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Button;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lme/yxp/qfun/utils/thread/SyncUtils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 4

    .line 35
    sget-object v0, Lme/yxp/qfun/hook/qrcode/SkipWaitTimeHook;->sDoOnCreate:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/qrcode/SkipWaitTimeHook$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lme/yxp/qfun/hook/qrcode/SkipWaitTimeHook$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->hookIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method

.method public initMethod()Z
    .registers 2

    .line 25
    const-string p0, "com.tencent.biz.qui.quibutton.QUIButton"

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/qrcode/SkipWaitTimeHook;->sQUIButton:Ljava/lang/Class;

    .line 27
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_QrLoginAuthActivity()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const-string v0, "doOnCreate"

    .line 28
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/qrcode/SkipWaitTimeHook;->sDoOnCreate:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method
