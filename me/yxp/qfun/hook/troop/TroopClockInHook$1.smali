.class Lme/yxp/qfun/hook/troop/TroopClockInHook$1;
.super Landroid/content/BroadcastReceiver;
.source "TroopClockInHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yxp/qfun/hook/troop/TroopClockInHook;->initCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/yxp/qfun/hook/troop/TroopClockInHook;


# direct methods
.method public constructor <init>(Lme/yxp/qfun/hook/troop/TroopClockInHook;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lme/yxp/qfun/hook/troop/TroopClockInHook$1;->this$0:Lme/yxp/qfun/hook/troop/TroopClockInHook;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 45
    const-string p1, "result_code"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x3e9

    if-eq p1, p2, :cond_c

    return-void

    .line 46
    :cond_c
    iget-object p1, p0, Lme/yxp/qfun/hook/troop/TroopClockInHook$1;->this$0:Lme/yxp/qfun/hook/troop/TroopClockInHook;

    invoke-static {p1}, Lme/yxp/qfun/hook/troop/TroopClockInHook;->-$$Nest$mstartLoop(Lme/yxp/qfun/hook/troop/TroopClockInHook;)V

    .line 47
    iget-object p0, p0, Lme/yxp/qfun/hook/troop/TroopClockInHook$1;->this$0:Lme/yxp/qfun/hook/troop/TroopClockInHook;

    invoke-virtual {p0}, Lme/yxp/qfun/hook/troop/TroopClockInHook;->setAlarm()V

    return-void
.end method
