.class Lme/yxp/qfun/lifecycle/Parasitics$ProxyInstrumentation;
.super Landroid/app/Instrumentation;
.source "Parasitics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/lifecycle/Parasitics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxyInstrumentation"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mBase:Landroid/app/Instrumentation;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/app/Instrumentation;)V
    .registers 2

    .line 374
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 375
    iput-object p1, p0, Lme/yxp/qfun/lifecycle/Parasitics$ProxyInstrumentation;->mBase:Landroid/app/Instrumentation;

    return-void
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    if-eqz p2, :cond_1b

    .line 393
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-static {}, Lme/yxp/qfun/lifecycle/Parasitics;->-$$Nest$sfgetInjectActivityNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 395
    invoke-static {}, Lme/yxp/qfun/lifecycle/Parasitics;->-$$Nest$sfgetmoduleloader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 398
    :cond_1b
    iget-object p0, p0, Lme/yxp/qfun/lifecycle/Parasitics$ProxyInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {p0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 6

    if-eqz p2, :cond_1b

    .line 404
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {}, Lme/yxp/qfun/lifecycle/Parasitics;->-$$Nest$sfgetInjectActivityNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 406
    invoke-static {}, Lme/yxp/qfun/lifecycle/Parasitics;->-$$Nest$sfgetmoduleloader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 409
    :cond_1b
    iget-object p0, p0, Lme/yxp/qfun/lifecycle/Parasitics$ProxyInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 4

    .line 382
    :try_start_0
    iget-object p0, p0, Lme/yxp/qfun/lifecycle/Parasitics$ProxyInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 384
    :catch_7
    const-class p0, Lme/yxp/qfun/lifecycle/Parasitics;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 386
    invoke-virtual {p0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method
