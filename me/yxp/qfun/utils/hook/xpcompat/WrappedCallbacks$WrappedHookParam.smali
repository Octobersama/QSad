.class public Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookParam;
.super Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;
.source "WrappedCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrappedHookParam"
.end annotation


# instance fields
.field private param:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;


# direct methods
.method public static bridge synthetic -$$Nest$fputparam(Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookParam;Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookParam;->param:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookParam;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .registers 1

    .line 21
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookParam;->param:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;

    invoke-interface {p0}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getResultOrThrowable()Ljava/lang/Object;
    .registers 2

    .line 46
    iget-object v0, p0, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookParam;->param:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;

    invoke-interface {v0}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_f

    .line 50
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookParam;->param:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;

    invoke-interface {p0}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 48
    :cond_f
    throw v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 1

    .line 31
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookParam;->param:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;

    invoke-interface {p0}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public hasThrowable()Z
    .registers 1

    .line 41
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookParam;->param:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;

    invoke-interface {p0}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public setResult(Ljava/lang/Object;)V
    .registers 2

    .line 26
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookParam;->param:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;

    invoke-interface {p0, p1}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .registers 2

    .line 36
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookParam;->param:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;

    invoke-interface {p0, p1}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;->setThrowable(Ljava/lang/Throwable;)V

    return-void
.end method
