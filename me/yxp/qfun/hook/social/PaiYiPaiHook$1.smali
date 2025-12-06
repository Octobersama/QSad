.class Lme/yxp/qfun/hook/social/PaiYiPaiHook$1;
.super Ljava/lang/Object;
.source "PaiYiPaiHook.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yxp/qfun/hook/social/PaiYiPaiHook;->createTextWatcher(Landroid/widget/EditText;)Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/yxp/qfun/hook/social/PaiYiPaiHook;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lme/yxp/qfun/hook/social/PaiYiPaiHook;Landroid/widget/EditText;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lme/yxp/qfun/hook/social/PaiYiPaiHook$1;->this$0:Lme/yxp/qfun/hook/social/PaiYiPaiHook;

    iput-object p2, p0, Lme/yxp/qfun/hook/social/PaiYiPaiHook$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 95
    :try_start_a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_15

    const/16 v1, 0xc8

    if-le p1, v1, :cond_47

    .line 97
    :cond_15
    iget-object p1, p0, Lme/yxp/qfun/hook/social/PaiYiPaiHook$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    iget-object p1, p0, Lme/yxp/qfun/hook/social/PaiYiPaiHook$1;->val$editText:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lme/yxp/qfun/hook/social/PaiYiPaiHook$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 100
    iget-object p1, p0, Lme/yxp/qfun/hook/social/PaiYiPaiHook$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_35} :catch_36

    return-void

    .line 103
    :catch_36
    iget-object p1, p0, Lme/yxp/qfun/hook/social/PaiYiPaiHook$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    iget-object p1, p0, Lme/yxp/qfun/hook/social/PaiYiPaiHook$1;->val$editText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p0, Lme/yxp/qfun/hook/social/PaiYiPaiHook$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_47
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    return-void
.end method
