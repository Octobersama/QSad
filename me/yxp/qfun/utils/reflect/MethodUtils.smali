.class public Lme/yxp/qfun/utils/reflect/MethodUtils;
.super Ljava/lang/Object;
.source "MethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;,
        Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;"
        }
    .end annotation

    .line 12
    new-instance v0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    invoke-direct {v0, p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
