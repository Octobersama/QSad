.class Lme/yxp/qfun/utils/hook/xpcompat/MemberUtils;
.super Ljava/lang/Object;
.source "MemberUtils.java"


# static fields
.field private static final ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 34
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/hook/xpcompat/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareParameterTypes([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 48
    invoke-static {p2, p0}, Lme/yxp/qfun/utils/hook/xpcompat/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result p0

    .line 49
    invoke-static {p2, p1}, Lme/yxp/qfun/utils/hook/xpcompat/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result p1

    cmpg-float p2, p0, p1

    if-gez p2, :cond_e

    const/4 p0, -0x1

    return p0

    :cond_e
    cmpg-float p0, p1, p0

    if-gez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private static getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)F"
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 81
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/MemberUtils;->getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result p0

    return p0

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz p0, :cond_2c

    .line 84
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 85
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/high16 p1, 0x3e800000  # 0.25f

    add-float/2addr v0, p1

    goto :goto_2c

    :cond_24
    const/high16 v1, 0x3f800000  # 1.0f

    add-float/2addr v0, v1

    .line 95
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_c

    :cond_2c
    :goto_2c
    if-nez p0, :cond_31

    const/high16 p0, 0x3fc00000  # 1.5f

    add-float/2addr v0, p0

    :cond_31
    return v0
.end method

.method private static getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)F"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const v1, 0x3dcccccd  # 0.1f

    if-nez v0, :cond_f

    .line 120
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    move v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const/4 v2, 0x0

    :goto_11
    if-eq p0, p1, :cond_29

    .line 122
    sget-object v3, Lme/yxp/qfun/utils/hook/xpcompat/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v4, v3

    if-ge v2, v4, :cond_29

    .line 123
    aget-object v4, v3, v2

    if-ne p0, v4, :cond_26

    add-float/2addr v0, v1

    .line 125
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_26

    add-int/lit8 p0, v2, 0x1

    .line 126
    aget-object p0, v3, p0

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_29
    return v0
.end method

.method private static getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)F"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_11

    .line 64
    aget-object v2, p0, v1

    .line 65
    aget-object v3, p1, v1

    .line 66
    invoke-static {v2, v3}, Lme/yxp/qfun/utils/hook/xpcompat/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return v0
.end method
