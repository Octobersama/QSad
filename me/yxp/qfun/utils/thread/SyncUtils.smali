.class public Lme/yxp/qfun/utils/thread/SyncUtils;
.super Ljava/lang/Object;
.source "SyncUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;
    }
.end annotation


# static fields
.field private static final sExecutor:Ljava/util/concurrent/ExecutorService;

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$hoA7qHecyNNPpnIJWO-fyUbu53I(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;Ljava/lang/String;)V
    .registers 2

    .line 45
    :try_start_0
    invoke-interface {p0}, Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception p0

    .line 47
    invoke-static {p1, p0}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 16
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/thread/SyncUtils;->sExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static async(Ljava/lang/Runnable;)V
    .registers 2

    .line 39
    sget-object v0, Lme/yxp/qfun/utils/thread/SyncUtils;->sExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getProcessName()Ljava/lang/String;
    .registers 5

    .line 53
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 54
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v1

    .line 55
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    if-nez v1, :cond_14

    return-object v2

    .line 61
    :cond_14
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 63
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 64
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v0, :cond_1e

    .line 65
    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v0

    :cond_31
    return-object v2
.end method

.method public static post(Ljava/lang/Runnable;)V
    .registers 3

    const-wide/16 v0, 0x0

    .line 35
    invoke-static {p0, v0, v1}, Lme/yxp/qfun/utils/thread/SyncUtils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .registers 5

    .line 28
    sget-object v0, Lme/yxp/qfun/utils/thread/SyncUtils;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lme/yxp/qfun/utils/thread/SyncUtils;->sHandler:Landroid/os/Handler;

    .line 31
    :cond_f
    sget-object v0, Lme/yxp/qfun/utils/thread/SyncUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static runOnNewThread(Ljava/lang/String;Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V
    .registers 4

    .line 43
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lme/yxp/qfun/utils/thread/SyncUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lme/yxp/qfun/utils/thread/SyncUtils$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 49
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 20
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 21
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 23
    :cond_e
    invoke-static {p0}, Lme/yxp/qfun/utils/thread/SyncUtils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
