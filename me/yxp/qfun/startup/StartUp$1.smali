.class Lme/yxp/qfun/startup/StartUp$1;
.super Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;
.source "StartUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yxp/qfun/startup/StartUp;->hookApplicationCreate(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mIsFirst:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lme/yxp/qfun/startup/StartUp$1;->mIsFirst:Z

    return-void
.end method


# virtual methods
.method public afterHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 22
    iget-boolean v0, p0, Lme/yxp/qfun/startup/StartUp$1;->mIsFirst:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lme/yxp/qfun/startup/StartUp$1;->mIsFirst:Z

    .line 26
    iget-object p0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    .line 27
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/HostInfo;->setHostInfo(Landroid/content/Context;)V

    .line 28
    invoke-static {p0}, Lme/yxp/qfun/lifecycle/Parasitics;->initForStubActivity(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/lifecycle/Parasitics;->injectModuleResources(Landroid/content/res/Resources;)V

    .line 30
    invoke-static {}, Lme/yxp/qfun/utils/dexkit/DexKit;->checkVersion()V

    .line 31
    invoke-static {}, Lme/yxp/qfun/utils/error/ErrorOutput;->recordEnvironmentInfo()V

    return-void
.end method
