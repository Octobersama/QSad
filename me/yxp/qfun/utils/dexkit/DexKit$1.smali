.class Lme/yxp/qfun/utils/dexkit/DexKit$1;
.super Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;
.source "DexKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yxp/qfun/utils/dexkit/DexKit;->showFindDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public static synthetic $r8$lambda$DlAp4VV8C91qnl4PxlBrwPjIQIw(Landroid/app/AlertDialog;)V
    .registers 3

    .line 81
    :try_start_0
    invoke-static {}, Lme/yxp/qfun/utils/dexkit/DexKit;->-$$Nest$smdoFind()V

    .line 82
    invoke-static {}, Lme/yxp/qfun/utils/dexkit/DexKit;->-$$Nest$smsaveData()V

    .line 83
    const-string v0, "查找完成，保存方法并关闭应用"

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x1f4

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 85
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_1b

    .line 89
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :catchall_1b
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method public afterHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 71
    iget-object p0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    .line 72
    new-instance p1, Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string p0, "查找方法"

    .line 73
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "查找方法中，请耐心等待"

    .line 74
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 75
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 79
    new-instance p1, Lme/yxp/qfun/utils/dexkit/DexKit$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lme/yxp/qfun/utils/dexkit/DexKit$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/AlertDialog;)V

    const-string p0, "DexKit"

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/thread/SyncUtils;->runOnNewThread(Ljava/lang/String;Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method
