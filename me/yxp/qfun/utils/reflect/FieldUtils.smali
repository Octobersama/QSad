.class public Lme/yxp/qfun/utils/reflect/FieldUtils;
.super Ljava/lang/Object;
.source "FieldUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;
    .registers 2

    .line 11
    new-instance v0, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    invoke-direct {v0, p0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
