.class public final Lme/yxp/qfun/hook/msg/FlashPicHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "FlashPicHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "闪照破解"
    desc = "以图片方式直接显示闪照"
.end annotation


# instance fields
.field private mAddViewListener:Lme/yxp/qfun/hook/api/OnAIOViewUpdate$AIOViewUpdateListener;

.field private mGetMsgListener:Lme/yxp/qfun/hook/api/OnGetMsgRecord$GetMsgRecordListener;


# direct methods
.method public static synthetic $r8$lambda$Al9bK2Iciwi3ndO0iXP8yAnFCLk(Lme/yxp/qfun/hook/msg/FlashPicHook;Landroid/widget/FrameLayout;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/hook/msg/FlashPicHook;->lambda$initCallback$1(Landroid/widget/FrameLayout;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$USMUAwN3O1iVvIl56fYA3E2GHIY(Ljava/lang/Object;)V
    .registers 4

    .line 24
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v1, "subMsgType"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x2002

    if-eq v0, v2, :cond_19

    return-void

    .line 29
    :cond_19
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    and-int/lit16 v0, v0, -0x2001

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    .line 30
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    const-string v0, "guildName"

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    const-string v0, "我是闪照"

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method

.method private addFlashView(Landroid/widget/FrameLayout;)V
    .registers 4

    .line 60
    new-instance p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41f00000  # 30.0f

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, -0xffff01

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    const-string v0, "我是闪照"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 68
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 69
    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$initCallback$1(Landroid/widget/FrameLayout;Ljava/lang/Object;)V
    .registers 5

    .line 34
    new-instance v0, Lme/yxp/qfun/javaplugin/api/MsgData;

    invoke-direct {v0, p2}, Lme/yxp/qfun/javaplugin/api/MsgData;-><init>(Ljava/lang/Object;)V

    .line 35
    iget v0, v0, Lme/yxp/qfun/javaplugin/api/MsgData;->msgType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    return-void

    .line 39
    :cond_b
    invoke-static {p2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p2

    const-string v0, "guildName"

    invoke-virtual {p2, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p2

    invoke-virtual {p2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "我是闪照"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_29

    .line 40
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/msg/FlashPicHook;->addFlashView(Landroid/widget/FrameLayout;)V

    return-void

    .line 42
    :cond_29
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/msg/FlashPicHook;->removeFlashView(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method private removeFlashView(Landroid/widget/FrameLayout;)V
    .registers 5

    const/4 p0, 0x0

    .line 73
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_29

    .line 74
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 75
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_26

    .line 76
    check-cast v0, Landroid/widget/TextView;

    .line 77
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "我是闪照"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 v1, 0x8

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_26
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_29
    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 2

    .line 23
    new-instance v0, Lme/yxp/qfun/hook/msg/FlashPicHook$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lme/yxp/qfun/hook/msg/FlashPicHook$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/hook/msg/FlashPicHook;->mGetMsgListener:Lme/yxp/qfun/hook/api/OnGetMsgRecord$GetMsgRecordListener;

    .line 33
    new-instance v0, Lme/yxp/qfun/hook/msg/FlashPicHook$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lme/yxp/qfun/hook/msg/FlashPicHook$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/msg/FlashPicHook;)V

    iput-object v0, p0, Lme/yxp/qfun/hook/msg/FlashPicHook;->mAddViewListener:Lme/yxp/qfun/hook/api/OnAIOViewUpdate$AIOViewUpdateListener;

    return-void
.end method

.method public startHook()V
    .registers 3

    .line 49
    sget-object v0, Lme/yxp/qfun/hook/api/OnGetMsgRecord;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object v1, p0, Lme/yxp/qfun/hook/msg/FlashPicHook;->mGetMsgListener:Lme/yxp/qfun/hook/api/OnGetMsgRecord$GetMsgRecordListener;

    invoke-virtual {v0, v1}, Lme/yxp/qfun/hook/base/ApiHookItem;->addListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    .line 50
    sget-object v0, Lme/yxp/qfun/hook/api/OnAIOViewUpdate;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object p0, p0, Lme/yxp/qfun/hook/msg/FlashPicHook;->mAddViewListener:Lme/yxp/qfun/hook/api/OnAIOViewUpdate$AIOViewUpdateListener;

    invoke-virtual {v0, p0}, Lme/yxp/qfun/hook/base/ApiHookItem;->addListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    return-void
.end method

.method public stopHook()V
    .registers 3

    .line 55
    sget-object v0, Lme/yxp/qfun/hook/api/OnGetMsgRecord;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object v1, p0, Lme/yxp/qfun/hook/msg/FlashPicHook;->mGetMsgListener:Lme/yxp/qfun/hook/api/OnGetMsgRecord$GetMsgRecordListener;

    invoke-virtual {v0, v1}, Lme/yxp/qfun/hook/base/ApiHookItem;->removeListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    .line 56
    sget-object v0, Lme/yxp/qfun/hook/api/OnAIOViewUpdate;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object p0, p0, Lme/yxp/qfun/hook/msg/FlashPicHook;->mAddViewListener:Lme/yxp/qfun/hook/api/OnAIOViewUpdate$AIOViewUpdateListener;

    invoke-virtual {v0, p0}, Lme/yxp/qfun/hook/base/ApiHookItem;->removeListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    return-void
.end method
