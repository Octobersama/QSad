.class public final synthetic Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;

    iput p2, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;

    iget p0, p0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->$r8$lambda$ZciRh9QkUKBsmxKYeXfkkJXaQBQ(Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;I)V

    return-void
.end method
