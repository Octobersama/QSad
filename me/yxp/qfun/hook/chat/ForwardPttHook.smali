.class public final Lme/yxp/qfun/hook/chat/ForwardPttHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "ForwardPttHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "转发语音"
    desc = "语音长按菜单出现转发按钮（支持私聊，群聊，临时会话）"
.end annotation


# static fields
.field private static final INVALID_TYPE:I = 0x1bf52

.field private static final MSG_TYPE_PTT:I = 0x6

.field private static final MSG_TYPE_TEXT:I = 0x2

.field private static sForwardMenuItem:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sHandleForwardMethod:Ljava/lang/reflect/Method;

.field private static sOnActivityResultMethod:Ljava/lang/reflect/Method;

.field private static sSendIntentMethod:Ljava/lang/reflect/Method;

.field private static sSetMenuMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final executor:Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;

.field private mLastAIOMsgItem:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$6V3DIUBT3Hh5NMRyVNTDWRcNNAc(Lme/yxp/qfun/hook/chat/ForwardPttHook;Ljava/lang/String;ILjava/util/ArrayList;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/hook/chat/ForwardPttHook;->lambda$initCallback$3(Ljava/lang/String;ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cf7GQqlvpZpE2opd5p5QxWjWuP4(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 74
    invoke-virtual {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 75
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 76
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    .line 77
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgItem()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->inParent(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 80
    sget-object v2, Lme/yxp/qfun/hook/chat/ForwardPttHook;->sForwardMenuItem:Ljava/lang/Class;

    .line 81
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    filled-new-array {v3, v1, p0, v4}, [Ljava/lang/Object;

    move-result-object p0

    .line 80
    invoke-static {v2, p0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FW46sFNoqcP8m78E9VuT6Tp3UPE(Lme/yxp/qfun/hook/chat/ForwardPttHook;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/chat/ForwardPttHook;->lambda$initCallback$2(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$N2AutVFgp1uVBdNaBxuk9BeFruA(Lme/yxp/qfun/hook/chat/ForwardPttHook;Ljava/lang/String;ILjava/util/ArrayList;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/hook/chat/ForwardPttHook;->lambda$sendMsg$5(Ljava/lang/String;ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tddZooV5nQBBW_hiQ2uR-8qQPWU(Lme/yxp/qfun/hook/chat/ForwardPttHook;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/chat/ForwardPttHook;->lambda$initCallback$4(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uU_W4OpT7nXAQPI0UKyzx4iz0_g(Lme/yxp/qfun/hook/chat/ForwardPttHook;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/chat/ForwardPttHook;->lambda$initCallback$1(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 27
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    .line 37
    new-instance v0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;-><init>(J)V

    iput-object v0, p0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->executor:Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;

    return-void
.end method

.method private synthetic lambda$initCallback$1(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 7

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->mLastAIOMsgItem:Ljava/lang/Object;

    .line 86
    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 87
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_MsgRecord()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 88
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgItem()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->inParent(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    const-string v3, "msgType"

    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x6

    if-eq v2, v4, :cond_38

    return-void

    .line 93
    :cond_38
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    .line 94
    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v1

    iput-object p1, p0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->mLastAIOMsgItem:Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$initCallback$2(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 9

    .line 99
    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Landroid/content/Intent;

    if-nez v1, :cond_12

    .line 102
    iget-object p0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 105
    :cond_12
    const-string v0, "forward_nt_msg_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_ba

    .line 106
    iget-object v0, p0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->mLastAIOMsgItem:Ljava/lang/Object;

    if-nez v0, :cond_24

    goto/16 :goto_ba

    .line 110
    :cond_24
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 111
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_MsgRecord()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 112
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgItem()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->inParent(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v2, "elements"

    .line 115
    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 117
    const-string v2, "uin"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    const-string v4, "uintype"

    const v5, 0x1bf52

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 119
    invoke-direct {p0, v3, v4, v0}, Lme/yxp/qfun/hook/chat/ForwardPttHook;->sendMsg(Ljava/lang/String;ILjava/util/ArrayList;)Z

    move-result v3

    .line 121
    const-string v4, "forward_multi_target"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_a6

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 124
    invoke-static {v4}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v5

    invoke-virtual {v5}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 125
    invoke-static {v4}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v4

    const-string v6, "uinType"

    invoke-virtual {v4, v6}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v4

    invoke-virtual {v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 126
    invoke-direct {p0, v5, v4, v0}, Lme/yxp/qfun/hook/chat/ForwardPttHook;->sendMsg(Ljava/lang/String;ILjava/util/ArrayList;)Z

    move-result v4

    if-nez v3, :cond_a4

    if-eqz v4, :cond_a2

    goto :goto_a4

    :cond_a2
    const/4 v3, 0x0

    goto :goto_6b

    :cond_a4
    :goto_a4
    const/4 v3, 0x1

    goto :goto_6b

    :cond_a6
    if-nez v3, :cond_b3

    .line 132
    iget-object p0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 134
    :cond_b3
    iget-object p0, p0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->executor:Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;

    invoke-virtual {p0}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->startExecute()V

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_ba
    :goto_ba
    iget-object p0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$initCallback$3(Ljava/lang/String;ILjava/util/ArrayList;)V
    .registers 4

    .line 158
    :try_start_0
    invoke-static {p1, p2}, Lme/yxp/qfun/utils/qq/MsgTool;->makeContact(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lme/yxp/qfun/utils/qq/MsgTool;->sendMsg(Ljava/lang/Object;Ljava/util/List;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception p1

    .line 160
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$initCallback$4(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 8

    .line 139
    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x2

    .line 140
    aget-object v0, v0, v2

    check-cast v0, Ljava/util/List;

    .line 142
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_93

    iget-object v1, p0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->mLastAIOMsgItem:Ljava/lang/Object;

    if-eqz v1, :cond_93

    .line 143
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    .line 144
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_MsgRecord()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    .line 145
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgItem()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->inParent(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 147
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    const-string v2, "elements"

    .line 148
    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 152
    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    const-string v4, "peerUin"

    invoke-virtual {v3, v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    invoke-virtual {v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v4

    const-string v5, "peerType"

    invoke-virtual {v4, v5}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v4

    invoke-virtual {v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 154
    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    const v5, 0x1bf52

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    .line 156
    iget-object v2, p0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->executor:Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;

    new-instance v5, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v3, v4, v1}, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda4;-><init>(Lme/yxp/qfun/hook/chat/ForwardPttHook;Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v5}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->addTask(Ljava/lang/Runnable;)V

    goto :goto_43

    .line 166
    :cond_8e
    iget-object p0, p0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->executor:Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;

    invoke-virtual {p0}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->startExecute()V

    .line 169
    :cond_93
    iget-object p0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$sendMsg$5(Ljava/lang/String;ILjava/util/ArrayList;)V
    .registers 4

    .line 188
    :try_start_0
    invoke-static {p1, p2}, Lme/yxp/qfun/utils/qq/MsgTool;->makeContact(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lme/yxp/qfun/utils/qq/MsgTool;->sendMsg(Ljava/lang/Object;Ljava/util/List;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception p1

    .line 190
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    return-void
.end method

.method private sendMsg(Ljava/lang/String;ILjava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const v0, 0x1bf52

    const/4 v1, 0x1

    if-eqz p2, :cond_13

    if-eq p2, v1, :cond_11

    const/16 v2, 0x3e8

    if-eq p2, v2, :cond_e

    move p2, v0

    goto :goto_14

    :cond_e
    const/16 p2, 0x64

    goto :goto_14

    :cond_11
    const/4 p2, 0x2

    goto :goto_14

    :cond_13
    move p2, v1

    :goto_14
    if-eqz p1, :cond_24

    if-ne p2, v0, :cond_19

    goto :goto_24

    .line 186
    :cond_19
    iget-object v0, p0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->executor:Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;

    new-instance v2, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, p2, p3}, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda5;-><init>(Lme/yxp/qfun/hook/chat/ForwardPttHook;Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->addTask(Ljava/lang/Runnable;)V

    return v1

    :cond_24
    :goto_24
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public initCallback()V
    .registers 5

    .line 73
    sget-object v0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->sSetMenuMethod:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->hookIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    .line 84
    sget-object v0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->sSendIntentMethod:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/chat/ForwardPttHook;)V

    invoke-static {p0, v0, v1, v2}, Lme/yxp/qfun/utils/hook/HookUtils;->hookIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    .line 97
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->isTIM()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->isQQ()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getVersionCode()J

    move-result-wide v0

    const-wide/16 v2, 0x2e2c

    cmp-long v0, v0, v2

    if-gez v0, :cond_2c

    goto :goto_37

    .line 138
    :cond_2c
    sget-object v0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->sHandleForwardMethod:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda3;-><init>(Lme/yxp/qfun/hook/chat/ForwardPttHook;)V

    invoke-static {p0, v0, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->replaceIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V

    return-void

    .line 98
    :cond_37
    :goto_37
    sget-object v0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->sOnActivityResultMethod:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda2;-><init>(Lme/yxp/qfun/hook/chat/ForwardPttHook;)V

    invoke-static {p0, v0, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->replaceIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V

    return-void
.end method

.method public initMethod()Z
    .registers 9

    .line 42
    const-string v0, "com.tencent.mobileqq.aio.msglist.holder.component.ptt.AIOPttContentComponent"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_NtMsgForwardUtils()Ljava/lang/Class;

    move-result-object v1

    .line 44
    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lme/yxp/qfun/utils/dexkit/DexKit;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lme/yxp/qfun/hook/chat/ForwardPttHook;->sForwardMenuItem:Ljava/lang/Class;

    .line 45
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 46
    const-class v2, Ljava/util/List;

    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 47
    invoke-virtual {v0, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->sSetMenuMethod:Ljava/lang/reflect/Method;

    .line 50
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->isTIM()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_70

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->isQQ()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getVersionCode()J

    move-result-wide v4

    const-wide/16 v6, 0x2e2c

    cmp-long v0, v4, v6

    if-gez v0, :cond_43

    goto :goto_70

    .line 60
    :cond_43
    const-string v0, "com.tencent.mobileqq.sharepanel.forward.handler.AIOForwardHandler"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "forward"

    .line 62
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    const-class v4, Ljava/lang/String;

    filled-new-array {v1, v3, v2, v4, v3}, [Ljava/lang/Class;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->sHandleForwardMethod:Ljava/lang/reflect/Method;

    .line 65
    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/utils/dexkit/DexKit;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->sSendIntentMethod:Ljava/lang/reflect/Method;

    goto :goto_aa

    .line 51
    :cond_70
    :goto_70
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 52
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Landroid/content/Intent;

    const-class v4, Landroid/app/Activity;

    filled-new-array {v4, v0, v0, v2, v3}, [Ljava/lang/Class;

    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->sOnActivityResultMethod:Ljava/lang/reflect/Method;

    .line 55
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 56
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 57
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgItem()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v4, v3, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/chat/ForwardPttHook;->sSendIntentMethod:Ljava/lang/reflect/Method;

    :goto_aa
    const/4 p0, 0x1

    return p0
.end method
