.class Lme/yxp/qfun/utils/ui/EnableDialog$TroopAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EnableDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/utils/ui/EnableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TroopAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lme/yxp/qfun/utils/ui/EnableDialog;


# direct methods
.method public static synthetic $r8$lambda$k_HceOf90fVqudlYIgWVcY9ZGF8(Lme/yxp/qfun/utils/ui/EnableDialog$TroopAdapter;Ljava/lang/String;Landroid/widget/TextView;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/utils/ui/EnableDialog$TroopAdapter;->lambda$getView$0(Ljava/lang/String;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lme/yxp/qfun/utils/ui/EnableDialog;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lme/yxp/qfun/utils/ui/EnableDialog$TroopAdapter;->this$0:Lme/yxp/qfun/utils/ui/EnableDialog;

    .line 118
    invoke-static {p1}, Lme/yxp/qfun/utils/ui/EnableDialog;->-$$Nest$fgetmContext(Lme/yxp/qfun/utils/ui/EnableDialog;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(Lme/yxp/qfun/utils/ui/EnableDialog;Ljava/util/List;Lme/yxp/qfun/utils/ui/EnableDialog-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/utils/ui/EnableDialog$TroopAdapter;-><init>(Lme/yxp/qfun/utils/ui/EnableDialog;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$getView$0(Ljava/lang/String;Landroid/widget/TextView;Landroid/view/View;)V
    .registers 6

    .line 134
    iget-object p3, p0, Lme/yxp/qfun/utils/ui/EnableDialog$TroopAdapter;->this$0:Lme/yxp/qfun/utils/ui/EnableDialog;

    invoke-static {p3}, Lme/yxp/qfun/utils/ui/EnableDialog;->-$$Nest$fgetmEnableInfo(Lme/yxp/qfun/utils/ui/EnableDialog;)Lme/yxp/qfun/utils/qq/EnableInfo;

    move-result-object p3

    iget-object p3, p3, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {p3, p1}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result p3

    .line 135
    iget-object v0, p0, Lme/yxp/qfun/utils/ui/EnableDialog$TroopAdapter;->this$0:Lme/yxp/qfun/utils/ui/EnableDialog;

    invoke-static {v0}, Lme/yxp/qfun/utils/ui/EnableDialog;->-$$Nest$fgetmEnableInfo(Lme/yxp/qfun/utils/ui/EnableDialog;)Lme/yxp/qfun/utils/qq/EnableInfo;

    move-result-object v0

    iget-object v0, v0, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    xor-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, p1, v1}, Lme/yxp/qfun/utils/data/TernaryDataList;->setIsAvailable(Ljava/lang/String;Z)V

    if-nez p3, :cond_1f

    const p1, -0xff0100

    goto :goto_21

    :cond_1f
    const/high16 p1, -0x1000000

    .line 136
    :goto_21
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object p0, p0, Lme/yxp/qfun/utils/ui/EnableDialog$TroopAdapter;->this$0:Lme/yxp/qfun/utils/ui/EnableDialog;

    invoke-static {p0}, Lme/yxp/qfun/utils/ui/EnableDialog;->-$$Nest$msetStatus(Lme/yxp/qfun/utils/ui/EnableDialog;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 125
    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Lme/yxp/qfun/utils/ui/EnableDialog$TroopAdapter;->this$0:Lme/yxp/qfun/utils/ui/EnableDialog;

    invoke-static {p3}, Lme/yxp/qfun/utils/ui/EnableDialog;->-$$Nest$fgetmContext(Lme/yxp/qfun/utils/ui/EnableDialog;)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 127
    iget-object p3, p0, Lme/yxp/qfun/utils/ui/EnableDialog$TroopAdapter;->this$0:Lme/yxp/qfun/utils/ui/EnableDialog;

    invoke-static {p3}, Lme/yxp/qfun/utils/ui/EnableDialog;->-$$Nest$fgetmEnableInfo(Lme/yxp/qfun/utils/ui/EnableDialog;)Lme/yxp/qfun/utils/qq/EnableInfo;

    move-result-object p3

    iget-object p3, p3, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {p3, p1}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_23

    const p3, -0xff0100

    goto :goto_25

    :cond_23
    const/high16 p3, -0x1000000

    .line 128
    :goto_25
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lme/yxp/qfun/utils/ui/EnableDialog$TroopAdapter;->this$0:Lme/yxp/qfun/utils/ui/EnableDialog;

    invoke-static {v0}, Lme/yxp/qfun/utils/ui/EnableDialog;->-$$Nest$fgetmEnableInfo(Lme/yxp/qfun/utils/ui/EnableDialog;)Lme/yxp/qfun/utils/qq/EnableInfo;

    move-result-object v0

    iget-object v0, v0, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v0, p1}, Lme/yxp/qfun/utils/data/TernaryDataList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "（"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "）"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p3, 0xc8

    .line 130
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setHeight(I)V

    const/high16 p3, 0x41700000  # 15.0f

    .line 131
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p3, 0x11

    .line 132
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 133
    new-instance p3, Lme/yxp/qfun/utils/ui/EnableDialog$TroopAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2}, Lme/yxp/qfun/utils/ui/EnableDialog$TroopAdapter$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/utils/ui/EnableDialog$TroopAdapter;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
