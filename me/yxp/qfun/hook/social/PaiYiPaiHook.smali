.class public final Lme/yxp/qfun/hook/social/PaiYiPaiHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "PaiYiPaiHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "拍一拍连拍"
    desc = "双击头像后可输入次数(单日上限200)"
.end annotation


# static fields
.field private static sLiftTimeMethod:Ljava/lang/reflect/Method;

.field private static sSendPaiYiPaiMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$3gv78pqIA-JJ4h7W4CpEtNzLYRw(Lme/yxp/qfun/hook/social/PaiYiPaiHook;Landroid/widget/EditText;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lme/yxp/qfun/hook/social/PaiYiPaiHook;->lambda$showInputDialog$2(Landroid/widget/EditText;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$BUHZdz-MsQ-wxmwKUm4yERPcfBE(Lme/yxp/qfun/hook/social/PaiYiPaiHook;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/social/PaiYiPaiHook;->lambda$initCallback$1(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GA2Puu7uRQ_1UExThdhJjQOBpjo(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 52
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method

.method private createTextWatcher(Landroid/widget/EditText;)Landroid/text/TextWatcher;
    .registers 3

    .line 81
    new-instance v0, Lme/yxp/qfun/hook/social/PaiYiPaiHook$1;

    invoke-direct {v0, p0, p1}, Lme/yxp/qfun/hook/social/PaiYiPaiHook$1;-><init>(Lme/yxp/qfun/hook/social/PaiYiPaiHook;Landroid/widget/EditText;)V

    return-object v0
.end method

.method private synthetic lambda$initCallback$1(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 3

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 56
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 57
    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/hook/social/PaiYiPaiHook;->showInputDialog(Landroid/app/Activity;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method private synthetic lambda$showInputDialog$2(Landroid/widget/EditText;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 72
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_10

    const/4 p1, 0x1

    goto :goto_14

    :cond_10
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 74
    :goto_14
    invoke-direct {p0, p2, p1}, Lme/yxp/qfun/hook/social/PaiYiPaiHook;->sendMultiplePaiYiPai(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;I)V

    return-void
.end method

.method private sendMultiplePaiYiPai(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;I)V
    .registers 6

    const/4 p0, 0x0

    :goto_1
    if-ge p0, p2, :cond_f

    .line 115
    :try_start_3
    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v2, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_f

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :catch_f
    :cond_f
    return-void
.end method

.method private showInputDialog(Landroid/app/Activity;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 62
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 64
    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 66
    invoke-direct {p0, v0}, Lme/yxp/qfun/hook/social/PaiYiPaiHook;->createTextWatcher(Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string p1, "请输入次数"

    .line 69
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lme/yxp/qfun/hook/social/PaiYiPaiHook$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p2}, Lme/yxp/qfun/hook/social/PaiYiPaiHook$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/social/PaiYiPaiHook;Landroid/widget/EditText;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    .line 71
    const-string p0, "确定"

    invoke-virtual {p1, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 4

    .line 51
    sget-object v0, Lme/yxp/qfun/hook/social/PaiYiPaiHook;->sLiftTimeMethod:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/social/PaiYiPaiHook$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lme/yxp/qfun/hook/social/PaiYiPaiHook$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->hookIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    .line 54
    sget-object v0, Lme/yxp/qfun/hook/social/PaiYiPaiHook;->sSendPaiYiPaiMethod:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/social/PaiYiPaiHook$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/social/PaiYiPaiHook$$ExternalSyntheticLambda2;-><init>(Lme/yxp/qfun/hook/social/PaiYiPaiHook;)V

    invoke-static {p0, v0, v1, v2}, Lme/yxp/qfun/utils/hook/HookUtils;->hookIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method

.method public initMethod()Z
    .registers 5

    .line 30
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    :try_start_6
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_PaiYiPaiHandler()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    .line 31
    invoke-virtual {v2, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    filled-new-array {v1, v1, p0, p0}, [Ljava/lang/Class;

    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lme/yxp/qfun/hook/social/PaiYiPaiHook;->sSendPaiYiPaiMethod:Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_21

    goto :goto_3b

    .line 35
    :catch_21
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_PaiYiPaiHandler()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    .line 36
    invoke-virtual {v2, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    filled-new-array {p0, p0, v1, v1}, [Ljava/lang/Class;

    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/social/PaiYiPaiHook;->sSendPaiYiPaiMethod:Ljava/lang/reflect/Method;

    .line 41
    :goto_3b
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_PaiYiPaiHandler()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 42
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/social/PaiYiPaiHook;->sLiftTimeMethod:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method
