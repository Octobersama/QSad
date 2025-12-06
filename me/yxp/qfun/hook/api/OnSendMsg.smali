.class public final Lme/yxp/qfun/hook/api/OnSendMsg;
.super Lme/yxp/qfun/hook/base/ApiHookItem;
.source "OnSendMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/hook/api/OnSendMsg$SendMsgListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;


# direct methods
.method public static synthetic $r8$lambda$UthHjvv64UbbftUGP201bjJrCxw(Lme/yxp/qfun/hook/api/OnSendMsg;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/api/OnSendMsg;->lambda$loadHook$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Lme/yxp/qfun/hook/api/OnSendMsg;

    invoke-direct {v0}, Lme/yxp/qfun/hook/api/OnSendMsg;-><init>()V

    sput-object v0, Lme/yxp/qfun/hook/api/OnSendMsg;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/ApiHookItem;-><init>()V

    return-void
.end method

.method private synthetic lambda$loadHook$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 21
    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    check-cast p1, Ljava/util/ArrayList;

    .line 22
    iget-object p0, p0, Lme/yxp/qfun/hook/base/ApiHookItem;->mListenerSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/yxp/qfun/hook/base/ApiHookItem$Listener;

    .line 23
    instance-of v1, v0, Lme/yxp/qfun/hook/api/OnSendMsg$SendMsgListener;

    if-eqz v1, :cond_d

    .line 24
    check-cast v0, Lme/yxp/qfun/hook/api/OnSendMsg$SendMsgListener;

    invoke-interface {v0, p1}, Lme/yxp/qfun/hook/api/OnSendMsg$SendMsgListener;->onSend(Ljava/util/ArrayList;)V

    goto :goto_d

    :cond_23
    return-void
.end method


# virtual methods
.method public loadHook()V
    .registers 3

    .line 16
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_IKernelMsgService$CppProxy()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "sendMsg"

    .line 17
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 20
    new-instance v1, Lme/yxp/qfun/hook/api/OnSendMsg$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/api/OnSendMsg$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/api/OnSendMsg;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lme/yxp/qfun/utils/hook/HookUtils;->hookAlways(Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method
