.class public Lme/yxp/qfun/javaplugin/loader/PluginCompiler;
.super Ljava/lang/Object;
.source "PluginCompiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/javaplugin/loader/PluginCompiler$FixClassLoader;
    }
.end annotation


# instance fields
.field public fixClassLoader:Lme/yxp/qfun/javaplugin/loader/PluginCompiler$FixClassLoader;

.field public interpreter:Lbsh/Interpreter;

.field public itemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScript:Ljava/lang/String;

.field public pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

.field public pluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;


# direct methods
.method public static synthetic $r8$lambda$SCdE_4sp0xYWW45kf_Sdk5zThXs(Lme/yxp/qfun/javaplugin/loader/PluginCompiler;Ljava/lang/String;Lme/yxp/qfun/javaplugin/api/MsgData;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->lambda$registerCallback$0(Ljava/lang/String;Lme/yxp/qfun/javaplugin/api/MsgData;)V

    return-void
.end method

.method public constructor <init>(Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->itemMap:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    .line 46
    new-instance p1, Lbsh/Interpreter;

    invoke-direct {p1}, Lbsh/Interpreter;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->interpreter:Lbsh/Interpreter;

    .line 47
    new-instance p1, Lme/yxp/qfun/javaplugin/api/PluginCallback;

    invoke-direct {p1, p0}, Lme/yxp/qfun/javaplugin/api/PluginCallback;-><init>(Lme/yxp/qfun/javaplugin/loader/PluginCompiler;)V

    iput-object p1, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    return-void
.end method

.method private synthetic lambda$registerCallback$0(Ljava/lang/String;Lme/yxp/qfun/javaplugin/api/MsgData;)V
    .registers 4

    .line 132
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->menuItemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->invokeMenuItem(Ljava/lang/String;Lme/yxp/qfun/javaplugin/api/MsgData;)V

    return-void
.end method

.method private loadScript(Ljava/lang/String;)V
    .registers 6

    .line 79
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "main.java"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    :try_start_16
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_6f

    .line 82
    :try_start_1b
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_50

    .line 83
    :try_start_20
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_52

    .line 86
    :try_start_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    :goto_2f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    :catchall_3e
    move-exception p0

    goto :goto_54

    .line 90
    :cond_40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->mScript:Ljava/lang/String;
    :try_end_46
    .catchall {:try_start_2a .. :try_end_46} :catchall_3e

    .line 91
    :try_start_46
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_52

    :try_start_49
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_50

    :try_start_4c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_6f

    return-void

    :catchall_50
    move-exception p0

    goto :goto_66

    :catchall_52
    move-exception p0

    goto :goto_5d

    .line 81
    :goto_54
    :try_start_54
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception v1

    :try_start_59
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5c
    throw p0
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_52

    :goto_5d
    :try_start_5d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception v0

    :try_start_62
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_65
    throw p0
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_50

    :goto_66
    :try_start_66
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_6e

    :catchall_6a
    move-exception p1

    :try_start_6b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6e
    throw p0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6f} :catch_6f

    :catch_6f
    return-void
.end method

.method private registerCallback()V
    .registers 5

    .line 123
    sget-object v0, Lme/yxp/qfun/hook/api/OnSendMsg;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget-object v1, v1, Lme/yxp/qfun/javaplugin/api/PluginCallback;->getMsg:Lme/yxp/qfun/hook/api/OnSendMsg$SendMsgListener;

    invoke-virtual {v0, v1}, Lme/yxp/qfun/hook/base/ApiHookItem;->addListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    .line 124
    sget-object v0, Lme/yxp/qfun/hook/api/OnMsg;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget-object v1, v1, Lme/yxp/qfun/javaplugin/api/PluginCallback;->onMsg:Lme/yxp/qfun/hook/api/OnMsg$MsgListener;

    invoke-virtual {v0, v1}, Lme/yxp/qfun/hook/base/ApiHookItem;->addListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    .line 125
    sget-object v0, Lme/yxp/qfun/hook/api/OnTroopJoin;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget-object v1, v1, Lme/yxp/qfun/javaplugin/api/PluginCallback;->joinGroup:Lme/yxp/qfun/hook/api/OnTroopJoin$TroopJoinListener;

    invoke-virtual {v0, v1}, Lme/yxp/qfun/hook/base/ApiHookItem;->addListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    .line 126
    sget-object v0, Lme/yxp/qfun/hook/api/OnTroopQuit;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget-object v1, v1, Lme/yxp/qfun/javaplugin/api/PluginCallback;->quitGroup:Lme/yxp/qfun/hook/api/OnTroopQuit$TroopQuitListener;

    invoke-virtual {v0, v1}, Lme/yxp/qfun/hook/base/ApiHookItem;->addListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    .line 127
    sget-object v0, Lme/yxp/qfun/hook/api/OnTroopShutUp;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget-object v1, v1, Lme/yxp/qfun/javaplugin/api/PluginCallback;->shutUpGroup:Lme/yxp/qfun/hook/api/OnTroopShutUp$TroopShutUpListener;

    invoke-virtual {v0, v1}, Lme/yxp/qfun/hook/base/ApiHookItem;->addListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    .line 128
    sget-object v0, Lme/yxp/qfun/hook/api/OnPaiYiPai;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget-object v1, v1, Lme/yxp/qfun/javaplugin/api/PluginCallback;->onPai:Lme/yxp/qfun/hook/api/OnPaiYiPai$PaiYiPaiListener;

    invoke-virtual {v0, v1}, Lme/yxp/qfun/hook/base/ApiHookItem;->addListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    .line 130
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget-object v0, v0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->menuItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    sget-object v2, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    check-cast v2, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;

    new-instance v3, Lme/yxp/qfun/javaplugin/loader/PluginCompiler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/javaplugin/loader/PluginCompiler;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->addListener(Ljava/lang/String;Lme/yxp/qfun/hook/api/OnMsgMenuOpen$OnMsgMenuClickListener;)V

    goto :goto_42

    :cond_5b
    return-void
.end method

.method private registerMethod()V
    .registers 8

    .line 65
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->interpreter:Lbsh/Interpreter;

    invoke-virtual {v0}, Lbsh/Interpreter;->getNameSpace()Lbsh/NameSpace;

    move-result-object v0

    .line 66
    new-instance v1, Lme/yxp/qfun/javaplugin/api/PluginMethod;

    invoke-direct {v1, p0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;-><init>(Lme/yxp/qfun/javaplugin/loader/PluginCompiler;)V

    .line 68
    :try_start_b
    const-class p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_38

    aget-object v4, p0, v3

    .line 69
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lambda"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 70
    new-instance v5, Lbsh/BshMethod;

    invoke-direct {v5, v4, v1}, Lbsh/BshMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Lbsh/NameSpace;->setMethod(Lbsh/BshMethod;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_35} :catch_38

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :catch_38
    :cond_38
    return-void
.end method

.method private removeCallback()V
    .registers 3

    .line 137
    sget-object v0, Lme/yxp/qfun/hook/api/OnSendMsg;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget-object v1, v1, Lme/yxp/qfun/javaplugin/api/PluginCallback;->getMsg:Lme/yxp/qfun/hook/api/OnSendMsg$SendMsgListener;

    invoke-virtual {v0, v1}, Lme/yxp/qfun/hook/base/ApiHookItem;->removeListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    .line 138
    sget-object v0, Lme/yxp/qfun/hook/api/OnMsg;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget-object v1, v1, Lme/yxp/qfun/javaplugin/api/PluginCallback;->onMsg:Lme/yxp/qfun/hook/api/OnMsg$MsgListener;

    invoke-virtual {v0, v1}, Lme/yxp/qfun/hook/base/ApiHookItem;->removeListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    .line 139
    sget-object v0, Lme/yxp/qfun/hook/api/OnTroopJoin;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget-object v1, v1, Lme/yxp/qfun/javaplugin/api/PluginCallback;->joinGroup:Lme/yxp/qfun/hook/api/OnTroopJoin$TroopJoinListener;

    invoke-virtual {v0, v1}, Lme/yxp/qfun/hook/base/ApiHookItem;->removeListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    .line 140
    sget-object v0, Lme/yxp/qfun/hook/api/OnTroopQuit;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget-object v1, v1, Lme/yxp/qfun/javaplugin/api/PluginCallback;->quitGroup:Lme/yxp/qfun/hook/api/OnTroopQuit$TroopQuitListener;

    invoke-virtual {v0, v1}, Lme/yxp/qfun/hook/base/ApiHookItem;->removeListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    .line 141
    sget-object v0, Lme/yxp/qfun/hook/api/OnTroopShutUp;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget-object v1, v1, Lme/yxp/qfun/javaplugin/api/PluginCallback;->shutUpGroup:Lme/yxp/qfun/hook/api/OnTroopShutUp$TroopShutUpListener;

    invoke-virtual {v0, v1}, Lme/yxp/qfun/hook/base/ApiHookItem;->removeListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    .line 142
    sget-object v0, Lme/yxp/qfun/hook/api/OnPaiYiPai;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget-object v1, v1, Lme/yxp/qfun/javaplugin/api/PluginCallback;->onPai:Lme/yxp/qfun/hook/api/OnPaiYiPai$PaiYiPaiListener;

    invoke-virtual {v0, v1}, Lme/yxp/qfun/hook/base/ApiHookItem;->removeListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    .line 144
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->menuItemMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_42
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    sget-object v1, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    check-cast v1, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;

    invoke-virtual {v1, v0}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->removeListener(Ljava/lang/String;)V

    goto :goto_42

    :cond_56
    return-void
.end method

.method private setValues()V
    .registers 4

    .line 52
    :try_start_0
    new-instance v0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler$FixClassLoader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler$FixClassLoader;-><init>(Lme/yxp/qfun/javaplugin/loader/PluginCompiler-IA;)V

    iput-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->fixClassLoader:Lme/yxp/qfun/javaplugin/loader/PluginCompiler$FixClassLoader;

    .line 53
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->interpreter:Lbsh/Interpreter;

    const-string v1, "context"

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->interpreter:Lbsh/Interpreter;

    const-string v1, "myUin"

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->interpreter:Lbsh/Interpreter;

    const-string v1, "classLoader"

    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->getHostClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->interpreter:Lbsh/Interpreter;

    const-string v1, "pluginPath"

    iget-object v2, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    iget-object v2, v2, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->interpreter:Lbsh/Interpreter;

    const-string v1, "pluginId"

    iget-object v2, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    iget-object v2, v2, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->interpreter:Lbsh/Interpreter;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->fixClassLoader:Lme/yxp/qfun/javaplugin/loader/PluginCompiler$FixClassLoader;

    invoke-virtual {v0, p0}, Lbsh/Interpreter;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_46

    :catch_46
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 115
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->itemMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMenuItem(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 119
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginCallback;->menuItemMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startPlugin()V
    .registers 5

    .line 97
    invoke-virtual {p0}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->stopPlugin()V

    .line 98
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    iget-object v0, v0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->loadScript(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->setValues()V

    .line 100
    invoke-direct {p0}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->registerMethod()V

    .line 101
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->interpreter:Lbsh/Interpreter;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->mScript:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    iget-object v3, v3, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "main.java"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbsh/Interpreter;->eval(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    invoke-direct {p0}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->registerCallback()V

    .line 103
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->isRunning:Z

    return-void
.end method

.method public stopPlugin()V
    .registers 2

    .line 107
    invoke-direct {p0}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->removeCallback()V

    .line 108
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    invoke-virtual {v0}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->unLoadPlugin()V

    .line 109
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->itemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 110
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->interpreter:Lbsh/Interpreter;

    invoke-virtual {v0}, Lbsh/Interpreter;->getNameSpace()Lbsh/NameSpace;

    move-result-object v0

    invoke-virtual {v0}, Lbsh/NameSpace;->clear()V

    .line 111
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->isRunning:Z

    return-void
.end method
