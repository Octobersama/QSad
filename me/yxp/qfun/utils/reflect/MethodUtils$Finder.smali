.class public Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;
.super Ljava/lang/Object;
.source "MethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/utils/reflect/MethodUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Finder"
.end annotation


# instance fields
.field private mAccessModifierFilter:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

.field private final mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mMethodName:Ljava/lang/String;

.field private mParamCount:Ljava/lang/Integer;

.field private mParamTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mReturnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$PcfIgUrwSZFXy8sMAfBM5G-tlbA(Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;Ljava/lang/reflect/Method;)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->calculateMatchScore(Ljava/lang/reflect/Method;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->ANY:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    iput-object v0, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mAccessModifierFilter:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    .line 28
    iput-object p1, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mClazz:Ljava/lang/Class;

    return-void
.end method

.method private calculateInheritanceDepth(Ljava/lang/Class;Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 p0, 0x0

    :goto_1
    if-eqz p1, :cond_c

    if-eq p1, p2, :cond_c

    add-int/lit8 p0, p0, 0x1

    .line 193
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    :cond_c
    if-ne p1, p2, :cond_f

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method private calculateMatchScore(Ljava/lang/reflect/Method;)I
    .registers 6

    .line 169
    invoke-direct {p0, p1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->isExactMatch(Ljava/lang/reflect/Method;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/16 v0, 0x64

    goto :goto_b

    :cond_a
    move v0, v1

    .line 173
    :goto_b
    iget-object v2, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mParamTypes:[Ljava/lang/Class;

    if-eqz v2, :cond_35

    .line 174
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 175
    :goto_13
    iget-object v2, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mParamTypes:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v1, v3, :cond_35

    .line 176
    aget-object v2, v2, v1

    aget-object v3, p1, v1

    if-ne v2, v3, :cond_21

    add-int/lit8 v0, v0, 0xa

    goto :goto_32

    .line 178
    :cond_21
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 179
    iget-object v2, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mParamTypes:[Ljava/lang/Class;

    aget-object v2, v2, v1

    aget-object v3, p1, v1

    invoke-direct {p0, v2, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->calculateInheritanceDepth(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_32
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_35
    return v0
.end method

.method private getAccessModifier(Ljava/lang/reflect/Method;)Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;
    .registers 2

    .line 139
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    .line 140
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 141
    sget-object p0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->PRIVATE:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    return-object p0

    .line 143
    :cond_d
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 144
    sget-object p0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->PROTECTED:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    return-object p0

    .line 146
    :cond_16
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 147
    sget-object p0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->PUBLIC:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    return-object p0

    .line 149
    :cond_1f
    sget-object p0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->PACKAGE_PRIVATE:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    return-object p0
.end method

.method private isExactMatch(Ljava/lang/reflect/Method;)Z
    .registers 6

    .line 153
    iget-object v0, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mParamTypes:[Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 157
    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    move v0, v1

    .line 158
    :goto_b
    iget-object v2, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mParamTypes:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v0, v3, :cond_1a

    .line 159
    aget-object v2, v2, v0

    aget-object v3, p1, v0

    if-eq v2, v3, :cond_17

    return v1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method private makeAccessible(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 2

    .line 131
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 132
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_1a

    :cond_19
    return-object p1

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    .line 133
    invoke-virtual {p1, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-object p1
.end method


# virtual methods
.method public findAll()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v1, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mClazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_77

    aget-object v5, v1, v4

    .line 76
    iget-object v6, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mAccessModifierFilter:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    sget-object v7, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->ANY:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    if-eq v6, v7, :cond_21

    .line 77
    invoke-direct {p0, v5}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->getAccessModifier(Ljava/lang/reflect/Method;)Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    move-result-object v6

    .line 78
    iget-object v7, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mAccessModifierFilter:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    if-eq v6, v7, :cond_21

    goto :goto_74

    .line 83
    :cond_21
    iget-object v6, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mMethodName:Ljava/lang/String;

    if-eqz v6, :cond_32

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mMethodName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    goto :goto_74

    .line 87
    :cond_32
    iget-object v6, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mReturnType:Ljava/lang/Class;

    if-eqz v6, :cond_41

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    goto :goto_74

    .line 91
    :cond_41
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 93
    iget-object v7, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mParamCount:Ljava/lang/Integer;

    if-eqz v7, :cond_51

    array-length v8, v6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v8, v7, :cond_51

    goto :goto_74

    .line 97
    :cond_51
    iget-object v7, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mParamTypes:[Ljava/lang/Class;

    if-eqz v7, :cond_71

    .line 98
    array-length v8, v6

    array-length v7, v7

    if-eq v8, v7, :cond_5a

    goto :goto_74

    :cond_5a
    move v7, v3

    .line 103
    :goto_5b
    iget-object v8, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mParamTypes:[Ljava/lang/Class;

    array-length v9, v8

    if-ge v7, v9, :cond_71

    .line 104
    aget-object v8, v8, v7

    if-nez v8, :cond_65

    goto :goto_6e

    .line 105
    :cond_65
    aget-object v9, v6, v7

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_6e

    goto :goto_74

    :cond_6e
    :goto_6e
    add-int/lit8 v7, v7, 0x1

    goto :goto_5b

    .line 115
    :cond_71
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_74
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 118
    :cond_77
    new-instance v1, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;)V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    .line 119
    invoke-interface {p0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object p0

    new-instance v1, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder$$ExternalSyntheticLambda1;-><init>()V

    .line 120
    invoke-interface {p0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    new-instance v1, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder$$ExternalSyntheticLambda2;-><init>()V

    .line 121
    invoke-interface {p0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    .line 118
    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 123
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a0

    return-object v0

    .line 126
    :cond_a0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "无符合方法"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public findOne()Ljava/lang/reflect/Method;
    .registers 5

    .line 58
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findAll()Ljava/util/List;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 64
    invoke-direct {p0, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->isExactMatch(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 65
    invoke-direct {p0, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->makeAccessible(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0

    :cond_27
    const/4 v1, 0x0

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-direct {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->makeAccessible(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public withAccessModifier(Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;
    .registers 2

    .line 53
    iput-object p1, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mAccessModifierFilter:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    return-object p0
.end method

.method public withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;
    .registers 2

    .line 32
    iput-object p1, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mMethodName:Ljava/lang/String;

    return-object p0
.end method

.method public withParamCount(I)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;
    .registers 2

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mParamCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public varargs withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mParamTypes:[Ljava/lang/Class;

    if-eqz p1, :cond_a

    .line 43
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iput-object p1, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mParamCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->mReturnType:Ljava/lang/Class;

    return-object p0
.end method
