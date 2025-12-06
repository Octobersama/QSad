.class Lme/yxp/qfun/lifecycle/Parasitics$PackageManagerInvocationHandler;
.super Ljava/lang/Object;
.source "Parasitics.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/lifecycle/Parasitics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageManagerInvocationHandler"
.end annotation


# instance fields
.field private final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 422
    iput-object p1, p0, Lme/yxp/qfun/lifecycle/Parasitics$PackageManagerInvocationHandler;->target:Ljava/lang/Object;

    return-void

    .line 420
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "IPackageManager == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 428
    :try_start_0
    const-string p1, "getActivityInfo"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 429
    iget-object p0, p0, Lme/yxp/qfun/lifecycle/Parasitics$PackageManagerInvocationHandler;->target:Ljava/lang/Object;

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_17

    return-object p0

    :cond_17
    const/4 p0, 0x0

    .line 433
    aget-object p0, p3, p0

    check-cast p0, Landroid/content/ComponentName;

    const/4 p1, 0x1

    .line 434
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 435
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4a

    invoke-static {}, Lme/yxp/qfun/lifecycle/Parasitics;->-$$Nest$sfgetInjectActivityNames()Ljava/util/List;

    move-result-object p3

    .line 436
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4a

    .line 437
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lme/yxp/qfun/lifecycle/CounterfeitActivityInfoFactory;->makeProxyActivityInfo(Ljava/lang/String;J)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0

    :cond_4a
    const/4 p0, 0x0

    return-object p0

    .line 442
    :cond_4c
    iget-object p0, p0, Lme/yxp/qfun/lifecycle/Parasitics$PackageManagerInvocationHandler;->target:Ljava/lang/Object;

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_52
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_52} :catch_53

    return-object p0

    :catch_53
    move-exception p0

    .line 445
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method
