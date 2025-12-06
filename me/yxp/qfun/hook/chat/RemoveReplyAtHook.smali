.class public final Lme/yxp/qfun/hook/chat/RemoveReplyAtHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "RemoveReplyAtHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "去除回复自动艾特"
    desc = "引用消息时不再自动添加艾特"
.end annotation


# static fields
.field private static final MsgOnClickReplyEvent:Ljava/lang/String; = "com.tencent.mobileqq.aio.event.AIOMsgSendEvent$MsgOnClickReplyEvent"

.field private static sHandleMsgIntent:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$2COb-2efUI14dpI7xgQrWIav7nw(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 6

    .line 32
    iget-object v0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.tencent.mobileqq.aio.event.AIOMsgSendEvent$MsgOnClickReplyEvent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_75

    .line 35
    :cond_18
    iget-object v0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgItem()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 37
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_MsgRecord()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 38
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgItem()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->inParent(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    const-string v2, "senderUid"

    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 41
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    .line 42
    iget-object v3, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v4, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {v3, v4, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_75
    :goto_75
    iget-object v0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v1, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 3

    .line 31
    sget-object v0, Lme/yxp/qfun/hook/chat/RemoveReplyAtHook;->sHandleMsgIntent:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/chat/RemoveReplyAtHook$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lme/yxp/qfun/hook/chat/RemoveReplyAtHook$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->replaceIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V

    return-void
.end method

.method public initMethod()Z
    .registers 2

    .line 21
    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/utils/dexkit/DexKit;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 22
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 23
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const-string v0, "com.tencent.mvi.base.route.MsgIntent"

    .line 24
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/chat/RemoveReplyAtHook;->sHandleMsgIntent:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method
