.class public Lme/yxp/qfun/loader/lsp100/dyn/Lsp100CallbackProxy$P0000000050;
.super Ljava/lang/Object;
.source "Lsp100CallbackProxy.java"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/loader/lsp100/dyn/Lsp100CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "P0000000050"
.end annotation

.annotation runtime Lio/github/libxposed/api/annotations/XposedHooker;
.end annotation


# static fields
.field public static final tag:I = 0x32


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static after(Lio/github/libxposed/api/XposedInterface$AfterHookCallback;Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;)V
    .registers 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Lio/github/libxposed/api/annotations/AfterInvocation;
    .end annotation

    const/16 v0, 0x32

    .line 35
    invoke-static {p0, p1, v0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$Lsp100HookAgent;->handleAfterHookedMethod(Lio/github/libxposed/api/XposedInterface$AfterHookCallback;Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;I)V

    return-void
.end method

.method public static before(Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;)Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Lio/github/libxposed/api/annotations/BeforeInvocation;
    .end annotation

    const/16 v0, 0x32

    .line 29
    invoke-static {p0, v0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$Lsp100HookAgent;->handleBeforeHookedMethod(Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;I)Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;

    move-result-object p0

    return-object p0
.end method
