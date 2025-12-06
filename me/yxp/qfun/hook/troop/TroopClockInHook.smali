.class public final Lme/yxp/qfun/hook/troop/TroopClockInHook;
.super Lme/yxp/qfun/hook/base/BaseWithDataHookItem;
.source "TroopClockInHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "群打卡"
    TargetProcess = "All"
    desc = "点击选择你要打卡的群聊"
.end annotation


# static fields
.field public static final CLOCK_PREPARE:I = 0x3e9

.field private static sTroopClockIn:Ljava/lang/reflect/Method;


# instance fields
.field public mLoopHolder:Lme/yxp/qfun/utils/thread/LoopHolder;

.field private mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$8bu73SIZBhwmiKzOlP1WiCq4Qo8(Lme/yxp/qfun/hook/troop/TroopClockInHook;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/hook/troop/TroopClockInHook;->doClockIn()V

    return-void
.end method

.method public static synthetic $r8$lambda$WChVPgu9bz7JrT83hFd1KanG584(Lme/yxp/qfun/hook/troop/TroopClockInHook;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/hook/troop/TroopClockInHook;->lambda$doClockInImmediately$0(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartLoop(Lme/yxp/qfun/hook/troop/TroopClockInHook;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/hook/troop/TroopClockInHook;->startLoop()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseWithDataHookItem;-><init>()V

    return-void
.end method

.method private doClockIn()V
    .registers 5

    const-wide/16 v0, 0x0

    const-wide/32 v2, 0xea60

    .line 131
    invoke-static {v0, v1, v2, v3}, Lme/yxp/qfun/utils/alarm/DailyAlarmHelper;->isAroundMidnight(JJ)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 132
    :cond_c
    invoke-direct {p0}, Lme/yxp/qfun/hook/troop/TroopClockInHook;->doClockInImmediately()V

    .line 133
    iget-object p0, p0, Lme/yxp/qfun/hook/troop/TroopClockInHook;->mLoopHolder:Lme/yxp/qfun/utils/thread/LoopHolder;

    invoke-virtual {p0}, Lme/yxp/qfun/utils/thread/LoopHolder;->stop()V

    return-void
.end method

.method private doClockInImmediately()V
    .registers 8

    .line 108
    :try_start_0
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_TroopClockInHandler()Ljava/lang/Class;

    move-result-object v1

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getQQAppInterface()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 110
    invoke-static {v1, v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lme/yxp/qfun/hook/troop/TroopClockInHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    iget-object v2, v2, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v2}, Lme/yxp/qfun/utils/data/TernaryDataList;->getKeyArray()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_3a

    aget-object v5, v2, v4

    .line 114
    iget-object v6, p0, Lme/yxp/qfun/hook/troop/TroopClockInHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    iget-object v6, v6, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v6, v5}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 115
    new-instance v6, Lme/yxp/qfun/hook/troop/TroopClockInHook$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v1, v5, v0}, Lme/yxp/qfun/hook/troop/TroopClockInHook$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/troop/TroopClockInHook;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lme/yxp/qfun/utils/thread/SyncUtils;->async(Ljava/lang/Runnable;)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    goto :goto_37

    :catchall_35
    move-exception v0

    goto :goto_3b

    :cond_37
    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_3a
    return-void

    .line 125
    :goto_3b
    invoke-static {p0, v0}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$doClockInImmediately$0(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 117
    :try_start_0
    sget-object v0, Lme/yxp/qfun/hook/troop/TroopClockInHook;->sTroopClockIn:Ljava/lang/reflect/Method;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 119
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    return-void
.end method

.method private startLoop()V
    .registers 7

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b77400

    add-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    .line 102
    iget-object v2, p0, Lme/yxp/qfun/hook/troop/TroopClockInHook;->mLoopHolder:Lme/yxp/qfun/utils/thread/LoopHolder;

    invoke-virtual {v2, v0, v1}, Lme/yxp/qfun/utils/thread/LoopHolder;->setStopTime(J)V

    .line 103
    iget-object p0, p0, Lme/yxp/qfun/hook/troop/TroopClockInHook;->mLoopHolder:Lme/yxp/qfun/utils/thread/LoopHolder;

    invoke-virtual {p0}, Lme/yxp/qfun/utils/thread/LoopHolder;->start()V

    return-void
.end method


# virtual methods
.method public cancelAlarm()V
    .registers 2

    const/16 p0, 0x3e9

    .line 95
    invoke-static {p0}, Lme/yxp/qfun/utils/alarm/DailyAlarmHelper;->isAlarmSet(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 96
    invoke-static {p0}, Lme/yxp/qfun/utils/alarm/DailyAlarmHelper;->cancelDailyAlarm(I)V

    :cond_b
    return-void
.end method

.method public initCallback()V
    .registers 3

    .line 41
    new-instance v0, Lme/yxp/qfun/utils/qq/EnableInfo$TroopEnableInfo;

    const-string v1, "TroopClockIn"

    invoke-direct {v0, v1}, Lme/yxp/qfun/utils/qq/EnableInfo$TroopEnableInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lme/yxp/qfun/hook/troop/TroopClockInHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    .line 42
    new-instance v0, Lme/yxp/qfun/hook/troop/TroopClockInHook$1;

    invoke-direct {v0, p0}, Lme/yxp/qfun/hook/troop/TroopClockInHook$1;-><init>(Lme/yxp/qfun/hook/troop/TroopClockInHook;)V

    iput-object v0, p0, Lme/yxp/qfun/hook/troop/TroopClockInHook;->receiver:Landroid/content/BroadcastReceiver;

    .line 51
    new-instance v0, Lme/yxp/qfun/utils/thread/LoopHolder;

    invoke-direct {v0}, Lme/yxp/qfun/utils/thread/LoopHolder;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/hook/troop/TroopClockInHook;->mLoopHolder:Lme/yxp/qfun/utils/thread/LoopHolder;

    .line 52
    new-instance v1, Lme/yxp/qfun/hook/troop/TroopClockInHook$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/troop/TroopClockInHook$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/troop/TroopClockInHook;)V

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/thread/LoopHolder;->setRunnable(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public initData()V
    .registers 1

    .line 72
    iget-object p0, p0, Lme/yxp/qfun/hook/troop/TroopClockInHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-virtual {p0}, Lme/yxp/qfun/utils/qq/EnableInfo;->initInfo()V

    return-void
.end method

.method public initMethod()Z
    .registers 2

    .line 32
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_TroopClockInHandler()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 33
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const-class v0, Ljava/lang/String;

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/troop/TroopClockInHook;->sTroopClockIn:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lme/yxp/qfun/hook/troop/TroopClockInHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-virtual {v0}, Lme/yxp/qfun/utils/qq/EnableInfo;->updateInfo()V

    .line 84
    new-instance v0, Lme/yxp/qfun/utils/ui/EnableDialog;

    iget-object p0, p0, Lme/yxp/qfun/hook/troop/TroopClockInHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-direct {v0, p1, p0}, Lme/yxp/qfun/utils/ui/EnableDialog;-><init>(Landroid/content/Context;Lme/yxp/qfun/utils/qq/EnableInfo;)V

    invoke-virtual {v0}, Lme/yxp/qfun/utils/ui/EnableDialog;->show()V

    return-void
.end method

.method public savaData()V
    .registers 1

    .line 77
    iget-object p0, p0, Lme/yxp/qfun/hook/troop/TroopClockInHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-virtual {p0}, Lme/yxp/qfun/utils/qq/EnableInfo;->savaInfo()V

    return-void
.end method

.method public setAlarm()V
    .registers 5

    const/16 v0, 0x3e9

    .line 89
    invoke-static {v0}, Lme/yxp/qfun/utils/alarm/DailyAlarmHelper;->isAlarmSet(I)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    .line 90
    iget-object p0, p0, Lme/yxp/qfun/hook/troop/TroopClockInHook;->receiver:Landroid/content/BroadcastReceiver;

    const/16 v2, 0x17

    const/16 v3, 0x39

    invoke-static {v2, v3, v1, v0, p0}, Lme/yxp/qfun/utils/alarm/DailyAlarmHelper;->setupDailyAlarm(IIIILandroid/content/BroadcastReceiver;)V

    :cond_12
    return-void
.end method

.method public startHook()V
    .registers 5

    .line 57
    invoke-direct {p0}, Lme/yxp/qfun/hook/troop/TroopClockInHook;->doClockInImmediately()V

    const-wide/32 v0, 0x2bf20

    const-wide/16 v2, 0x0

    .line 58
    invoke-static {v0, v1, v2, v3}, Lme/yxp/qfun/utils/alarm/DailyAlarmHelper;->isAroundMidnight(JJ)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 59
    invoke-direct {p0}, Lme/yxp/qfun/hook/troop/TroopClockInHook;->startLoop()V

    .line 61
    :cond_11
    invoke-virtual {p0}, Lme/yxp/qfun/hook/troop/TroopClockInHook;->setAlarm()V

    return-void
.end method

.method public stopHook()V
    .registers 2

    .line 66
    iget-object v0, p0, Lme/yxp/qfun/hook/troop/TroopClockInHook;->mLoopHolder:Lme/yxp/qfun/utils/thread/LoopHolder;

    invoke-virtual {v0}, Lme/yxp/qfun/utils/thread/LoopHolder;->stop()V

    .line 67
    invoke-virtual {p0}, Lme/yxp/qfun/hook/troop/TroopClockInHook;->cancelAlarm()V

    return-void
.end method
