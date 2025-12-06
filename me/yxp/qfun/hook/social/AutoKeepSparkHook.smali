.class public Lme/yxp/qfun/hook/social/AutoKeepSparkHook;
.super Lme/yxp/qfun/hook/base/BaseWithDataHookItem;
.source "AutoKeepSparkHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "自动续火"
    desc = "点击选择聊天和设置消息，支持图文消息（见脚本开发文档）"
.end annotation


# static fields
.field private static final SEND_PREPARE:I = 0x3eb


# instance fields
.field private mFriendEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

.field private mLoopHolder:Lme/yxp/qfun/utils/thread/LoopHolder;

.field private mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

.field private msg:Ljava/lang/String;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$A0OLu51ndXkex0pptZUD_SgheDI(Lme/yxp/qfun/hook/social/AutoKeepSparkHook;Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->lambda$onClick$0(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HpVhlqaZ6GeFLUyS08ce374Fdpw(Lme/yxp/qfun/hook/social/AutoKeepSparkHook;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->sendMsg()V

    return-void
.end method

.method public static synthetic $r8$lambda$V758phjR3jZU86CIdWBCzJakf20(Lme/yxp/qfun/hook/social/AutoKeepSparkHook;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->lambda$onClick$2(Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rc1WIqEAsXENWLqZCPlRuaPpTpI(Lme/yxp/qfun/hook/social/AutoKeepSparkHook;Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->lambda$onClick$1(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartLoop(Lme/yxp/qfun/hook/social/AutoKeepSparkHook;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->startLoop()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseWithDataHookItem;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    .line 105
    new-instance p2, Lme/yxp/qfun/utils/ui/EnableDialog;

    iget-object p0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-direct {p2, p1, p0}, Lme/yxp/qfun/utils/ui/EnableDialog;-><init>(Landroid/content/Context;Lme/yxp/qfun/utils/qq/EnableInfo;)V

    invoke-virtual {p2}, Lme/yxp/qfun/utils/ui/EnableDialog;->show()V

    return-void
.end method

.method private synthetic lambda$onClick$1(Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    .line 106
    new-instance p2, Lme/yxp/qfun/utils/ui/EnableDialog;

    iget-object p0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mFriendEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-direct {p2, p1, p0}, Lme/yxp/qfun/utils/ui/EnableDialog;-><init>(Landroid/content/Context;Lme/yxp/qfun/utils/qq/EnableInfo;)V

    invoke-virtual {p2}, Lme/yxp/qfun/utils/ui/EnableDialog;->show()V

    return-void
.end method

.method private synthetic lambda$onClick$2(Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .registers 3

    .line 110
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->msg:Ljava/lang/String;

    return-void
.end method

.method private sendMsg()V
    .registers 8

    const-wide/16 v0, 0x0

    const-wide/32 v2, 0xea60

    .line 121
    invoke-static {v0, v1, v2, v3}, Lme/yxp/qfun/utils/alarm/DailyAlarmHelper;->isAroundMidnight(JJ)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 122
    :cond_c
    iget-object v0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mFriendEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    iget-object v0, v0, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v0}, Lme/yxp/qfun/utils/data/TernaryDataList;->getKeyArray()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_2e

    aget-object v4, v0, v3

    .line 123
    iget-object v5, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mFriendEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    iget-object v5, v5, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v5, v4}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 124
    iget-object v5, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->msg:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lme/yxp/qfun/utils/qq/MsgTool;->sendMsg(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 127
    :cond_2e
    iget-object v0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    iget-object v0, v0, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v0}, Lme/yxp/qfun/utils/data/TernaryDataList;->getKeyArray()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_37
    if-ge v2, v1, :cond_4e

    aget-object v3, v0, v2

    .line 128
    iget-object v4, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    iget-object v4, v4, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v4, v3}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 129
    iget-object v4, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->msg:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lme/yxp/qfun/utils/qq/MsgTool;->sendMsg(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 132
    :cond_4e
    iget-object p0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mLoopHolder:Lme/yxp/qfun/utils/thread/LoopHolder;

    invoke-virtual {p0}, Lme/yxp/qfun/utils/thread/LoopHolder;->stop()V

    return-void
.end method

.method private startLoop()V
    .registers 7

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf200

    add-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    .line 116
    iget-object v2, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mLoopHolder:Lme/yxp/qfun/utils/thread/LoopHolder;

    invoke-virtual {v2, v0, v1}, Lme/yxp/qfun/utils/thread/LoopHolder;->setStopTime(J)V

    .line 117
    iget-object p0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mLoopHolder:Lme/yxp/qfun/utils/thread/LoopHolder;

    invoke-virtual {p0}, Lme/yxp/qfun/utils/thread/LoopHolder;->start()V

    return-void
.end method


# virtual methods
.method public cancelAlarm()V
    .registers 2

    const/16 p0, 0x3eb

    .line 74
    invoke-static {p0}, Lme/yxp/qfun/utils/alarm/DailyAlarmHelper;->isAlarmSet(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 75
    invoke-static {p0}, Lme/yxp/qfun/utils/alarm/DailyAlarmHelper;->cancelDailyAlarm(I)V

    :cond_b
    return-void
.end method

.method public initCallback()V
    .registers 4

    .line 36
    new-instance v0, Lme/yxp/qfun/utils/qq/EnableInfo$FriendEnableInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_Friend"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lme/yxp/qfun/utils/qq/EnableInfo$FriendEnableInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mFriendEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    .line 37
    new-instance v0, Lme/yxp/qfun/utils/qq/EnableInfo$TroopEnableInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_Troop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lme/yxp/qfun/utils/qq/EnableInfo$TroopEnableInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    .line 39
    new-instance v0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook$1;

    invoke-direct {v0, p0}, Lme/yxp/qfun/hook/social/AutoKeepSparkHook$1;-><init>(Lme/yxp/qfun/hook/social/AutoKeepSparkHook;)V

    iput-object v0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->receiver:Landroid/content/BroadcastReceiver;

    .line 48
    new-instance v0, Lme/yxp/qfun/utils/thread/LoopHolder;

    invoke-direct {v0}, Lme/yxp/qfun/utils/thread/LoopHolder;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mLoopHolder:Lme/yxp/qfun/utils/thread/LoopHolder;

    .line 49
    new-instance v1, Lme/yxp/qfun/hook/social/AutoKeepSparkHook$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/social/AutoKeepSparkHook$$ExternalSyntheticLambda3;-><init>(Lme/yxp/qfun/hook/social/AutoKeepSparkHook;)V

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/thread/LoopHolder;->setRunnable(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public initData()V
    .registers 3

    .line 82
    iget-object v0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-virtual {v0}, Lme/yxp/qfun/utils/qq/EnableInfo;->initInfo()V

    .line 83
    iget-object v0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mFriendEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-virtual {v0}, Lme/yxp/qfun/utils/qq/EnableInfo;->initInfo()V

    .line 84
    const-string v0, "data"

    const-string v1, "AutoSendText"

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/data/DataUtils;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->msg:Ljava/lang/String;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-virtual {v0}, Lme/yxp/qfun/utils/qq/EnableInfo;->updateInfo()V

    .line 99
    iget-object v0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mFriendEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-virtual {v0}, Lme/yxp/qfun/utils/qq/EnableInfo;->updateInfo()V

    .line 100
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lme/yxp/qfun/R$layout;->keepsparkview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 101
    sget v1, Lme/yxp/qfun/R$id;->keepspark_msg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 102
    iget-object v2, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    sget v2, Lme/yxp/qfun/R$id;->keepspark_troop:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 104
    sget v3, Lme/yxp/qfun/R$id;->keepspark_friend:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 105
    new-instance v4, Lme/yxp/qfun/hook/social/AutoKeepSparkHook$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lme/yxp/qfun/hook/social/AutoKeepSparkHook$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/social/AutoKeepSparkHook;Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v2, Lme/yxp/qfun/hook/social/AutoKeepSparkHook$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lme/yxp/qfun/hook/social/AutoKeepSparkHook$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/social/AutoKeepSparkHook;Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    invoke-direct {v2, p1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string p1, "续火设置"

    .line 108
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 109
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lme/yxp/qfun/hook/social/AutoKeepSparkHook$$ExternalSyntheticLambda2;-><init>(Lme/yxp/qfun/hook/social/AutoKeepSparkHook;Landroid/widget/EditText;)V

    .line 110
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public savaData()V
    .registers 3

    .line 89
    iget-object v0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-virtual {v0}, Lme/yxp/qfun/utils/qq/EnableInfo;->savaInfo()V

    .line 90
    iget-object v0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mFriendEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-virtual {v0}, Lme/yxp/qfun/utils/qq/EnableInfo;->savaInfo()V

    .line 91
    const-string v0, "AutoSendText"

    iget-object p0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->msg:Ljava/lang/String;

    const-string v1, "data"

    invoke-static {v1, v0, p0}, Lme/yxp/qfun/utils/data/DataUtils;->serialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAlarm()V
    .registers 5

    const/16 v0, 0x3eb

    .line 67
    invoke-static {v0}, Lme/yxp/qfun/utils/alarm/DailyAlarmHelper;->isAlarmSet(I)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    .line 68
    iget-object p0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->receiver:Landroid/content/BroadcastReceiver;

    const/16 v2, 0x17

    const/16 v3, 0x39

    invoke-static {v2, v3, v1, v0, p0}, Lme/yxp/qfun/utils/alarm/DailyAlarmHelper;->setupDailyAlarm(IIIILandroid/content/BroadcastReceiver;)V

    :cond_12
    return-void
.end method

.method public startHook()V
    .registers 5

    const-wide/32 v0, 0x2bf20

    const-wide/16 v2, 0x1

    .line 54
    invoke-static {v0, v1, v2, v3}, Lme/yxp/qfun/utils/alarm/DailyAlarmHelper;->isAroundMidnight(JJ)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 55
    invoke-direct {p0}, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->startLoop()V

    .line 57
    :cond_e
    invoke-virtual {p0}, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->setAlarm()V

    return-void
.end method

.method public stopHook()V
    .registers 2

    .line 62
    iget-object v0, p0, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->mLoopHolder:Lme/yxp/qfun/utils/thread/LoopHolder;

    invoke-virtual {v0}, Lme/yxp/qfun/utils/thread/LoopHolder;->stop()V

    .line 63
    invoke-virtual {p0}, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;->cancelAlarm()V

    return-void
.end method
