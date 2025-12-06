.class Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$1;
.super Ljava/lang/Object;
.source "HookStatus.java"

# interfaces
.implements Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceBind(Lio/github/libxposed/service/XposedService;)V
    .registers 2

    .line 56
    invoke-static {}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->-$$Nest$sfgetsXposedService()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onServiceDied(Lio/github/libxposed/service/XposedService;)V
    .registers 2

    .line 61
    invoke-static {}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;->-$$Nest$sfgetsXposedService()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method
