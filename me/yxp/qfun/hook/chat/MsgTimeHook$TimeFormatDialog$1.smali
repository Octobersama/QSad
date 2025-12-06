.class Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog$1;
.super Ljava/lang/Object;
.source "MsgTimeHook.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;-><init>(Lme/yxp/qfun/hook/chat/MsgTimeHook;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;


# direct methods
.method public constructor <init>(Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog$1;->this$1:Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 183
    iget-object p0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog$1;->this$1:Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;

    invoke-static {p0}, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->-$$Nest$mvalidateInputs(Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;)Z

    return-void
.end method
