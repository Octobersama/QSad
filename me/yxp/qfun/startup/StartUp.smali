.class public Lme/yxp/qfun/startup/StartUp;
.super Ljava/lang/Object;
.source "StartUp.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hookApplicationCreate(Ljava/lang/ClassLoader;)V
    .registers 4

    .line 15
    new-instance v0, Lme/yxp/qfun/startup/StartUp$1;

    invoke-direct {v0}, Lme/yxp/qfun/startup/StartUp$1;-><init>()V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.tencent.common.app.BaseApplicationImpl"

    const-string v2, "onCreate"

    invoke-static {v1, p0, v2, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;

    return-void
.end method
