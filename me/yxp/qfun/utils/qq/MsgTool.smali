.class public Lme/yxp/qfun/utils/qq/MsgTool;
.super Ljava/lang/Object;
.source "MsgTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;
    }
.end annotation


# static fields
.field private static sGenerateMsgUniqueId:Ljava/lang/reflect/Method;

.field private static sGetMsgsByMsgId:Ljava/lang/reflect/Method;

.field private static sRecallMsg:Ljava/lang/reflect/Method;

.field private static sSendMsg:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$u3MXpTCB3tGVPXdiyE4kFZphxag(Lme/yxp/qfun/javaplugin/api/MsgData;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 107
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->contact:Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/utils/qq/MsgTool;->getMsgsByMsgId(Ljava/lang/Object;JLjava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 34
    :try_start_0
    invoke-static {}, Lme/yxp/qfun/utils/qq/MsgTool;->initMethod()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    .line 36
    const-string v1, "MsgTool"

    invoke-static {v1, v0}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static downloadImageToTemp(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 224
    const-string v0, "temp"

    const-string v1, "temp.jpg"

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/data/DataUtils;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 225
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 228
    :try_start_13
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_3c

    .line 229
    :try_start_17
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_3e

    const/16 v4, 0x400

    .line 230
    :try_start_1f
    new-array v4, v4, [B

    .line 232
    :goto_21
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2e

    .line 233
    invoke-virtual {v2, v4, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_2c

    goto :goto_21

    :catchall_2c
    move-exception v0

    goto :goto_40

    .line 235
    :cond_2e
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3e

    :try_start_31
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 236
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_3c
    move-exception v0

    goto :goto_54

    :catchall_3e
    move-exception v0

    goto :goto_49

    .line 228
    :goto_40
    :try_start_40
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v2

    :try_start_45
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_48
    throw v0
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_3e

    :goto_49
    if-eqz v1, :cond_53

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception v1

    :try_start_50
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_53
    :goto_53
    throw v0
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_3c

    .line 236
    :goto_54
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 237
    throw v0
.end method

.method private static generateMsgUniqueId(I)J
    .registers 5

    .line 296
    sget-object v0, Lme/yxp/qfun/utils/qq/MsgTool;->sGenerateMsgUniqueId:Ljava/lang/reflect/Method;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getKernelMsgservice()Ljava/lang/Object;

    move-result-object v1

    .line 297
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    .line 296
    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMsgsByMsgId(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object p1, Lme/yxp/qfun/utils/qq/MsgTool;->sGetMsgsByMsgId:Ljava/lang/reflect/Method;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getKernelMsgservice()Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p0, v0, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initMethod()V
    .registers 2

    .line 41
    invoke-static {}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->-$$Nest$sminitMethod()V

    .line 43
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_IKernelMsgService$CppProxy()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "recallMsg"

    .line 44
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/MsgTool;->sRecallMsg:Ljava/lang/reflect/Method;

    .line 45
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_IKernelMsgService$CppProxy()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "sendMsg"

    .line 46
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/MsgTool;->sSendMsg:Ljava/lang/reflect/Method;

    .line 47
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_IKernelMsgService$CppProxy()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "generateMsgUniqueId"

    .line 48
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/MsgTool;->sGenerateMsgUniqueId:Ljava/lang/reflect/Method;

    .line 49
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_IKernelMsgService$CppProxy()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "getMsgsByMsgId"

    .line 50
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/MsgTool;->sGetMsgsByMsgId:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static isPrivateChat(Ljava/lang/Object;)Z
    .registers 2

    .line 219
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    const-string v0, "chatType"

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 220
    const-string v0, "1"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static makeContact(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    const/16 v0, 0x64

    if-eq p1, v0, :cond_c

    const/4 p0, 0x0

    goto :goto_10

    .line 288
    :cond_c
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/FriendTool;->getUidFromUin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 292
    :cond_10
    :goto_10
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_Contact()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, ""

    filled-new-array {p1, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static processMessageContent(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-static {p1}, Lme/yxp/qfun/utils/qq/MsgTool;->processMessageParts(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_9e

    goto :goto_53

    :sswitch_33
    const-string v3, "atUin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_53

    :cond_3c
    move v6, v4

    goto :goto_53

    :sswitch_3e
    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    goto :goto_53

    :cond_47
    move v6, v5

    goto :goto_53

    :sswitch_49
    const-string v3, "pic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    goto :goto_53

    :cond_52
    const/4 v6, 0x0

    :goto_53
    packed-switch v6, :pswitch_data_ac

    goto :goto_76

    .line 196
    :pswitch_57  #0x2
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/MsgTool;->isPrivateChat(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    .line 197
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    move v4, v5

    .line 198
    :cond_66
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    goto :goto_71

    :cond_6d
    invoke-static {v1}, Lme/yxp/qfun/utils/qq/FriendTool;->getUidFromUin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    :goto_71
    invoke-static {v2, v4}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->-$$Nest$smcreateAtTextElement(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_96

    :cond_76
    :goto_76
    const/4 v1, 0x0

    goto :goto_96

    .line 193
    :pswitch_78  #0x1
    invoke-static {v1}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->-$$Nest$smcreateTextElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_96

    .line 203
    :pswitch_7d  #0x0
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 204
    invoke-static {v1}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->-$$Nest$smcreatePicElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_96

    .line 206
    :cond_8a
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/yxp/qfun/utils/qq/MsgTool;->downloadImageToTemp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v1}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->-$$Nest$smcreatePicElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_96
    if-eqz v1, :cond_d

    .line 212
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_9d
    return-object v0

    :sswitch_data_9e
    .sparse-switch
        0x1b18a -> :sswitch_49
        0x36452d -> :sswitch_3e
        0x58cef27 -> :sswitch_33
    .end sparse-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_7d  #00000000
        :pswitch_78  #00000001
        :pswitch_57  #00000002
    .end packed-switch
.end method

.method private static processMessageParts(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 242
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/MsgTool;->splitMessageString(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    const-string v1, "\\[(atUin|pic)=([^]]*)]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 246
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 247
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "text"

    if-eqz v3, :cond_57

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 248
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 249
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 250
    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 252
    :cond_4e
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v3, v4, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 255
    :cond_57
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v3, v4, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_60
    return-object v0
.end method

.method public static recallMsg(ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-static {p1, p0}, Lme/yxp/qfun/utils/qq/MsgTool;->makeContact(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p2}, Lme/yxp/qfun/utils/qq/MsgTool;->recallMsg(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static recallMsg(Ljava/lang/Object;J)V
    .registers 4

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {p0, v0}, Lme/yxp/qfun/utils/qq/MsgTool;->recallMsg(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static recallMsg(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 65
    sget-object v0, Lme/yxp/qfun/utils/qq/MsgTool;->sRecallMsg:Ljava/lang/reflect/Method;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getKernelMsgservice()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    filled-new-array {p0, p1, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static repeatByMsgRecord(Lme/yxp/qfun/javaplugin/api/MsgData;)V
    .registers 7

    .line 81
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->data:Ljava/lang/Object;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v1, "elements"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 82
    iget-object v1, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->data:Ljava/lang/Object;

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    const-string v2, "msgAttrs"

    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 83
    iget v2, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->type:I

    invoke-static {v2}, Lme/yxp/qfun/utils/qq/MsgTool;->generateMsgUniqueId(I)J

    move-result-wide v2

    .line 84
    sget-object v4, Lme/yxp/qfun/utils/qq/MsgTool;->sSendMsg:Ljava/lang/reflect/Method;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getKernelMsgservice()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->contact:Ljava/lang/Object;

    const/4 v3, 0x0

    filled-new-array {v2, p0, v0, v1, v3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, v5, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static sendCard(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-static {p1}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->-$$Nest$smcreateArkElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {p0, v0}, Lme/yxp/qfun/utils/qq/MsgTool;->sendMsg(Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public static sendCard(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 3

    .line 136
    invoke-static {p0, p2}, Lme/yxp/qfun/utils/qq/MsgTool;->makeContact(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/MsgTool;->sendCard(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static sendFile(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-static {p1}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->-$$Nest$smcreateFileElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-static {p0, v0}, Lme/yxp/qfun/utils/qq/MsgTool;->sendMsg(Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public static sendFile(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 3

    .line 158
    invoke-static {p0, p2}, Lme/yxp/qfun/utils/qq/MsgTool;->makeContact(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/MsgTool;->sendFile(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static sendMsg(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 89
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/MsgTool;->processMessageContent(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 90
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/MsgTool;->sendMsg(Ljava/lang/Object;Ljava/util/List;)V

    :cond_d
    return-void
.end method

.method public static sendMsg(Ljava/lang/Object;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v1, "chatType"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 71
    invoke-static {v0}, Lme/yxp/qfun/utils/qq/MsgTool;->generateMsgUniqueId(I)J

    move-result-wide v0

    .line 72
    sget-object v2, Lme/yxp/qfun/utils/qq/MsgTool;->sSendMsg:Ljava/lang/reflect/Method;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getKernelMsgservice()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    filled-new-array {v0, p0, p1, v1, v4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static sendMsg(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 3

    .line 76
    invoke-static {p0, p2}, Lme/yxp/qfun/utils/qq/MsgTool;->makeContact(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/MsgTool;->sendMsg(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static sendPic(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-static {p1}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->-$$Nest$smcreatePicElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {p0, v0}, Lme/yxp/qfun/utils/qq/MsgTool;->sendMsg(Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public static sendPic(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 3

    .line 116
    invoke-static {p0, p2}, Lme/yxp/qfun/utils/qq/MsgTool;->makeContact(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/MsgTool;->sendPic(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static sendPtt(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-static {p1}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->-$$Nest$smcreatePttElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-static {p0, v0}, Lme/yxp/qfun/utils/qq/MsgTool;->sendMsg(Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public static sendPtt(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 3

    .line 126
    invoke-static {p0, p2}, Lme/yxp/qfun/utils/qq/MsgTool;->makeContact(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/MsgTool;->sendPtt(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static sendReplyMsg(Ljava/lang/Object;JLjava/lang/String;)V
    .registers 5

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-static {p1, p2}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->-$$Nest$smcreateReplyElement(J)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static {p0, p3}, Lme/yxp/qfun/utils/qq/MsgTool;->processMessageContent(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 176
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    invoke-static {p0, v0}, Lme/yxp/qfun/utils/qq/MsgTool;->sendMsg(Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public static sendReplyMsg(Ljava/lang/String;JLjava/lang/String;I)V
    .registers 5

    .line 168
    invoke-static {p0, p4}, Lme/yxp/qfun/utils/qq/MsgTool;->makeContact(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/utils/qq/MsgTool;->sendReplyMsg(Ljava/lang/Object;JLjava/lang/String;)V

    return-void
.end method

.method public static sendTextWithInterface(Lme/yxp/qfun/javaplugin/api/MsgData;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .line 97
    const-string v0, "com.tencent.qqnt.kernel.nativeinterface.IOperateCallback"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-static {p1}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->-$$Nest$smcreateTextElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget p1, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->type:I

    invoke-static {p1}, Lme/yxp/qfun/utils/qq/MsgTool;->generateMsgUniqueId(I)J

    move-result-wide v2

    .line 105
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->getHostClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    new-instance v4, Lme/yxp/qfun/utils/qq/MsgTool$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, v3, p2}, Lme/yxp/qfun/utils/qq/MsgTool$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/javaplugin/api/MsgData;JLjava/lang/Object;)V

    invoke-static {p1, v0, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    .line 111
    sget-object p2, Lme/yxp/qfun/utils/qq/MsgTool;->sSendMsg:Ljava/lang/reflect/Method;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getKernelMsgservice()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->contact:Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    filled-new-array {v2, p0, v1, v3, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static sendVideo(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-static {p1}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->-$$Nest$smcreateVideoElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 153
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static {p0, v0}, Lme/yxp/qfun/utils/qq/MsgTool;->sendMsg(Ljava/lang/Object;Ljava/util/List;)V

    return-void

    .line 152
    :cond_12
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "视频路径有误或无访问权限"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sendVideo(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 3

    .line 146
    invoke-static {p0, p2}, Lme/yxp/qfun/utils/qq/MsgTool;->makeContact(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/MsgTool;->sendVideo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static splitMessageString(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    const-string v1, "\\[atUin=\\d+]|\\[pic=.*?]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 264
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    .line 267
    :goto_10
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 268
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 269
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    if-le v3, v2, :cond_27

    .line 272
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_27
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_10

    .line 279
    :cond_30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_3d

    .line 280
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    return-object v0
.end method
