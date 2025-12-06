.class Lme/yxp/qfun/utils/ui/EnableDialog$SearchWatch;
.super Ljava/lang/Object;
.source "EnableDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/utils/ui/EnableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchWatch"
.end annotation


# instance fields
.field final synthetic this$0:Lme/yxp/qfun/utils/ui/EnableDialog;


# direct methods
.method private constructor <init>(Lme/yxp/qfun/utils/ui/EnableDialog;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lme/yxp/qfun/utils/ui/EnableDialog$SearchWatch;->this$0:Lme/yxp/qfun/utils/ui/EnableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lme/yxp/qfun/utils/ui/EnableDialog;Lme/yxp/qfun/utils/ui/EnableDialog-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/utils/ui/EnableDialog$SearchWatch;-><init>(Lme/yxp/qfun/utils/ui/EnableDialog;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 156
    iget-object p0, p0, Lme/yxp/qfun/utils/ui/EnableDialog$SearchWatch;->this$0:Lme/yxp/qfun/utils/ui/EnableDialog;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/ui/EnableDialog;->-$$Nest$msearch(Lme/yxp/qfun/utils/ui/EnableDialog;Ljava/lang/String;)V

    return-void
.end method
