.class public Lme/yxp/qfun/utils/alarm/DailyAlarmHelper;
.super Ljava/lang/Object;
.source "DailyAlarmHelper.java"


# static fields
.field private static final ALARM_ACTION:Ljava/lang/String; = "ALARM_ACTION"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateNextTriggerTime(III)J
    .registers 6

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 50
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 51
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 52
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    const/4 p1, 0x0

    .line 53
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 56
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long p0, p0, v1

    if-gtz p0, :cond_2a

    const/4 p0, 0x6

    const/4 p1, 0x1

    .line 57
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->add(II)V

    .line 60
    :cond_2a
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static cancelDailyAlarm(I)V
    .registers 5

    .line 64
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 66
    new-instance v2, Landroid/content/Intent;

    const-string v3, "ALARM_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x24000000

    .line 67
    invoke-static {v0, p0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_23

    if-eqz v1, :cond_23

    .line 71
    invoke-virtual {v1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/PendingIntent;->cancel()V

    :cond_23
    return-void
.end method

.method public static isAlarmSet(I)Z
    .registers 4

    .line 77
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    new-instance v1, Landroid/content/Intent;

    const-string v2, "ALARM_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x24000000

    .line 79
    invoke-static {v0, p0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static isAroundMidnight(JJ)Z
    .registers 8

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b77400

    add-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    .line 86
    rem-long/2addr v0, v2

    cmp-long p2, v0, p2

    if-lez p2, :cond_18

    sub-long/2addr v2, p0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x1

    return p0
.end method

.method private static registerReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnspecifiedRegisterReceiverFlag"
        }
    .end annotation

    .line 23
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v0

    .line 24
    new-instance v2, Landroid/content/IntentFilter;

    const-string v1, "ALARM_ACTION"

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v1, v3, :cond_19

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v3, 0x0

    move-object v1, p0

    .line 26
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void

    :cond_19
    move-object v1, p0

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static setupDailyAlarm(IIIILandroid/content/BroadcastReceiver;)V
    .registers 8

    .line 34
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    invoke-static {p4}, Lme/yxp/qfun/utils/alarm/DailyAlarmHelper;->registerReceiver(Landroid/content/BroadcastReceiver;)V

    .line 36
    const-string p4, "alarm"

    invoke-virtual {v0, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/AlarmManager;

    .line 37
    new-instance v1, Landroid/content/Intent;

    const-string v2, "ALARM_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v2, "result_code"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0xc000000

    .line 40
    invoke-static {v0, p3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 43
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/alarm/DailyAlarmHelper;->calculateNextTriggerTime(III)J

    move-result-wide p0

    const/4 p2, 0x0

    .line 45
    invoke-virtual {p4, p2, p0, p1, p3}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void
.end method
