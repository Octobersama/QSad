.class public Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookCallback;
.super Ljava/lang/Object;
.source "WrappedCallbacks.java"

# interfaces
.implements Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrappedHookCallback"
.end annotation


# instance fields
.field private final callback:Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;


# direct methods
.method public constructor <init>(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookCallback;->callback:Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;

    return-void
.end method


# virtual methods
.method public afterHookedMember(Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;)V
    .registers 4

    .line 75
    invoke-interface {p1}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookParam;

    if-eqz v0, :cond_20

    .line 79
    invoke-interface {p1}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;->getMember()Ljava/lang/reflect/Member;

    move-result-object v1

    iput-object v1, v0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    .line 80
    invoke-interface {p1}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;->getThisObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 81
    invoke-interface {p1}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;->getArgs()[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    .line 82
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookCallback;->callback:Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;->afterHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void

    .line 77
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "beforeHookedMember not called"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public beforeHookedMember(Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;)V
    .registers 4

    .line 64
    new-instance v0, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookParam;-><init>(Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks-IA;)V

    .line 65
    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookParam;->-$$Nest$fputparam(Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookParam;Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;)V

    .line 66
    invoke-interface {p1}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;->getMember()Ljava/lang/reflect/Member;

    move-result-object v1

    iput-object v1, v0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    .line 67
    invoke-interface {p1}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;->getThisObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 68
    invoke-interface {p1}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    .line 69
    invoke-interface {p1, v0}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;->setExtra(Ljava/lang/Object;)V

    .line 70
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/WrappedCallbacks$WrappedHookCallback;->callback:Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;->beforeHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method
