.class public Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;
.super Ljava/lang/Object;
.source "Lsp100HookWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackListHolder"
.end annotation


# instance fields
.field public callbacks:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

.field public final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;->lock:Ljava/lang/Object;

    .line 246
    invoke-static {}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->-$$Nest$sfgetEMPTY_CALLBACKS()[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;->callbacks:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    return-void
.end method
