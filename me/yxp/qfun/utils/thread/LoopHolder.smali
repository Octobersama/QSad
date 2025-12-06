.class public Lme/yxp/qfun/utils/thread/LoopHolder;
.super Ljava/lang/Object;
.source "LoopHolder.java"


# instance fields
.field private mIsRunning:Z

.field private mRunnable:Ljava/lang/Runnable;

.field private mStopTime:J


# direct methods
.method public static synthetic $r8$lambda$pav03DlF-VQ2kbGWXC2eUOOnkkw(Lme/yxp/qfun/utils/thread/LoopHolder;Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/utils/thread/LoopHolder;->lambda$setRunnable$0(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lme/yxp/qfun/utils/thread/LoopHolder;->mIsRunning:Z

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lme/yxp/qfun/utils/thread/LoopHolder;->mStopTime:J

    return-void
.end method

.method private synthetic lambda$setRunnable$0(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V
    .registers 6

    .line 16
    :catchall_0
    :goto_0
    iget-boolean v0, p0, Lme/yxp/qfun/utils/thread/LoopHolder;->mIsRunning:Z

    if-eqz v0, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lme/yxp/qfun/utils/thread/LoopHolder;->mStopTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    .line 18
    :try_start_e
    invoke-interface {p1}, Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;->run()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_0

    goto :goto_0

    :cond_12
    return-void
.end method


# virtual methods
.method public setRunnable(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V
    .registers 3

    .line 14
    new-instance v0, Lme/yxp/qfun/utils/thread/LoopHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lme/yxp/qfun/utils/thread/LoopHolder$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/utils/thread/LoopHolder;Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    iput-object v0, p0, Lme/yxp/qfun/utils/thread/LoopHolder;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setStopTime(J)V
    .registers 3

    .line 36
    iput-wide p1, p0, Lme/yxp/qfun/utils/thread/LoopHolder;->mStopTime:J

    return-void
.end method

.method public start()V
    .registers 2

    .line 27
    iget-boolean v0, p0, Lme/yxp/qfun/utils/thread/LoopHolder;->mIsRunning:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lme/yxp/qfun/utils/thread/LoopHolder;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_9

    goto :goto_16

    :cond_9
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lme/yxp/qfun/utils/thread/LoopHolder;->mIsRunning:Z

    .line 31
    new-instance v0, Ljava/lang/Thread;

    iget-object p0, p0, Lme/yxp/qfun/utils/thread/LoopHolder;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_16
    :goto_16
    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lme/yxp/qfun/utils/thread/LoopHolder;->mIsRunning:Z

    return-void
.end method
