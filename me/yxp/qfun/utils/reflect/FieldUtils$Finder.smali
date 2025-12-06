.class public Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;
.super Ljava/lang/Object;
.source "FieldUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/utils/reflect/FieldUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Finder"
.end annotation


# instance fields
.field private mFieldName:Ljava/lang/String;

.field private mFieldType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mParentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->mTarget:Ljava/lang/Object;

    return-void
.end method

.method private findField(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->mFieldName:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v0, p0, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->mFieldType:Ljava/lang/Class;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 77
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "At least one search condition (name or type) must be specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_11
    :goto_11
    iget-object v0, p0, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->mParentClass:Ljava/lang/Class;

    if-eqz v0, :cond_22

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 83
    iget-object v0, p0, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->mParentClass:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->findInClass(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    if-nez v0, :cond_2a

    .line 87
    invoke-direct {p0, p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->findInClass(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0

    :cond_2a
    return-object v0
.end method

.method private findInClass(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    :try_start_1
    iget-object v1, p0, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->mFieldName:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 99
    iget-object p0, p0, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->mFieldType:Ljava/lang/Class;

    if-eqz p0, :cond_18

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_18

    return-object v0

    :cond_18
    return-object p1

    .line 106
    :cond_19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_2a
    if-ge v5, v3, :cond_4e

    aget-object v6, p1, v5

    .line 111
    iget-object v7, p0, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->mFieldType:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 112
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 113
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 115
    :cond_48
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    :goto_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 121
    :cond_4e
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5b

    .line 122
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Field;

    return-object p0

    .line 126
    :cond_5b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_68

    .line 127
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Field;
    :try_end_67
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_67} :catch_68

    return-object p0

    :catch_68
    :cond_68
    return-object v0
.end method

.method private makeAccessible(Ljava/lang/reflect/Field;)V
    .registers 2

    .line 138
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 139
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    .line 140
    invoke-virtual {p1, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 4

    .line 40
    iget-object v0, p0, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->findField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    .line 45
    :cond_e
    invoke-direct {p0, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->makeAccessible(Ljava/lang/reflect/Field;)V

    .line 47
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 50
    :cond_20
    iget-object p0, p0, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    move-exception p0

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to get field value"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public inParent(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->mParentClass:Ljava/lang/Class;

    return-object p0
.end method

.method public ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->mFieldType:Ljava/lang/Class;

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4

    .line 58
    iget-object v0, p0, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->findField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 63
    :cond_d
    invoke-direct {p0, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->makeAccessible(Ljava/lang/reflect/Field;)V

    .line 65
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 p0, 0x0

    .line 66
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 68
    :cond_1f
    iget-object p0, p0, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    .line 71
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to set field value"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;
    .registers 2

    .line 25
    iput-object p1, p0, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->mFieldName:Ljava/lang/String;

    return-object p0
.end method
