.class Lme/yxp/qfun/activity/InjectSettings$ItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InjectSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/activity/InjectSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lme/yxp/qfun/hook/base/BaseSwitchHookItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLayoutId:I

.field final synthetic this$0:Lme/yxp/qfun/activity/InjectSettings;


# direct methods
.method public static synthetic $r8$lambda$_1gczdmiYqEGF1th9eZF-He82XA(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Landroid/widget/Switch;Landroid/view/View;)V
    .registers 3

    .line 225
    sget-object p2, Lme/yxp/qfun/hook/MainHook;->Enable:Ljava/util/Map;

    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lme/yxp/qfun/activity/InjectSettings;ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lme/yxp/qfun/hook/base/BaseSwitchHookItem;",
            ">;)V"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lme/yxp/qfun/activity/InjectSettings$ItemAdapter;->this$0:Lme/yxp/qfun/activity/InjectSettings;

    .line 190
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 191
    iput p2, p0, Lme/yxp/qfun/activity/InjectSettings$ItemAdapter;->mLayoutId:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 197
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

    if-nez p1, :cond_12

    .line 199
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 202
    :cond_12
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget p0, p0, Lme/yxp/qfun/activity/InjectSettings$ItemAdapter;->mLayoutId:I

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 203
    sget p2, Lme/yxp/qfun/R$id;->hookitemLinearLayout:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 204
    sget p3, Lme/yxp/qfun/R$id;->hookItemDesc:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 205
    sget v1, Lme/yxp/qfun/R$id;->hookItemTextView:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 206
    sget v2, Lme/yxp/qfun/R$id;->hookItemSwitch:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 208
    instance-of v3, p1, Lme/yxp/qfun/hook/base/BaseWithDataHookItem;

    if-eqz v3, :cond_4f

    iget-boolean v3, p1, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->isAvailable:Z

    if-eqz v3, :cond_4f

    .line 209
    move-object v3, p1

    check-cast v3, Lme/yxp/qfun/hook/base/BaseWithDataHookItem;

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    :cond_4f
    iget-boolean p2, p1, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->isAvailable:Z

    if-nez p2, :cond_5e

    const/16 p2, 0xff

    const/16 v3, 0xc0

    .line 213
    invoke-static {p2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 216
    :cond_5e
    invoke-virtual {p1}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getTAG()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {p1}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getDESC()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-boolean p2, p1, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->isAvailable:Z

    if-nez p2, :cond_77

    .line 220
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 221
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    return-object p0

    .line 223
    :cond_77
    sget-object p2, Lme/yxp/qfun/hook/MainHook;->Enable:Ljava/util/Map;

    invoke-virtual {p1}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 224
    new-instance p2, Lme/yxp/qfun/activity/InjectSettings$ItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, v2}, Lme/yxp/qfun/activity/InjectSettings$ItemAdapter$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Landroid/widget/Switch;)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method
