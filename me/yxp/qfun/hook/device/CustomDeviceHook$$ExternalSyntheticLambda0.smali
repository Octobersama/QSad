.class public final synthetic Lme/yxp/qfun/hook/device/CustomDeviceHook$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/hook/device/CustomDeviceHook;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/hook/device/CustomDeviceHook;Landroid/widget/EditText;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/hook/device/CustomDeviceHook$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/hook/device/CustomDeviceHook;

    iput-object p2, p0, Lme/yxp/qfun/hook/device/CustomDeviceHook$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/hook/device/CustomDeviceHook$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/hook/device/CustomDeviceHook;

    iget-object p0, p0, Lme/yxp/qfun/hook/device/CustomDeviceHook$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    invoke-static {v0, p0, p1, p2}, Lme/yxp/qfun/hook/device/CustomDeviceHook;->$r8$lambda$qilGKHxL94_T_dHQhEMqi0BXeSs(Lme/yxp/qfun/hook/device/CustomDeviceHook;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
