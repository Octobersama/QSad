.class public final synthetic Lme/yxp/qfun/utils/reflect/MethodUtils$Finder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    .line 0
    iget-object p0, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->$r8$lambda$PcfIgUrwSZFXy8sMAfBM5G-tlbA(Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;Ljava/lang/reflect/Method;)I

    move-result p0

    return p0
.end method
