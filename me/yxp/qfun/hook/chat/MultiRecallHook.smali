.class public final Lme/yxp/qfun/hook/chat/MultiRecallHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "MultiRecallHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "多选撤回"
    desc = "为多选菜单中添加批量撤回功能"
.end annotation


# static fields
.field private static getMsgList:Ljava/lang/reflect/Method;

.field private static sCreateVM:Ljava/lang/reflect/Method;

.field private static sInvoke:Ljava/lang/reflect/Method;

.field private static sMakeView:Ljava/lang/reflect/Method;


# instance fields
.field private final executor:Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;

.field private multiSelectBarVM:Ljava/lang/Object;

.field private sMultiForward:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0TFY7bd31YRgYoPK_SX7d7BMTEI(Lme/yxp/qfun/hook/chat/MultiRecallHook;Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/chat/MultiRecallHook;->lambda$initCallback$1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7ORLlrQmuQYrmze-Et0uHj0o40U(Lme/yxp/qfun/hook/chat/MultiRecallHook;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/chat/MultiRecallHook;->lambda$initCallback$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O1yZ99uoyKbk2J1k8UKS57rEywk(Lme/yxp/qfun/hook/chat/MultiRecallHook;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/chat/MultiRecallHook;->lambda$initCallback$3(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rmkCeKUh93Kh1YezN-TjtQGVTXc(Lme/yxp/qfun/hook/chat/MultiRecallHook;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/chat/MultiRecallHook;->lambda$initCallback$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 27
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    .line 32
    new-instance v0, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;

    const-wide/16 v1, 0x12c

    invoke-direct {v0, v1, v2}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;-><init>(J)V

    iput-object v0, p0, Lme/yxp/qfun/hook/chat/MultiRecallHook;->executor:Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;

    return-void
.end method

.method private synthetic lambda$initCallback$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 75
    invoke-virtual {p1}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/hook/chat/MultiRecallHook;->multiSelectBarVM:Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$initCallback$1(Ljava/lang/Object;)V
    .registers 2

    .line 107
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/chat/MultiRecallHook;->recallByAIOMsgItem(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$initCallback$2(Landroid/view/View;)V
    .registers 6

    .line 86
    :try_start_0
    iget-object p1, p0, Lme/yxp/qfun/hook/chat/MultiRecallHook;->sMultiForward:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 90
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->isQQ()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 91
    iget-object v1, p0, Lme/yxp/qfun/hook/chat/MultiRecallHook;->multiSelectBarVM:Ljava/lang/Object;

    const-string v2, "getMContext"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4e

    :catchall_1a
    move-exception p1

    goto/16 :goto_8f

    .line 92
    :cond_1d
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->isTIM()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4d

    .line 94
    const-string v1, "com.tencent.mvi.mvvm.framework.FrameworkVM"

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    sget-object v3, Lme/yxp/qfun/hook/chat/MultiRecallHook;->getMsgList:Ljava/lang/reflect/Method;

    .line 95
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    .line 96
    invoke-virtual {v1, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamCount(I)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lme/yxp/qfun/hook/chat/MultiRecallHook;->multiSelectBarVM:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4e

    :cond_4d
    move-object v0, v2

    .line 102
    :goto_4e
    sget-object v1, Lme/yxp/qfun/hook/chat/MultiRecallHook;->getMsgList:Ljava/lang/reflect/Method;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 104
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_7e

    .line 107
    iget-object v2, p0, Lme/yxp/qfun/hook/chat/MultiRecallHook;->executor:Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;

    new-instance v3, Lme/yxp/qfun/hook/chat/MultiRecallHook$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1}, Lme/yxp/qfun/hook/chat/MultiRecallHook$$ExternalSyntheticLambda3;-><init>(Lme/yxp/qfun/hook/chat/MultiRecallHook;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->addTask(Ljava/lang/Runnable;)V

    goto :goto_61

    .line 109
    :cond_7e
    invoke-direct {p0, v1}, Lme/yxp/qfun/hook/chat/MultiRecallHook;->recallByAIOMsgItem(Ljava/lang/Object;)V

    goto :goto_61

    .line 114
    :cond_82
    iget-object p1, p0, Lme/yxp/qfun/hook/chat/MultiRecallHook;->executor:Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;

    invoke-virtual {p1}, Lme/yxp/qfun/utils/thread/SimpleIntervalExecutor;->startExecute()V

    .line 115
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V
    :try_end_8e
    .catchall {:try_start_0 .. :try_end_8e} :catchall_1a

    return-void

    .line 118
    :goto_8f
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$initCallback$3(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 7

    .line 79
    invoke-virtual {p1}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 80
    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    const-string v1, "this$0"

    invoke-virtual {p1, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    invoke-virtual {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 82
    sget-object v1, Lme/yxp/qfun/hook/chat/MultiRecallHook;->sMakeView:Ljava/lang/reflect/Method;

    sget v2, Lme/yxp/qfun/R$drawable;->recall:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lme/yxp/qfun/R$drawable;->recall:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lme/yxp/qfun/hook/chat/MultiRecallHook$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lme/yxp/qfun/hook/chat/MultiRecallHook$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/chat/MultiRecallHook;)V

    filled-new-array {p1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v1, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 121
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private recallByAIOMsgItem(Ljava/lang/Object;)V
    .registers 4

    .line 131
    :try_start_0
    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    .line 132
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_MsgRecord()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    .line 133
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgItem()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->inParent(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 135
    new-instance v0, Lme/yxp/qfun/javaplugin/api/MsgData;

    invoke-direct {v0, p1}, Lme/yxp/qfun/javaplugin/api/MsgData;-><init>(Ljava/lang/Object;)V

    .line 137
    iget-object p1, v0, Lme/yxp/qfun/javaplugin/api/MsgData;->contact:Ljava/lang/Object;

    iget-wide v0, v0, Lme/yxp/qfun/javaplugin/api/MsgData;->msgId:J

    invoke-static {p1, v0, v1}, Lme/yxp/qfun/utils/qq/MsgTool;->recallMsg(Ljava/lang/Object;J)V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception p1

    .line 139
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 4

    .line 75
    sget-object v0, Lme/yxp/qfun/hook/chat/MultiRecallHook;->sCreateVM:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/chat/MultiRecallHook$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/chat/MultiRecallHook$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/chat/MultiRecallHook;)V

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->hookIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    .line 77
    sget-object v0, Lme/yxp/qfun/hook/chat/MultiRecallHook;->sInvoke:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/chat/MultiRecallHook$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/chat/MultiRecallHook$$ExternalSyntheticLambda2;-><init>(Lme/yxp/qfun/hook/chat/MultiRecallHook;)V

    invoke-static {p0, v0, v2, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->hookIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method

.method public initMethod()Z
    .registers 6

    .line 41
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->isTIM()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 42
    const-string v0, "com.tencent.tim.aio.inputbar.TimMultiSelectBarVB"

    goto :goto_14

    .line 43
    :cond_9
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->isQQ()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 44
    const-string v0, "com.tencent.mobileqq.aio.input.multiselect.MultiSelectBarVB"

    goto :goto_14

    .line 43
    :cond_12
    const-string v0, ""

    .line 46
    :goto_14
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$mOperationLayout$2"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    const-string v2, "com.tencent.mvi.mvvm.BaseVM"

    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 49
    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lme/yxp/qfun/utils/dexkit/DexKit;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lme/yxp/qfun/hook/chat/MultiRecallHook;->sMultiForward:Ljava/lang/Class;

    .line 50
    invoke-static {v3}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const-class v3, Ljava/util/List;

    .line 51
    invoke-virtual {p0, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const/4 v3, 0x1

    .line 52
    invoke-virtual {p0, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamCount(I)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/chat/MultiRecallHook;->getMsgList:Ljava/lang/reflect/Method;

    .line 55
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const-string v0, "invoke"

    .line 56
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/chat/MultiRecallHook;->sInvoke:Ljava/lang/reflect/Method;

    .line 58
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const-class v0, Landroid/view/View;

    .line 59
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/view/View$OnClickListener;

    filled-new-array {v1, v0, v0, v4}, [Ljava/lang/Class;

    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/chat/MultiRecallHook;->sMakeView:Ljava/lang/reflect/Method;

    .line 62
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 63
    invoke-virtual {p0, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamCount(I)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/chat/MultiRecallHook;->sCreateVM:Ljava/lang/reflect/Method;

    return v3
.end method
