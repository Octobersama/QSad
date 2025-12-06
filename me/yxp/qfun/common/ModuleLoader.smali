.class public Lme/yxp/qfun/common/ModuleLoader;
.super Ljava/lang/Object;
.source "ModuleLoader.java"


# static fields
.field private static MODULE_PATH:Ljava/lang/String;

.field private static hookBridge:Lme/yxp/qfun/loader/hookapi/IHookBridge;

.field private static loaderService:Lme/yxp/qfun/loader/hookapi/ILoaderService;

.field private static final sInitErrors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lme/yxp/qfun/common/ModuleLoader;->sInitErrors:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lme/yxp/qfun/common/ModuleLoader;->sLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHookBridge()Lme/yxp/qfun/loader/hookapi/IHookBridge;
    .registers 1

    .line 51
    sget-object v0, Lme/yxp/qfun/common/ModuleLoader;->hookBridge:Lme/yxp/qfun/loader/hookapi/IHookBridge;

    return-object v0
.end method

.method public static getInitErrors()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 47
    sget-object v0, Lme/yxp/qfun/common/ModuleLoader;->sInitErrors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getLoaderService()Lme/yxp/qfun/loader/hookapi/ILoaderService;
    .registers 1

    .line 55
    sget-object v0, Lme/yxp/qfun/common/ModuleLoader;->loaderService:Lme/yxp/qfun/loader/hookapi/ILoaderService;

    return-object v0
.end method

.method public static getMODULE_PATH()Ljava/lang/String;
    .registers 1

    .line 59
    sget-object v0, Lme/yxp/qfun/common/ModuleLoader;->MODULE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize(Ljava/lang/ClassLoader;Lme/yxp/qfun/loader/hookapi/ILoaderService;Lme/yxp/qfun/loader/hookapi/IHookBridge;Ljava/lang/String;)V
    .registers 5

    .line 32
    sget-boolean v0, Lme/yxp/qfun/common/ModuleLoader;->sLoaded:Z

    if-eqz v0, :cond_5

    return-void

    .line 35
    :cond_5
    sput-object p2, Lme/yxp/qfun/common/ModuleLoader;->hookBridge:Lme/yxp/qfun/loader/hookapi/IHookBridge;

    .line 36
    sput-object p1, Lme/yxp/qfun/common/ModuleLoader;->loaderService:Lme/yxp/qfun/loader/hookapi/ILoaderService;

    .line 37
    sput-object p3, Lme/yxp/qfun/common/ModuleLoader;->MODULE_PATH:Ljava/lang/String;

    .line 39
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->setHostClassLoader(Ljava/lang/ClassLoader;)V

    .line 40
    invoke-static {p0}, Lme/yxp/qfun/startup/StartUp;->hookApplicationCreate(Ljava/lang/ClassLoader;)V

    const/4 p0, 0x1

    .line 42
    sput-boolean p0, Lme/yxp/qfun/common/ModuleLoader;->sLoaded:Z

    return-void
.end method
