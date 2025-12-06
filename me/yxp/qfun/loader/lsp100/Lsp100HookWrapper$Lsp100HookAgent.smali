.class public Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$Lsp100HookAgent;
.super Ljava/lang/Object;
.source "Lsp100HookWrapper.java"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lsp100HookAgent"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleAfterHookedMethod(Lio/github/libxposed/api/XposedInterface$AfterHookCallback;Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    .line 417
    iput-boolean p2, p1, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->isAfter:Z

    .line 418
    iput-object p0, p1, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->after:Lio/github/libxposed/api/XposedInterface$AfterHookCallback;

    .line 420
    iget-object p0, p1, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->callbacks:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    array-length p0, p0

    sub-int/2addr p0, p2

    :goto_c
    if-ltz p0, :cond_27

    .line 421
    iput p0, p1, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->index:I

    .line 423
    :try_start_10
    iget-object p2, p1, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->callbacks:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    aget-object p2, p2, p0

    iget-object p2, p2, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;->callback:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;

    invoke-interface {p2, p1}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;->afterHookedMember(Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1a

    goto :goto_24

    :catchall_1a
    move-exception p2

    .line 425
    sget-object v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->self:Lio/github/libxposed/api/XposedModule;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/github/libxposed/api/XposedModule;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_24
    add-int/lit8 p0, p0, -0x1

    goto :goto_c

    :cond_27
    const/4 p0, 0x0

    .line 429
    iput-object p0, p1, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->callbacks:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    .line 430
    iput-object p0, p1, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->extras:[Ljava/lang/Object;

    .line 431
    iput-object p0, p1, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->before:Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;

    .line 432
    iput-object p0, p1, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->after:Lio/github/libxposed/api/XposedInterface$AfterHookCallback;

    return-void
.end method

.method public static handleBeforeHookedMethod(Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;I)Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;
    .registers 6

    .line 372
    invoke-static {}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->-$$Nest$sfgetsCallbackRegistry()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    if-nez p1, :cond_12

    return-object v0

    .line 376
    :cond_12
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;->getMember()Ljava/lang/reflect/Member;

    move-result-object v1

    .line 378
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez p1, :cond_23

    return-object v0

    .line 382
    :cond_23
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;

    if-nez p1, :cond_2c

    return-object v0

    .line 387
    :cond_2c
    invoke-static {p1}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->-$$Nest$smcopyCallbacks(Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;)[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    move-result-object p1

    .line 388
    array-length v1, p1

    if-nez v1, :cond_34

    return-object v0

    .line 392
    :cond_34
    new-instance v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;

    invoke-direct {v0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;-><init>()V

    .line 393
    iput-object p1, v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->callbacks:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    .line 394
    iput-object p0, v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->before:Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;

    const/4 p0, 0x0

    .line 395
    iput-boolean p0, v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->isAfter:Z

    .line 396
    :goto_40
    array-length v1, p1

    if-ge p0, v1, :cond_5a

    .line 397
    iput p0, v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->index:I

    .line 399
    :try_start_45
    aget-object v1, p1, p0

    iget-object v1, v1, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;->callback:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;

    invoke-interface {v1, v0}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;->beforeHookedMember(Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4d

    goto :goto_57

    :catchall_4d
    move-exception v1

    .line 401
    sget-object v2, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->self:Lio/github/libxposed/api/XposedModule;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lio/github/libxposed/api/XposedModule;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_57
    add-int/lit8 p0, p0, 0x1

    goto :goto_40

    :cond_5a
    const/4 p0, -0x1

    .line 404
    iput p0, v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;->index:I

    return-object v0
.end method
