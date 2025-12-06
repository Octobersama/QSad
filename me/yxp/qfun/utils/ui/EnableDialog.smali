.class public Lme/yxp/qfun/utils/ui/EnableDialog;
.super Ljava/lang/Object;
.source "EnableDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/utils/ui/EnableDialog$TroopAdapter;,
        Lme/yxp/qfun/utils/ui/EnableDialog$SearchWatch;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private final mEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

.field private final mTroopList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:Ljava/lang/String;

.field private statusTextView:Landroid/widget/TextView;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lme/yxp/qfun/utils/ui/EnableDialog;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnableInfo(Lme/yxp/qfun/utils/ui/EnableDialog;)Lme/yxp/qfun/utils/qq/EnableInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msearch(Lme/yxp/qfun/utils/ui/EnableDialog;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/utils/ui/EnableDialog;->search(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetStatus(Lme/yxp/qfun/utils/ui/EnableDialog;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/utils/ui/EnableDialog;->setStatus()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lme/yxp/qfun/utils/qq/EnableInfo;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mTroopList:Ljava/util/List;

    .line 38
    iput-object p2, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    .line 39
    iput-object p1, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mContext:Landroid/content/Context;

    .line 40
    instance-of p1, p2, Lme/yxp/qfun/utils/qq/EnableInfo$TroopEnableInfo;

    if-eqz p1, :cond_17

    .line 41
    const-string p1, "群组"

    iput-object p1, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mType:Ljava/lang/String;

    goto :goto_24

    .line 42
    :cond_17
    instance-of p1, p2, Lme/yxp/qfun/utils/qq/EnableInfo$FriendEnableInfo;

    if-eqz p1, :cond_20

    .line 43
    const-string p1, "好友"

    iput-object p1, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mType:Ljava/lang/String;

    goto :goto_24

    .line 45
    :cond_20
    const-string p1, ""

    iput-object p1, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mType:Ljava/lang/String;

    .line 48
    :goto_24
    invoke-direct {p0}, Lme/yxp/qfun/utils/ui/EnableDialog;->initView()V

    return-void
.end method

.method private initView()V
    .registers 6

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "选择"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lme/yxp/qfun/R$layout;->dialog_troop_enable:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 59
    sget v1, Lme/yxp/qfun/R$id;->lv_troops:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 60
    iget-object v3, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mTroopList:Ljava/util/List;

    iget-object v4, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    iget-object v4, v4, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v4}, Lme/yxp/qfun/utils/data/TernaryDataList;->getKeyArray()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    new-instance v3, Lme/yxp/qfun/utils/ui/EnableDialog$TroopAdapter;

    iget-object v4, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mTroopList:Ljava/util/List;

    invoke-direct {v3, p0, v4, v2}, Lme/yxp/qfun/utils/ui/EnableDialog$TroopAdapter;-><init>(Lme/yxp/qfun/utils/ui/EnableDialog;Ljava/util/List;Lme/yxp/qfun/utils/ui/EnableDialog-IA;)V

    iput-object v3, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 62
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    sget v1, Lme/yxp/qfun/R$id;->et_search:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 65
    new-instance v3, Lme/yxp/qfun/utils/ui/EnableDialog$SearchWatch;

    invoke-direct {v3, p0, v2}, Lme/yxp/qfun/utils/ui/EnableDialog$SearchWatch;-><init>(Lme/yxp/qfun/utils/ui/EnableDialog;Lme/yxp/qfun/utils/ui/EnableDialog-IA;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 67
    sget v1, Lme/yxp/qfun/R$id;->tv_selection_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->statusTextView:Landroid/widget/TextView;

    .line 68
    invoke-direct {p0}, Lme/yxp/qfun/utils/ui/EnableDialog;->setStatus()V

    return-void
.end method

.method private search(Ljava/lang/String;)V
    .registers 7

    .line 73
    iget-object v0, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mTroopList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    iget-object v0, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    iget-object v0, v0, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v0}, Lme/yxp/qfun/utils/data/TernaryDataList;->getKeyArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-virtual {v1}, Lme/yxp/qfun/utils/qq/EnableInfo;->getValueArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 77
    iget-object p1, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mTroopList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_67

    :cond_27
    const/4 v2, 0x0

    .line 79
    :goto_28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_67

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "（"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "）"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 81
    iget-object v3, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mTroopList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 85
    :cond_67
    :goto_67
    iget-object p0, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setStatus()V
    .registers 7

    .line 91
    iget-object v0, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    iget-object v0, v0, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v0}, Lme/yxp/qfun/utils/data/TernaryDataList;->getKeyArray()[Ljava/lang/String;

    move-result-object v0

    .line 92
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v2, v1, :cond_1e

    aget-object v4, v0, v2

    .line 93
    iget-object v5, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    iget-object v5, v5, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v5, v4}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    add-int/lit8 v3, v3, 0x1

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1e
    if-nez v3, :cond_41

    .line 98
    iget-object v0, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->statusTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "未选择任何"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p0, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->statusTextView:Landroid/widget/TextView;

    const v0, -0x777778

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 100
    :cond_41
    array-length v1, v0

    const v2, -0xffff01

    if-ne v3, v1, :cond_65

    .line 101
    iget-object v0, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->statusTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "已选择所有"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p0, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 104
    :cond_65
    iget-object v1, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->statusTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "已选择"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "个"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mType:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p0, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public show()V
    .registers 1

    .line 110
    iget-object p0, p0, Lme/yxp/qfun/utils/ui/EnableDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_7

    .line 111
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_7
    return-void
.end method
