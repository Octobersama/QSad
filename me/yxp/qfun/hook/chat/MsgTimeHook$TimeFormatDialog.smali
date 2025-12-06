.class Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;
.super Ljava/lang/Object;
.source "MsgTimeHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/hook/chat/MsgTimeHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeFormatDialog"
.end annotation


# instance fields
.field private final mColorInput:Landroid/widget/EditText;

.field private mConfirmedColor:I

.field private mConfirmedFormat:Ljava/lang/String;

.field private final mDialog:Landroid/app/AlertDialog;

.field private final mErrorText:Landroid/widget/TextView;

.field private final mFormatInput:Landroid/widget/EditText;

.field private mPositiveButton:Landroid/widget/Button;

.field private final mPreviewText:Landroid/widget/TextView;

.field final synthetic this$0:Lme/yxp/qfun/hook/chat/MsgTimeHook;


# direct methods
.method public static synthetic $r8$lambda$9n-ZHcA4SlTfDLsUNB-uhGFpzX0(Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KG9nPUBnVnUQsxoTGh9QhEI4w50(Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->lambda$new$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_7-pASpfS2AWCoakybEje92RQl4(Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Zy6mqW1VkSKLq3AWFA4NZO_XL0(Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->lambda$new$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mvalidateInputs(Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->validateInputs()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lme/yxp/qfun/hook/chat/MsgTimeHook;Landroid/content/Context;)V
    .registers 9

    .line 147
    iput-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->this$0:Lme/yxp/qfun/hook/chat/MsgTimeHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 149
    sget v1, Lme/yxp/qfun/R$layout;->dialog_time_format:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 151
    sget v1, Lme/yxp/qfun/R$id;->et_color:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mColorInput:Landroid/widget/EditText;

    .line 152
    sget v3, Lme/yxp/qfun/R$id;->et_format:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mFormatInput:Landroid/widget/EditText;

    .line 153
    sget v4, Lme/yxp/qfun/R$id;->tv_preview:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mPreviewText:Landroid/widget/TextView;

    .line 154
    sget v5, Lme/yxp/qfun/R$id;->tv_error:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mErrorText:Landroid/widget/TextView;

    .line 156
    invoke-static {p1}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->-$$Nest$fgetmCurrentColor(Lme/yxp/qfun/hook/chat/MsgTimeHook;)I

    move-result v5

    invoke-static {p1, v5}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->-$$Nest$mcolorToHex(Lme/yxp/qfun/hook/chat/MsgTimeHook;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-static {p1}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->-$$Nest$fgetmCurrentFormat(Lme/yxp/qfun/hook/chat/MsgTimeHook;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {p1}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->-$$Nest$fgetmCurrentFormat(Lme/yxp/qfun/hook/chat/MsgTimeHook;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-static {p1}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->-$$Nest$fgetmCurrentColor(Lme/yxp/qfun/hook/chat/MsgTimeHook;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    invoke-static {p1}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->-$$Nest$fgetmCurrentColor(Lme/yxp/qfun/hook/chat/MsgTimeHook;)I

    move-result v1

    iput v1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mConfirmedColor:I

    .line 162
    invoke-static {p1}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->-$$Nest$fgetmCurrentFormat(Lme/yxp/qfun/hook/chat/MsgTimeHook;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mConfirmedFormat:Ljava/lang/String;

    .line 164
    new-instance p1, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {p1, p2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string p2, "时间格式设置"

    .line 165
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 166
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "确认"

    .line 167
    invoke-virtual {p1, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "取消"

    .line 168
    invoke-virtual {p1, p2, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mDialog:Landroid/app/AlertDialog;

    .line 172
    new-instance p2, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog$$ExternalSyntheticLambda2;-><init>(Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 215
    new-instance p2, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog$$ExternalSyntheticLambda3;-><init>(Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 4

    .line 195
    invoke-direct {p0}, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->validateInputs()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 197
    :try_start_6
    iget-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->this$0:Lme/yxp/qfun/hook/chat/MsgTimeHook;

    iget-object v0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mColorInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->-$$Nest$mparseColor(Lme/yxp/qfun/hook/chat/MsgTimeHook;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mConfirmedColor:I

    .line 198
    iget-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mFormatInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mConfirmedFormat:Ljava/lang/String;

    .line 199
    iget-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->this$0:Lme/yxp/qfun/hook/chat/MsgTimeHook;

    iget v0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mConfirmedColor:I

    invoke-static {p1, v0}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->-$$Nest$fputmCurrentColor(Lme/yxp/qfun/hook/chat/MsgTimeHook;I)V

    .line 200
    iget-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->this$0:Lme/yxp/qfun/hook/chat/MsgTimeHook;

    iget-object v0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mConfirmedFormat:Ljava/lang/String;

    invoke-static {p1, v0}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->-$$Nest$fputmCurrentFormat(Lme/yxp/qfun/hook/chat/MsgTimeHook;Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception p1

    .line 203
    iget-object p0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mErrorText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "处理输入时出错: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_53
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .registers 3

    .line 209
    iget-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->this$0:Lme/yxp/qfun/hook/chat/MsgTimeHook;

    iget v0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mConfirmedColor:I

    invoke-static {p1, v0}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->-$$Nest$fputmCurrentColor(Lme/yxp/qfun/hook/chat/MsgTimeHook;I)V

    .line 210
    iget-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->this$0:Lme/yxp/qfun/hook/chat/MsgTimeHook;

    iget-object v0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mConfirmedFormat:Ljava/lang/String;

    invoke-static {p1, v0}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->-$$Nest$fputmCurrentFormat(Lme/yxp/qfun/hook/chat/MsgTimeHook;Ljava/lang/String;)V

    .line 211
    iget-object p0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/content/DialogInterface;)V
    .registers 4

    .line 173
    iget-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mPositiveButton:Landroid/widget/Button;

    .line 174
    iget-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 176
    new-instance v0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog$1;

    invoke-direct {v0, p0}, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog$1;-><init>(Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;)V

    .line 191
    iget-object v1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mColorInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 192
    iget-object v1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mFormatInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 194
    iget-object v0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mPositiveButton:Landroid/widget/Button;

    new-instance v1, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    new-instance v0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/content/DialogInterface;)V
    .registers 3

    .line 216
    iget-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->this$0:Lme/yxp/qfun/hook/chat/MsgTimeHook;

    iget v0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mConfirmedColor:I

    invoke-static {p1, v0}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->-$$Nest$fputmCurrentColor(Lme/yxp/qfun/hook/chat/MsgTimeHook;I)V

    .line 217
    iget-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->this$0:Lme/yxp/qfun/hook/chat/MsgTimeHook;

    iget-object p0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mConfirmedFormat:Ljava/lang/String;

    invoke-static {p1, p0}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->-$$Nest$fputmCurrentFormat(Lme/yxp/qfun/hook/chat/MsgTimeHook;Ljava/lang/String;)V

    return-void
.end method

.method private validateInputs()Z
    .registers 7

    .line 226
    iget-object v0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mColorInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mFormatInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2f

    .line 232
    const-string v0, "• 颜色不能为空\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2d
    move v0, v4

    goto :goto_4f

    .line 236
    :cond_2f
    :try_start_2f
    iget-object v3, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->this$0:Lme/yxp/qfun/hook/chat/MsgTimeHook;

    invoke-static {v3, v0}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->-$$Nest$mparseColor(Lme/yxp/qfun/hook/chat/MsgTimeHook;Ljava/lang/String;)I

    move-result v0

    .line 237
    iget-object v3, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_3a} :catch_3c

    const/4 v0, 0x1

    goto :goto_4f

    :catch_3c
    move-exception v0

    .line 239
    const-string v3, "• 颜色格式无效: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 244
    :goto_4f
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 245
    const-string v0, "• 时间格式不能为空"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5a
    move v0, v4

    goto :goto_82

    .line 249
    :cond_5c
    :try_start_5c
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 250
    iget-object v3, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_73} :catch_74
    .catch Ljava/lang/NullPointerException; {:try_start_5c .. :try_end_73} :catch_74

    goto :goto_82

    :catch_74
    move-exception v0

    .line 252
    const-string v1, "• 时间格式无效: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    .line 257
    :goto_82
    iget-object v1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_94

    goto :goto_96

    :cond_94
    const/16 v4, 0x8

    :goto_96
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object p0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return v0
.end method


# virtual methods
.method public show()V
    .registers 1

    .line 222
    iget-object p0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
