.class public Lme/yxp/qfun/hook/chat/ShowAtTargetHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "ShowAtTargetHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "显示艾特对象"
    desc = "点击消息中的艾特部分可直接跳转其主页（此功能可能导致滑动掉帧）"
.end annotation


# static fields
.field private static SelectableLinearLayout:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private onGetView:Lme/yxp/qfun/hook/api/OnAIOViewUpdate$AIOViewUpdateListener;


# direct methods
.method public static synthetic $r8$lambda$hNRts-zvgeb9yAMAsXOoGlLkrd0(Lme/yxp/qfun/hook/chat/ShowAtTargetHook;Landroid/widget/FrameLayout;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/hook/chat/ShowAtTargetHook;->lambda$initCallback$0(Landroid/widget/FrameLayout;Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mopenUserProfileCard(Lme/yxp/qfun/hook/chat/ShowAtTargetHook;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/chat/ShowAtTargetHook;->openUserProfileCard(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method

.method private findFirstName(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .registers 3

    .line 106
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private findSelectableLinearLayout(Landroid/widget/FrameLayout;)Landroid/view/ViewGroup;
    .registers 2

    const/4 p0, 0x0

    .line 73
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 74
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 76
    sget-object p1, Lme/yxp/qfun/hook/chat/ShowAtTargetHook;->SelectableLinearLayout:Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 77
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTextViewList(Landroid/view/ViewGroup;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_25

    .line 86
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 87
    check-cast p1, Landroid/view/ViewGroup;

    .line 88
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3b

    .line 89
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 90
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 93
    :cond_25
    :goto_25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3b

    .line 94
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 95
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_38

    .line 96
    check-cast v0, Landroid/widget/TextView;

    .line 97
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_3b
    return-object p0
.end method

.method private synthetic lambda$initCallback$0(Landroid/widget/FrameLayout;Ljava/lang/Object;)V
    .registers 5

    .line 45
    new-instance v0, Lme/yxp/qfun/javaplugin/api/MsgData;

    invoke-direct {v0, p2}, Lme/yxp/qfun/javaplugin/api/MsgData;-><init>(Ljava/lang/Object;)V

    .line 47
    iget p2, v0, Lme/yxp/qfun/javaplugin/api/MsgData;->type:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2b

    iget p2, v0, Lme/yxp/qfun/javaplugin/api/MsgData;->msgType:I

    if-eq p2, v1, :cond_12

    const/16 v1, 0x9

    if-ne p2, v1, :cond_2b

    :cond_12
    iget-object p2, v0, Lme/yxp/qfun/javaplugin/api/MsgData;->atMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1b

    goto :goto_2b

    .line 49
    :cond_1b
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/chat/ShowAtTargetHook;->findSelectableLinearLayout(Landroid/widget/FrameLayout;)Landroid/view/ViewGroup;

    move-result-object p1

    if-nez p1, :cond_22

    goto :goto_2b

    .line 52
    :cond_22
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/chat/ShowAtTargetHook;->getTextViewList(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p1

    .line 54
    iget-object p2, v0, Lme/yxp/qfun/javaplugin/api/MsgData;->atMap:Ljava/util/Map;

    invoke-direct {p0, p2, p1}, Lme/yxp/qfun/hook/chat/ShowAtTargetHook;->setClickableSpan(Ljava/util/Map;Ljava/util/List;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private openUserProfileCard(Ljava/lang/String;)V
    .registers 3

    .line 134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mqqapi://userprofile/friend_profile_card?src_type=web&version=1.0&source=2&uin="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 135
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 136
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setClickableSpan(Ljava/util/Map;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 114
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/SpannableString;

    .line 115
    invoke-direct {p0, v5, v2}, Lme/yxp/qfun/hook/chat/ShowAtTargetHook;->findFirstName(Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1e

    .line 118
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v6

    .line 119
    new-instance v3, Lme/yxp/qfun/hook/chat/ShowAtTargetHook$1;

    invoke-direct {v3, p0, v1}, Lme/yxp/qfun/hook/chat/ShowAtTargetHook$1;-><init>(Lme/yxp/qfun/hook/chat/ShowAtTargetHook;Ljava/lang/String;)V

    const/16 v1, 0x21

    invoke-virtual {v5, v3, v6, v2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 125
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_8

    :cond_4e
    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 2

    .line 43
    new-instance v0, Lme/yxp/qfun/hook/chat/ShowAtTargetHook$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lme/yxp/qfun/hook/chat/ShowAtTargetHook$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/chat/ShowAtTargetHook;)V

    iput-object v0, p0, Lme/yxp/qfun/hook/chat/ShowAtTargetHook;->onGetView:Lme/yxp/qfun/hook/api/OnAIOViewUpdate$AIOViewUpdateListener;

    return-void
.end method

.method public initMethod()Z
    .registers 1

    .line 36
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_SelectableLinearLayout()Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/chat/ShowAtTargetHook;->SelectableLinearLayout:Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method

.method public startHook()V
    .registers 2

    .line 63
    sget-object v0, Lme/yxp/qfun/hook/api/OnAIOViewUpdate;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object p0, p0, Lme/yxp/qfun/hook/chat/ShowAtTargetHook;->onGetView:Lme/yxp/qfun/hook/api/OnAIOViewUpdate$AIOViewUpdateListener;

    invoke-virtual {v0, p0}, Lme/yxp/qfun/hook/base/ApiHookItem;->addListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    return-void
.end method

.method public stopHook()V
    .registers 2

    .line 68
    sget-object v0, Lme/yxp/qfun/hook/api/OnAIOViewUpdate;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object p0, p0, Lme/yxp/qfun/hook/chat/ShowAtTargetHook;->onGetView:Lme/yxp/qfun/hook/api/OnAIOViewUpdate$AIOViewUpdateListener;

    invoke-virtual {v0, p0}, Lme/yxp/qfun/hook/base/ApiHookItem;->removeListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    return-void
.end method
