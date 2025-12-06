.class public Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$UnhookHandle;
.super Ljava/lang/Object;
.source "Lsp100HookWrapper.java"

# interfaces
.implements Lme/yxp/qfun/loader/hookapi/IHookBridge$MemberUnhookHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnhookHandle"
.end annotation


# instance fields
.field private final callback:Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

.field private final method:Ljava/lang/reflect/Member;


# direct methods
.method public constructor <init>(Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;Ljava/lang/reflect/Member;)V
    .registers 3

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$UnhookHandle;->callback:Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    .line 443
    iput-object p2, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$UnhookHandle;->method:Ljava/lang/reflect/Member;

    return-void
.end method


# virtual methods
.method public getCallback()Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;
    .registers 1

    .line 455
    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$UnhookHandle;->callback:Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;->callback:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;

    return-object p0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .registers 1

    .line 449
    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$UnhookHandle;->method:Ljava/lang/reflect/Member;

    return-object p0
.end method

.method public isHookActive()Z
    .registers 2

    .line 460
    iget-object v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$UnhookHandle;->method:Ljava/lang/reflect/Member;

    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$UnhookHandle;->callback:Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    invoke-static {v0, p0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->isMethodCallbackRegistered(Ljava/lang/reflect/Member;Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;)Z

    move-result p0

    return p0
.end method

.method public unhook()V
    .registers 2

    .line 465
    iget-object v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$UnhookHandle;->method:Ljava/lang/reflect/Member;

    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$UnhookHandle;->callback:Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    invoke-static {v0, p0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->removeMethodCallback(Ljava/lang/reflect/Member;Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;)V

    return-void
.end method
