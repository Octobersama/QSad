.class public final synthetic Lme/yxp/qfun/utils/thread/SyncUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/utils/thread/SyncUtils$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;

    iput-object p2, p0, Lme/yxp/qfun/utils/thread/SyncUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/utils/thread/SyncUtils$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;

    iget-object p0, p0, Lme/yxp/qfun/utils/thread/SyncUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lme/yxp/qfun/utils/thread/SyncUtils;->$r8$lambda$hoA7qHecyNNPpnIJWO-fyUbu53I(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;Ljava/lang/String;)V

    return-void
.end method
