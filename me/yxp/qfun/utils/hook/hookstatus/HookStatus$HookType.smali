.class public final enum Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;
.super Ljava/lang/Enum;
.source "HookStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/utils/hook/hookstatus/HookStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HookType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

.field public static final enum APP_PATCH:Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

.field public static final enum NONE:Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

.field public static final enum ZYGOTE:Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;


# direct methods
.method private static synthetic $values()[Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;
    .registers 3

    .line 225
    sget-object v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;->NONE:Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    sget-object v1, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;->APP_PATCH:Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    sget-object v2, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;->ZYGOTE:Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    filled-new-array {v0, v1, v2}, [Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 229
    new-instance v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;->NONE:Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    .line 233
    new-instance v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    const-string v1, "APP_PATCH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;->APP_PATCH:Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    .line 237
    new-instance v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    const-string v1, "ZYGOTE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;->ZYGOTE:Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    .line 225
    invoke-static {}, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;->$values()[Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;->$VALUES:[Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;
    .registers 2

    .line 225
    const-class v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    return-object p0
.end method

.method public static values()[Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;
    .registers 1

    .line 225
    sget-object v0, Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;->$VALUES:[Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    invoke-virtual {v0}, [Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/yxp/qfun/utils/hook/hookstatus/HookStatus$HookType;

    return-object v0
.end method
