.class public Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;
.super Ljava/lang/Object;
.source "SimpleIntervalExecutor.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIntervalMs:J

.field private mIsExecuting:Z

.field private final mTasks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$LEvgo9NEOHe9omdXANNX1iRAK0Y(Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->lambda$executeNextTask$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZciRh9QkUKBsmxKYeXfkkJXaQBQ(Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->lambda$executeNextTask$1(I)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mIsExecuting:Z

    .line 15
    iput-wide p1, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mIntervalMs:J

    .line 17
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "SimpleIntervalExecutor"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 19
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private executeNextTask(I)V
    .registers 4

    .line 38
    iget-object v0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    .line 40
    invoke-direct {p0}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->resetAndClear()V

    return-void

    .line 44
    :cond_c
    iget-object v0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$executeNextTask$0(I)V
    .registers 2

    add-int/lit8 p1, p1, 0x1

    .line 52
    invoke-direct {p0, p1}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->executeNextTask(I)V

    return-void
.end method

.method private synthetic lambda$executeNextTask$1(I)V
    .registers 4

    .line 46
    :try_start_0
    iget-object v0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    add-int/lit8 v0, p1, 0x1

    .line 50
    iget-object v1, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 51
    iget-object v0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;I)V

    iget-wide p0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mIntervalMs:J

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_25

    .line 57
    :cond_22
    invoke-direct {p0}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->resetAndClear()V

    :goto_25
    return-void
.end method

.method private resetAndClear()V
    .registers 2

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mIsExecuting:Z

    .line 64
    iget-object p0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .registers 3

    .line 23
    iget-boolean v0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mIsExecuting:Z

    if-nez v0, :cond_b

    if-eqz p1, :cond_b

    .line 24
    iget-object p0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public destroy()V
    .registers 1

    .line 72
    invoke-direct {p0}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->resetAndClear()V

    .line 73
    iget-object p0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_e

    .line 74
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    :cond_e
    return-void
.end method

.method public isExecuting()Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mIsExecuting:Z

    return p0
.end method

.method public startExecute()V
    .registers 2

    .line 29
    iget-boolean v0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mIsExecuting:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    :cond_d
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->mIsExecuting:Z

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->executeNextTask(I)V

    :cond_14
    :goto_14
    return-void
.end method
