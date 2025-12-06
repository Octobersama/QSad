.class public Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;
.super Ljava/lang/Object;
.source "Lsp100HookWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackWrapper"
.end annotation


# instance fields
.field public final callback:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;

.field public final hookId:J

.field public final priority:I

.field public final tag:I


# direct methods
.method public constructor <init>(Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;II)V
    .registers 6

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    invoke-static {}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->-$$Nest$sfgetsNextHookId()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;->hookId:J

    .line 236
    iput-object p1, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;->callback:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;

    .line 237
    iput p2, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;->priority:I

    .line 238
    iput p3, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;->tag:I

    return-void
.end method
