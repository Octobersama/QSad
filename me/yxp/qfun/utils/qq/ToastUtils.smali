.class public Lme/yxp/qfun/utils/qq/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static sShowQQToastInUiThread:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$iO2mULjWULLLLc-u_7Yg3TpcZ9A(Ljava/lang/String;)V
    .registers 3

    .line 34
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    .line 36
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 19
    :try_start_0
    invoke-static {}, Lme/yxp/qfun/utils/qq/ToastUtils;->initMethod()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    .line 21
    const-string v1, ""

    invoke-static {v1, v0}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static QQToast(ILjava/lang/String;)V
    .registers 3

    .line 43
    :try_start_0
    sget-object v0, Lme/yxp/qfun/utils/qq/ToastUtils;->sShowQQToastInUiThread:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method

.method public static Toast(Ljava/lang/String;)V
    .registers 2

    .line 33
    new-instance v0, Lme/yxp/qfun/utils/qq/ToastUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lme/yxp/qfun/utils/qq/ToastUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lme/yxp/qfun/utils/thread/SyncUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static initMethod()V
    .registers 2

    .line 26
    const-string v0, "com.tencent.util.QQToastUtil"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "showQQToastInUiThread"

    .line 28
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/ToastUtils;->sShowQQToastInUiThread:Ljava/lang/reflect/Method;

    return-void
.end method
