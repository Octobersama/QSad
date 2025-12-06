.class public Lme/yxp/qfun/javaplugin/api/PluginCallback;
.super Ljava/lang/Object;
.source "PluginCallback.java"


# instance fields
.field public getMsg:Lme/yxp/qfun/hook/api/OnSendMsg$SendMsgListener;

.field public joinGroup:Lme/yxp/qfun/hook/api/OnTroopJoin$TroopJoinListener;

.field private final mInterpreter:Lbsh/Interpreter;

.field private final mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

.field public menuItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onMsg:Lme/yxp/qfun/hook/api/OnMsg$MsgListener;

.field public onPai:Lme/yxp/qfun/hook/api/OnPaiYiPai$PaiYiPaiListener;

.field public quitGroup:Lme/yxp/qfun/hook/api/OnTroopQuit$TroopQuitListener;

.field public shutUpGroup:Lme/yxp/qfun/hook/api/OnTroopShutUp$TroopShutUpListener;


# direct methods
.method public static synthetic $r8$lambda$-kLQNz_e5CYKCOtu-KlTO7QrOIk(Lme/yxp/qfun/javaplugin/api/PluginCallback;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->lambda$runOnNewThread$7(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BERPzyhzTCj63DFTCMxWbMmrSzc(Lme/yxp/qfun/javaplugin/api/PluginCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->lambda$initCallbacks$3(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nmm9ynSWcHwF1ICqHUe4e6VlQR0(Lme/yxp/qfun/javaplugin/api/PluginCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->lambda$initCallbacks$2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RiKakAKqzCaZMZox76-q0nOOrkk(Lme/yxp/qfun/javaplugin/api/PluginCallback;Ljava/util/ArrayList;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->lambda$initCallbacks$5(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$awwrvWqjLUoLyw0vnJTIsXDjh7g(Lme/yxp/qfun/javaplugin/api/PluginCallback;Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->lambda$initCallbacks$0(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ju5fI0gUDqNg-oTqssUYQlZdnE8(Lme/yxp/qfun/javaplugin/api/PluginCallback;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->lambda$initCallbacks$4(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$whp2VcnoapHz-23MDfg__yhSXGs(Lme/yxp/qfun/javaplugin/api/PluginCallback;Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->lambda$initCallbacks$6(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xM1jc1cyumvheyr5hjssib6j_Vk(Lme/yxp/qfun/javaplugin/api/PluginCallback;Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->lambda$initCallbacks$1(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lme/yxp/qfun/javaplugin/loader/PluginCompiler;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->menuItemMap:Ljava/util/Map;

    .line 32
    iget-object v0, p1, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    iput-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    .line 33
    iget-object p1, p1, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->interpreter:Lbsh/Interpreter;

    iput-object p1, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mInterpreter:Lbsh/Interpreter;

    .line 35
    invoke-direct {p0}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->initCallbacks()V

    return-void
.end method

.method private findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lbsh/BshMethod;"
        }
    .end annotation

    .line 155
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mInterpreter:Lbsh/Interpreter;

    invoke-virtual {p0}, Lbsh/Interpreter;->getNameSpace()Lbsh/NameSpace;

    move-result-object p0

    invoke-virtual {p0}, Lbsh/NameSpace;->getMethods()[Lbsh/BshMethod;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_28

    aget-object v2, p0, v1

    .line 156
    invoke-virtual {v2}, Lbsh/BshMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 157
    invoke-virtual {v2}, Lbsh/BshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    return-object v2

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method private initCallbacks()V
    .registers 2

    .line 39
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lme/yxp/qfun/javaplugin/api/PluginCallback$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/javaplugin/api/PluginCallback;)V

    iput-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->onMsg:Lme/yxp/qfun/hook/api/OnMsg$MsgListener;

    .line 53
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lme/yxp/qfun/javaplugin/api/PluginCallback$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/javaplugin/api/PluginCallback;)V

    iput-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->joinGroup:Lme/yxp/qfun/hook/api/OnTroopJoin$TroopJoinListener;

    .line 57
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lme/yxp/qfun/javaplugin/api/PluginCallback$$ExternalSyntheticLambda2;-><init>(Lme/yxp/qfun/javaplugin/api/PluginCallback;)V

    iput-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->quitGroup:Lme/yxp/qfun/hook/api/OnTroopQuit$TroopQuitListener;

    .line 61
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginCallback$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lme/yxp/qfun/javaplugin/api/PluginCallback$$ExternalSyntheticLambda3;-><init>(Lme/yxp/qfun/javaplugin/api/PluginCallback;)V

    iput-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->shutUpGroup:Lme/yxp/qfun/hook/api/OnTroopShutUp$TroopShutUpListener;

    .line 65
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginCallback$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lme/yxp/qfun/javaplugin/api/PluginCallback$$ExternalSyntheticLambda4;-><init>(Lme/yxp/qfun/javaplugin/api/PluginCallback;)V

    iput-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->getMsg:Lme/yxp/qfun/hook/api/OnSendMsg$SendMsgListener;

    .line 88
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginCallback$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lme/yxp/qfun/javaplugin/api/PluginCallback$$ExternalSyntheticLambda5;-><init>(Lme/yxp/qfun/javaplugin/api/PluginCallback;)V

    iput-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->onPai:Lme/yxp/qfun/hook/api/OnPaiYiPai$PaiYiPaiListener;

    return-void
.end method

.method private invokeMethodIfExists(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mInterpreter:Lbsh/Interpreter;

    invoke-virtual {v0}, Lbsh/Interpreter;->getNameSpace()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/NameSpace;->getMethodNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 167
    :try_start_14
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mInterpreter:Lbsh/Interpreter;

    invoke-virtual {v0}, Lbsh/Interpreter;->getNameSpace()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object p1

    iget-object p2, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mInterpreter:Lbsh/Interpreter;

    .line 168
    invoke-virtual {p1, p3, p2}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception p1

    .line 170
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    invoke-static {p1, p0}, Lme/yxp/qfun/utils/error/PluginError;->callError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    :cond_2a
    return-void
.end method

.method private synthetic lambda$initCallbacks$0(Ljava/lang/Object;)V
    .registers 8

    .line 40
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mInterpreter:Lbsh/Interpreter;

    invoke-virtual {v0}, Lbsh/Interpreter;->getNameSpace()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/NameSpace;->getMethods()[Lbsh/BshMethod;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_44

    aget-object v3, v0, v2

    .line 41
    invoke-virtual {v3}, Lbsh/BshMethod;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onMsg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 42
    invoke-virtual {v3}, Lbsh/BshMethod;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 44
    :try_start_2c
    new-instance v4, Lme/yxp/qfun/javaplugin/api/MsgData;

    invoke-direct {v4, p1}, Lme/yxp/qfun/javaplugin/api/MsgData;-><init>(Ljava/lang/Object;)V

    .line 45
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mInterpreter:Lbsh/Interpreter;

    invoke-virtual {v3, v4, v5}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3a} :catch_3b

    goto :goto_41

    :catch_3b
    move-exception v3

    .line 47
    iget-object v4, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    invoke-static {v3, v4}, Lme/yxp/qfun/utils/error/PluginError;->callError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    :cond_41
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_44
    return-void
.end method

.method private synthetic lambda$initCallbacks$1(Ljava/lang/Object;)V
    .registers 4

    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lme/yxp/qfun/javaplugin/api/PluginCallback$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lme/yxp/qfun/javaplugin/api/PluginCallback$$ExternalSyntheticLambda7;-><init>(Lme/yxp/qfun/javaplugin/api/PluginCallback;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$initCallbacks$2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 54
    const-class v0, Ljava/lang/String;

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "joinGroup"

    invoke-direct {p0, p2, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->runOnNewThread(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$initCallbacks$3(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 58
    const-class v0, Ljava/lang/String;

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "quitGroup"

    invoke-direct {p0, p2, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->runOnNewThread(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$initCallbacks$4(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 8

    .line 62
    const-class v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v0, v1, v0}, [Ljava/lang/Class;

    move-result-object v0

    .line 63
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p1, p2, p3, p5}, [Ljava/lang/Object;

    move-result-object p1

    .line 62
    const-string p2, "shutUpGroup"

    invoke-direct {p0, p2, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->runOnNewThread(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$initCallbacks$5(Ljava/util/ArrayList;)V
    .registers 11

    .line 66
    const-string v0, "getMsg"

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_81

    .line 67
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    const-string v3, "textElement"

    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1e

    goto :goto_7e

    .line 70
    :cond_1e
    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    invoke-virtual {v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    const-string v5, ""

    .line 74
    :try_start_32
    iget-object v6, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mInterpreter:Lbsh/Interpreter;

    invoke-virtual {v6}, Lbsh/Interpreter;->getNameSpace()Lbsh/NameSpace;

    move-result-object v6

    invoke-virtual {v6}, Lbsh/NameSpace;->getMethodNames()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 75
    iget-object v6, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mInterpreter:Lbsh/Interpreter;

    invoke-virtual {v6}, Lbsh/Interpreter;->getNameSpace()Lbsh/NameSpace;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    .line 76
    invoke-virtual {v6, v0, v7}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v6

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mInterpreter:Lbsh/Interpreter;

    .line 77
    invoke-virtual {v6, v7, v8}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_64} :catch_65

    goto :goto_6b

    :catch_65
    move-exception v6

    .line 80
    iget-object v7, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    invoke-static {v6, v7}, Lme/yxp/qfun/utils/error/PluginError;->callError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    .line 83
    :cond_6b
    :goto_6b
    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    .line 84
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7a

    goto :goto_7b

    :cond_7a
    move-object v3, v5

    :goto_7b
    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    :goto_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_81
    return-void
.end method

.method private synthetic lambda$initCallbacks$6(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 89
    const-class v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1, v0}, [Ljava/lang/Class;

    move-result-object v0

    .line 90
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 89
    const-string p2, "onPaiYiPai"

    invoke-direct {p0, p2, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->runOnNewThread(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$runOnNewThread$7(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 4

    .line 176
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->invokeMethodIfExists(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method private runOnNewThread(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lme/yxp/qfun/javaplugin/api/PluginCallback$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginCallback$$ExternalSyntheticLambda6;-><init>(Lme/yxp/qfun/javaplugin/api/PluginCallback;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public chatInterface(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 98
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    filled-new-array {v0, v1, v1}, [Ljava/lang/Class;

    move-result-object v0

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 98
    const-string p2, "chatInterface"

    invoke-direct {p0, p2, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->invokeMethodIfExists(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs invokeItem(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 11

    .line 104
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 108
    :try_start_6
    filled-new-array {v0, v1, v1}, [Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_25

    if-eqz v4, :cond_2f

    .line 112
    :try_start_10
    aget-object v5, p2, v2

    aget-object v3, p2, v3

    const/4 v6, 0x2

    aget-object v6, p2, v6

    filled-new-array {v5, v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mInterpreter:Lbsh/Interpreter;

    invoke-virtual {v4, v3, v5}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_20} :catch_22

    move v3, v2

    goto :goto_2f

    :catch_22
    move-exception v3

    move v4, v2

    goto :goto_29

    :catch_25
    move-exception v4

    move-object v7, v4

    move v4, v3

    move-object v3, v7

    .line 115
    :goto_29
    iget-object v5, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    invoke-static {v3, v5}, Lme/yxp/qfun/utils/error/PluginError;->callError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    move v3, v4

    .line 120
    :cond_2f
    :goto_2f
    :try_start_2f
    const-class v4, Ljava/lang/Object;

    filled-new-array {v0, v1, v1, v4}, [Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_39} :catch_4c

    if-eqz v0, :cond_43

    .line 124
    :try_start_3b
    iget-object v1, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mInterpreter:Lbsh/Interpreter;

    invoke-virtual {v0, p2, v1}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;)Ljava/lang/Object;

    goto :goto_44

    :catch_41
    move-exception p2

    goto :goto_4e

    :cond_43
    move v2, v3

    :goto_44
    if-eqz v2, :cond_5b

    .line 128
    iget-object v1, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mInterpreter:Lbsh/Interpreter;

    invoke-virtual {v0, p2, v1}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4b} :catch_41

    goto :goto_5b

    :catch_4c
    move-exception p2

    move v2, v3

    :goto_4e
    if-nez v2, :cond_56

    .line 132
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    invoke-static {p2, p0}, Lme/yxp/qfun/utils/error/PluginError;->callError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    goto :goto_5b

    .line 134
    :cond_56
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    invoke-static {p2, p0, p1}, Lme/yxp/qfun/utils/error/PluginError;->findError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public invokeMenuItem(Ljava/lang/String;Lme/yxp/qfun/javaplugin/api/MsgData;)V
    .registers 6

    const/4 v0, 0x1

    .line 142
    :try_start_1
    const-class v1, Ljava/lang/Object;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 144
    :goto_f
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mInterpreter:Lbsh/Interpreter;

    invoke-virtual {v1, p2, v2}, Lbsh/BshMethod;->invoke([Ljava/lang/Object;Lbsh/Interpreter;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p2

    if-nez v0, :cond_22

    .line 147
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    invoke-static {p2, p0}, Lme/yxp/qfun/utils/error/PluginError;->callError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    goto :goto_27

    .line 149
    :cond_22
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    invoke-static {p2, p0, p1}, Lme/yxp/qfun/utils/error/PluginError;->findError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Ljava/lang/String;)V

    :goto_27
    return-void
.end method

.method public unLoadPlugin()V
    .registers 4

    const/4 v0, 0x0

    .line 94
    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "unLoadPlugin"

    invoke-direct {p0, v2, v1, v0}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->invokeMethodIfExists(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method
