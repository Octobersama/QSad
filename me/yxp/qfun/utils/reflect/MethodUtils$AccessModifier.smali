.class public final enum Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;
.super Ljava/lang/Enum;
.source "MethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/utils/reflect/MethodUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessModifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

.field public static final enum ANY:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

.field public static final enum PACKAGE_PRIVATE:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

.field public static final enum PRIVATE:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

.field public static final enum PROTECTED:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

.field public static final enum PUBLIC:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;


# direct methods
.method private static synthetic $values()[Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;
    .registers 5

    .line 15
    sget-object v0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->ANY:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    sget-object v1, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->PUBLIC:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    sget-object v2, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->PROTECTED:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    sget-object v3, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->PACKAGE_PRIVATE:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    sget-object v4, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->PRIVATE:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    filled-new-array {v0, v1, v2, v3, v4}, [Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->ANY:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    new-instance v0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    const-string v1, "PUBLIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->PUBLIC:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    new-instance v0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    const-string v1, "PROTECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->PROTECTED:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    new-instance v0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    const-string v1, "PACKAGE_PRIVATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->PACKAGE_PRIVATE:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    new-instance v0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    const-string v1, "PRIVATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->PRIVATE:Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    .line 15
    invoke-static {}, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->$values()[Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->$VALUES:[Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;
    .registers 2

    .line 15
    const-class v0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    return-object p0
.end method

.method public static values()[Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;
    .registers 1

    .line 15
    sget-object v0, Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->$VALUES:[Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    invoke-virtual {v0}, [Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/yxp/qfun/utils/reflect/MethodUtils$AccessModifier;

    return-object v0
.end method
