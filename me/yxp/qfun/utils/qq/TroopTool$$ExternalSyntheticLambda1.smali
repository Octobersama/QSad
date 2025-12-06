.class public final synthetic Lme/yxp/qfun/utils/qq/TroopTool$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/utils/qq/TroopTool$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p0, Lme/yxp/qfun/utils/qq/TroopTool$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/utils/qq/TroopTool$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CompletableFuture;

    iget-object p0, p0, Lme/yxp/qfun/utils/qq/TroopTool$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-static {v0, p0, p1, p2, p3}, Lme/yxp/qfun/utils/qq/TroopTool;->$r8$lambda$JNgYcHNUqk31d_R9CXygFgO6hFQ(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
