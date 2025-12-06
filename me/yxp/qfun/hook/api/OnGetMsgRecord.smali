.class public final Lme/yxp/qfun/hook/api/OnGetMsgRecord;
.super Lme/yxp/qfun/hook/base/ApiHookItem;
.source "OnGetMsgRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/hook/api/OnGetMsgRecord$GetMsgRecordListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;


# direct methods
.method public static synthetic $r8$lambda$26Tk9ntUhzUHaDLqxOJtaQI7Uvg(Lme/yxp/qfun/hook/api/OnGetMsgRecord;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/api/OnGetMsgRecord;->lambda$loadHook$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lme/yxp/qfun/hook/api/OnGetMsgRecord;

    invoke-direct {v0}, Lme/yxp/qfun/hook/api/OnGetMsgRecord;-><init>()V

    sput-object v0, Lme/yxp/qfun/hook/api/OnGetMsgRecord;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/ApiHookItem;-><init>()V

    return-void
.end method

.method private synthetic lambda$loadHook$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 20
    invoke-virtual {p1}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 21
    iget-object p0, p0, Lme/yxp/qfun/hook/base/ApiHookItem;->mListenerSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/yxp/qfun/hook/base/ApiHookItem$Listener;

    .line 22
    instance-of v1, v0, Lme/yxp/qfun/hook/api/OnGetMsgRecord$GetMsgRecordListener;

    if-eqz v1, :cond_a

    .line 23
    check-cast v0, Lme/yxp/qfun/hook/api/OnGetMsgRecord$GetMsgRecordListener;

    invoke-interface {v0, p1}, Lme/yxp/qfun/hook/api/OnGetMsgRecord$GetMsgRecordListener;->onGet(Ljava/lang/Object;)V

    goto :goto_a

    :cond_20
    return-void
.end method


# virtual methods
.method public loadHook()V
    .registers 3

    .line 15
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgItem()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "getMsgRecord"

    .line 16
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 19
    new-instance v1, Lme/yxp/qfun/hook/api/OnGetMsgRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/api/OnGetMsgRecord$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/api/OnGetMsgRecord;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->hookAlways(Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method
