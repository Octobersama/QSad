.class public final synthetic Lme/yxp/qfun/utils/thread/LoopHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/utils/thread/LoopHolder;

.field public final synthetic f$1:Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/utils/thread/LoopHolder;Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/utils/thread/LoopHolder$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/utils/thread/LoopHolder;

    iput-object p2, p0, Lme/yxp/qfun/utils/thread/LoopHolder$$ExternalSyntheticLambda0;->f$1:Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/utils/thread/LoopHolder$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/utils/thread/LoopHolder;

    iget-object p0, p0, Lme/yxp/qfun/utils/thread/LoopHolder$$ExternalSyntheticLambda0;->f$1:Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;

    invoke-static {v0, p0}, Lme/yxp/qfun/utils/thread/LoopHolder;->$r8$lambda$pav03DlF-VQ2kbGWXC2eUOOnkkw(Lme/yxp/qfun/utils/thread/LoopHolder;Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method
