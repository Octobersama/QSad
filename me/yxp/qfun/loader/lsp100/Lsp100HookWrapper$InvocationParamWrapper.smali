.class public Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;
.super Ljava/lang/Object;
.source "Lsp100HookWrapper.java"

# interfaces
.implements Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvocationParamWrapper"
.end annotation


# instance fields
.field after:Lio/github/libxposed/api/XposedInterface$AfterHookCallback;

.field before:Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;

.field public callbacks:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

.field public extras:[Ljava/lang/Object;

.field public index:I

.field public isAfter:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 253
    iput v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->index:I

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->isAfter:Z

    return-void
.end method

.method private checkLifecycle()V
    .registers 3

    .line 358
    iget-boolean v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->isAfter:Z

    if-eqz v0, :cond_8

    iget-object v1, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->after:Lio/github/libxposed/api/XposedInterface$AfterHookCallback;

    if-eqz v1, :cond_f

    :cond_8
    if-nez v0, :cond_17

    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->before:Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;

    if-eqz p0, :cond_f

    goto :goto_17

    .line 359
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "attempt to access hook param after destroyed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public getArgs()[Ljava/lang/Object;
    .registers 2

    .line 287
    invoke-direct {p0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->checkLifecycle()V

    .line 288
    iget-boolean v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->isAfter:Z

    if-eqz v0, :cond_e

    .line 289
    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->after:Lio/github/libxposed/api/XposedInterface$AfterHookCallback;

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$AfterHookCallback;->getArgs()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 291
    :cond_e
    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->before:Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;->getArgs()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getExtra()Ljava/lang/Object;
    .registers 2

    .line 340
    invoke-direct {p0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->checkLifecycle()V

    .line 341
    iget-object v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->extras:[Ljava/lang/Object;

    if-nez v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 344
    :cond_9
    iget p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->index:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .registers 2

    .line 265
    invoke-direct {p0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->checkLifecycle()V

    .line 266
    iget-boolean v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->isAfter:Z

    if-eqz v0, :cond_e

    .line 267
    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->after:Lio/github/libxposed/api/XposedInterface$AfterHookCallback;

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$AfterHookCallback;->getMember()Ljava/lang/reflect/Member;

    move-result-object p0

    return-object p0

    .line 269
    :cond_e
    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->before:Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;->getMember()Ljava/lang/reflect/Member;

    move-result-object p0

    return-object p0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2

    .line 298
    invoke-direct {p0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->checkLifecycle()V

    .line 299
    iget-boolean v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->isAfter:Z

    if-eqz v0, :cond_e

    .line 300
    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->after:Lio/github/libxposed/api/XposedInterface$AfterHookCallback;

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$AfterHookCallback;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getThisObject()Ljava/lang/Object;
    .registers 2

    .line 276
    invoke-direct {p0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->checkLifecycle()V

    .line 277
    iget-boolean v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->isAfter:Z

    if-eqz v0, :cond_e

    .line 278
    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->after:Lio/github/libxposed/api/XposedInterface$AfterHookCallback;

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$AfterHookCallback;->getThisObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 280
    :cond_e
    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->before:Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;->getThisObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    .line 319
    invoke-direct {p0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->checkLifecycle()V

    .line 320
    iget-boolean v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->isAfter:Z

    if-eqz v0, :cond_e

    .line 321
    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->after:Lio/github/libxposed/api/XposedInterface$AfterHookCallback;

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$AfterHookCallback;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public setExtra(Ljava/lang/Object;)V
    .registers 3

    .line 349
    invoke-direct {p0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->checkLifecycle()V

    .line 350
    iget-object v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->extras:[Ljava/lang/Object;

    if-nez v0, :cond_e

    .line 352
    iget-object v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->callbacks:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->extras:[Ljava/lang/Object;

    .line 354
    :cond_e
    iget-object v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->extras:[Ljava/lang/Object;

    iget p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->index:I

    aput-object p1, v0, p0

    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .registers 3

    .line 308
    invoke-direct {p0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->checkLifecycle()V

    .line 309
    iget-boolean v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->isAfter:Z

    if-eqz v0, :cond_d

    .line 310
    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->after:Lio/github/libxposed/api/XposedInterface$AfterHookCallback;

    invoke-interface {p0, p1}, Lio/github/libxposed/api/XposedInterface$AfterHookCallback;->setResult(Ljava/lang/Object;)V

    return-void

    .line 312
    :cond_d
    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->before:Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;

    invoke-interface {p0, p1}, Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;->returnAndSkip(Ljava/lang/Object;)V

    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .registers 3

    .line 329
    invoke-direct {p0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->checkLifecycle()V

    .line 330
    iget-boolean v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->isAfter:Z

    if-eqz v0, :cond_d

    .line 331
    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->after:Lio/github/libxposed/api/XposedInterface$AfterHookCallback;

    invoke-interface {p0, p1}, Lio/github/libxposed/api/XposedInterface$AfterHookCallback;->setThrowable(Ljava/lang/Throwable;)V

    return-void

    .line 333
    :cond_d
    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->before:Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;

    invoke-interface {p0, p1}, Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;->throwAndSkip(Ljava/lang/Throwable;)V

    return-void
.end method
