.class public Lme/yxp/qfun/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private mIvActivationStatus:Landroid/widget/ImageView;

.field private mTvFramework:Landroid/widget/TextView;

.field private mTvHookStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkHookStatus()Z
    .registers 4

    .line 71
    invoke-static {}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->isModuleEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->isInHostProcess()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v2

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v1

    .line 72
    :goto_12
    invoke-direct {p0}, Lme/yxp/qfun/MainActivity;->checkLibXposedStatus()Z

    move-result p0

    if-nez v0, :cond_1c

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    return v2

    :cond_1c
    :goto_1c
    return v1
.end method

.method private checkLibXposedStatus()Z
    .registers 3

    .line 78
    invoke-static {}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->getXposedService()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/github/libxposed/service/XposedService;

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 83
    :cond_e
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lio/github/libxposed/service/XposedService;->getScope()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 84
    const-string p0, "com.tencent.mobileqq"

    const-string v1, "com.tencent.tim"

    invoke-static {p0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 85
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private initView()V
    .registers 4

    .line 34
    sget v0, Lme/yxp/qfun/R$id;->main_version:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0xd

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1.2.1"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 35
    const-string v2, "%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    sget v0, Lme/yxp/qfun/R$id;->main_isChecked:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lme/yxp/qfun/MainActivity;->mIvActivationStatus:Landroid/widget/ImageView;

    .line 40
    sget v0, Lme/yxp/qfun/R$id;->main_hookstatus:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lme/yxp/qfun/MainActivity;->mTvHookStatus:Landroid/widget/TextView;

    .line 41
    sget v0, Lme/yxp/qfun/R$id;->main_framework:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lme/yxp/qfun/MainActivity;->mTvFramework:Landroid/widget/TextView;

    return-void
.end method

.method private jump(Ljava/lang/String;)V
    .registers 4

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateActivationStatus()V
    .registers 4

    .line 62
    invoke-direct {p0}, Lme/yxp/qfun/MainActivity;->checkHookStatus()Z

    move-result v0

    .line 64
    iget-object v1, p0, Lme/yxp/qfun/MainActivity;->mIvActivationStatus:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 65
    sget v2, Lme/yxp/qfun/R$drawable;->checked:I

    goto :goto_d

    :cond_b
    sget v2, Lme/yxp/qfun/R$drawable;->unchecked:I

    .line 64
    :goto_d
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v1, p0, Lme/yxp/qfun/MainActivity;->mTvHookStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    const-string v2, "已激活"

    goto :goto_19

    :cond_17
    const-string v2, "未激活"

    :goto_19
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-direct {p0, v0}, Lme/yxp/qfun/MainActivity;->updateFrameworkInfo(Z)V

    return-void
.end method

.method private updateFrameworkInfo(Z)V
    .registers 6

    if-nez p1, :cond_c

    .line 90
    iget-object p0, p0, Lme/yxp/qfun/MainActivity;->mTvFramework:Landroid/widget/TextView;

    invoke-static {}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->getHookProviderNameForLegacyApi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 94
    :cond_c
    invoke-static {}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->getXposedService()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/github/libxposed/service/XposedService;

    if-eqz p1, :cond_40

    .line 97
    invoke-virtual {p1}, Lio/github/libxposed/service/XposedService;->getFrameworkName()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lio/github/libxposed/service/XposedService;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lio/github/libxposed/service/XposedService;->getFrameworkVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 100
    invoke-virtual {p1}, Lio/github/libxposed/service/XposedService;->getAPIVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 96
    const-string v0, "%s %s (%s), API %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 101
    iget-object p0, p0, Lme/yxp/qfun/MainActivity;->mTvFramework:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 103
    :cond_40
    iget-object p0, p0, Lme/yxp/qfun/MainActivity;->mTvFramework:Landroid/widget/TextView;

    invoke-static {}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->getHookProviderNameForLegacyApi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public gotoGithub(Landroid/view/View;)V
    .registers 2

    .line 49
    const-string p1, "https://github.com/oneQAQone/QFun"

    invoke-direct {p0, p1}, Lme/yxp/qfun/MainActivity;->jump(Ljava/lang/String;)V

    return-void
.end method

.method public gotoQQGroup(Landroid/view/View;)V
    .registers 2

    .line 53
    const-string p1, "mqqapi://card/show_pslcard?src_type=internal&version=1&uin=1067198087&card_type=group&source=qrcode"

    invoke-direct {p0, p1}, Lme/yxp/qfun/MainActivity;->jump(Ljava/lang/String;)V

    return-void
.end method

.method public gotoTelegram(Landroid/view/View;)V
    .registers 2

    .line 45
    const-string p1, "https://t.me/QFunChannel"

    invoke-direct {p0, p1}, Lme/yxp/qfun/MainActivity;->jump(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget p1, Lme/yxp/qfun/R$layout;->main:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 28
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->init(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lme/yxp/qfun/MainActivity;->initView()V

    .line 30
    invoke-direct {p0}, Lme/yxp/qfun/MainActivity;->updateActivationStatus()V

    return-void
.end method
