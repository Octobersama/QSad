.class public Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

.field public static final EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

.field public static final EMPTY_CHAR_ARRAY:[C

.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final EMPTY_SHORT_ARRAY:[S

.field public static final EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 39
    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 43
    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 47
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 51
    new-array v1, v0, [J

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 55
    new-array v1, v0, [Ljava/lang/Long;

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 59
    new-array v1, v0, [I

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 63
    new-array v1, v0, [Ljava/lang/Integer;

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 67
    new-array v1, v0, [S

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 71
    new-array v1, v0, [Ljava/lang/Short;

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 75
    new-array v1, v0, [B

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 79
    new-array v1, v0, [Ljava/lang/Byte;

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 83
    new-array v1, v0, [D

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 87
    new-array v1, v0, [Ljava/lang/Double;

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 91
    new-array v1, v0, [F

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 95
    new-array v1, v0, [Ljava/lang/Float;

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 99
    new-array v1, v0, [Z

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 103
    new-array v1, v0, [Ljava/lang/Boolean;

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 107
    new-array v1, v0, [C

    sput-object v1, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 111
    new-array v0, v0, [Ljava/lang/Character;

    sput-object v0, Lme/yxp/qfun/utils/hook/xpcompat/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSameLength([B[B)Z
    .registers 3

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    .line 197
    array-length v0, p1

    if-gtz v0, :cond_17

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_17

    :cond_e
    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    array-length p0, p0

    array-length p1, p1

    if-ne p0, p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method public static isSameLength([C[C)Z
    .registers 3

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    .line 183
    array-length v0, p1

    if-gtz v0, :cond_17

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_17

    :cond_e
    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    array-length p0, p0

    array-length p1, p1

    if-ne p0, p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method public static isSameLength([D[D)Z
    .registers 3

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    .line 211
    array-length v0, p1

    if-gtz v0, :cond_17

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_17

    :cond_e
    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    array-length p0, p0

    array-length p1, p1

    if-ne p0, p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method public static isSameLength([F[F)Z
    .registers 3

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    .line 225
    array-length v0, p1

    if-gtz v0, :cond_17

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_17

    :cond_e
    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    array-length p0, p0

    array-length p1, p1

    if-ne p0, p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method public static isSameLength([I[I)Z
    .registers 3

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    .line 155
    array-length v0, p1

    if-gtz v0, :cond_17

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_17

    :cond_e
    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    array-length p0, p0

    array-length p1, p1

    if-ne p0, p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method public static isSameLength([J[J)Z
    .registers 3

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    .line 141
    array-length v0, p1

    if-gtz v0, :cond_17

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_17

    :cond_e
    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    array-length p0, p0

    array-length p1, p1

    if-ne p0, p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 3

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    .line 127
    array-length v0, p1

    if-gtz v0, :cond_17

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_17

    :cond_e
    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    array-length p0, p0

    array-length p1, p1

    if-ne p0, p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method public static isSameLength([S[S)Z
    .registers 3

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    .line 169
    array-length v0, p1

    if-gtz v0, :cond_17

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_17

    :cond_e
    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    array-length p0, p0

    array-length p1, p1

    if-ne p0, p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method public static isSameLength([Z[Z)Z
    .registers 3

    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    .line 239
    array-length v0, p1

    if-gtz v0, :cond_17

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_17

    :cond_e
    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    array-length p0, p0

    array-length p1, p1

    if-ne p0, p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method
