.class public Lme/yxp/qfun/utils/dexkit/DexKit;
.super Ljava/lang/Object;
.source "DexKit.java"


# static fields
.field private static sClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$UcTB36gxLsww5apWM220NgbYCmQ(Lorg/luckypray/dexkit/result/ClassData;)Z
    .registers 2

    .line 124
    invoke-virtual {p0}, Lorg/luckypray/dexkit/result/ClassData;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MsgService"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smdoFind()V
    .registers 0

    .line 0
    invoke-static {}, Lme/yxp/qfun/utils/dexkit/DexKit;->doFind()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsaveData()V
    .registers 0

    .line 0
    invoke-static {}, Lme/yxp/qfun/utils/dexkit/DexKit;->saveData()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/yxp/qfun/utils/dexkit/DexKit;->sMethodMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVersion()V
    .registers 1

    .line 40
    invoke-static {}, Lme/yxp/qfun/utils/dexkit/DexKit;->readData()V

    .line 41
    invoke-static {}, Lme/yxp/qfun/utils/dexkit/VersionCheck;->checkVersion()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 42
    invoke-static {}, Lme/yxp/qfun/utils/dexkit/DexKit;->showFindDialog()V

    return-void

    .line 44
    :cond_d
    sget-object v0, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lme/yxp/qfun/utils/dexkit/DexKit;->sMethodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_22

    .line 47
    :cond_1e
    invoke-static {}, Lme/yxp/qfun/hook/MainHook;->hook()V

    return-void

    .line 45
    :cond_22
    :goto_22
    invoke-static {}, Lme/yxp/qfun/utils/dexkit/DexKit;->showFindDialog()V

    return-void
.end method

.method private static doFind()V
    .registers 1

    .line 97
    sget-object v0, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    sget-object v0, Lme/yxp/qfun/utils/dexkit/DexKit;->sMethodMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 100
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lme/yxp/qfun/utils/dexkit/BridgeControler;->initBridge(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lme/yxp/qfun/utils/dexkit/BridgeControler;->getBridge()Lorg/luckypray/dexkit/DexKitBridge;

    move-result-object v0

    .line 104
    :try_start_1b
    invoke-static {v0}, Lme/yxp/qfun/utils/dexkit/DexKit;->findClasses(Lorg/luckypray/dexkit/DexKitBridge;)V

    .line 105
    invoke-static {v0}, Lme/yxp/qfun/utils/dexkit/DexKit;->findMethods(Lorg/luckypray/dexkit/DexKitBridge;)V
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_25

    .line 107
    invoke-static {}, Lme/yxp/qfun/utils/dexkit/BridgeControler;->closeBridge()V

    return-void

    :catchall_25
    move-exception v0

    invoke-static {}, Lme/yxp/qfun/utils/dexkit/BridgeControler;->closeBridge()V

    .line 108
    throw v0
.end method

.method private static findClasses(Lorg/luckypray/dexkit/DexKitBridge;)V
    .registers 8

    .line 113
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    const-string v1, "com.tencent.qqnt.msg"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v0, v2}, Lorg/luckypray/dexkit/query/FindClass;->searchPackages([Ljava/lang/String;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 115
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v2

    .line 116
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;

    move-result-object v3

    .line 118
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    const-string v5, "onAddSendMsg"

    invoke-virtual {v4, v5}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->name(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    .line 119
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v5

    const-string v6, "onRecvMsg"

    invoke-virtual {v5, v6}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->name(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v5

    .line 117
    invoke-static {v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;->methods(Ljava/util/Collection;)Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;

    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->methods(Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v2

    .line 115
    invoke-virtual {v0, v2}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 113
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lme/yxp/qfun/utils/dexkit/DexKit$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lme/yxp/qfun/utils/dexkit/DexKit$$ExternalSyntheticLambda0;-><init>()V

    .line 124
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 125
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    .line 126
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/ClassData;

    if-eqz v0, :cond_6d

    .line 128
    sget-object v2, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/ClassData;->toDexType()Lorg/luckypray/dexkit/wrap/DexClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/wrap/DexClass;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OnMsg"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_6d
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    const-string v2, "com.tencent.mobileqq.aio.input.reply"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v0, v2}, Lorg/luckypray/dexkit/query/FindClass;->searchPackages([Ljava/lang/String;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 134
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v2

    .line 135
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;

    move-result-object v3

    .line 137
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    const-string v5, "onDestroy"

    invoke-virtual {v4, v5}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->name(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    .line 138
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v5

    const-class v6, Ljava/util/Set;

    invoke-virtual {v5, v6}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/Class;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v5

    .line 136
    invoke-static {v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;->methods(Ljava/util/Collection;)Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;

    move-result-object v3

    .line 135
    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->methods(Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v2

    .line 134
    invoke-virtual {v0, v2}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 132
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/ClassData;

    if-eqz v0, :cond_c2

    .line 145
    sget-object v2, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/ClassData;->toDexType()Lorg/luckypray/dexkit/wrap/DexClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/wrap/DexClass;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RemoveReplyAtHook"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_c2
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 150
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v2

    const-string v3, "QWalletHttp-QWalletPbServlet"

    const-string v4, "qwallet_pb_handle_trpc_error"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v2

    .line 152
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;

    move-result-object v3

    .line 154
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    const-string v5, "onReceive"

    invoke-virtual {v4, v5}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->name(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    .line 155
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v5

    const-string v6, "onSend"

    invoke-virtual {v5, v6}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->name(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v5

    .line 153
    invoke-static {v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;->methods(Ljava/util/Collection;)Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;

    move-result-object v3

    .line 152
    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->methods(Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v2

    .line 150
    invoke-virtual {v0, v2}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 149
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/ClassData;

    if-eqz v0, :cond_119

    .line 161
    sget-object v2, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/ClassData;->toDexType()Lorg/luckypray/dexkit/wrap/DexClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/wrap/DexClass;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RedPacketHook"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_119
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    const-string v2, "com.tencent.qqnt.qwallet.bigdata"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v0, v2}, Lorg/luckypray/dexkit/query/FindClass;->searchPackages([Ljava/lang/String;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 167
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v2

    .line 168
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;

    move-result-object v3

    .line 169
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    const-string v5, "onError"

    invoke-virtual {v4, v5}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->name(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v4

    invoke-static {v4}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;->methods(Ljava/util/Collection;)Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;

    move-result-object v3

    .line 168
    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->methods(Lorg/luckypray/dexkit/query/matchers/MethodsMatcher;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v2

    .line 167
    invoke-virtual {v0, v2}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 165
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/ClassData;

    if-eqz v0, :cond_164

    .line 174
    sget-object v2, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/ClassData;->toDexType()Lorg/luckypray/dexkit/wrap/DexClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/wrap/DexClass;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GrabVoiceRedPacket"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_164
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    const-string v2, "com.tencent.mobileqq.aio.msglist.holder.component.avatar"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {v0, v2}, Lorg/luckypray/dexkit/query/FindClass;->searchPackages([Ljava/lang/String;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 180
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v2

    const-class v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->addInterface(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 178
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/ClassData;

    if-eqz v0, :cond_19f

    .line 183
    sget-object v2, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/ClassData;->toDexType()Lorg/luckypray/dexkit/wrap/DexClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/wrap/DexClass;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SimpleTroopManagement"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_19f
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindClass;->searchPackages([Ljava/lang/String;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 189
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    const-string v2, "ArkMsgModel"

    const-string v3, "toAppXml fail, metaList, err="

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/ClassData;

    if-eqz v0, :cond_1da

    .line 193
    sget-object v1, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/ClassData;->toDexType()Lorg/luckypray/dexkit/wrap/DexClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/wrap/DexClass;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CreateElement"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_1da
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    const-string v1, "com.tencent.mobileqq.pskey"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindClass;->searchPackages([Ljava/lang/String;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 199
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    const-string v2, "pskey"

    const-string v3, "puskey"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 197
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/ClassData;

    if-eqz v0, :cond_217

    .line 202
    sget-object v1, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/ClassData;->toDexType()Lorg/luckypray/dexkit/wrap/DexClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/wrap/DexClass;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CookieTool"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_217
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    const-string v1, "com.tencent.qqnt.aio.menu"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {v0, v2}, Lorg/luckypray/dexkit/query/FindClass;->searchPackages([Ljava/lang/String;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 208
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v2

    const-string v3, "CopyMenuItem"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 206
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/ClassData;

    if-eqz v0, :cond_252

    .line 211
    sget-object v2, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/ClassData;->toDexType()Lorg/luckypray/dexkit/wrap/DexClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/wrap/DexClass;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OnMsgMenuOpen"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_252
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    const-string v2, "com.tencent.mobileqq.aio.msglist.msgrepo"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {v0, v2}, Lorg/luckypray/dexkit/query/FindClass;->searchPackages([Ljava/lang/String;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 217
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v2

    const-string v3, "AIOMsgRepo MsgReplyAbility"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 215
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/ClassData;

    if-eqz v0, :cond_28d

    .line 220
    sget-object v2, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/ClassData;->toDexType()Lorg/luckypray/dexkit/wrap/DexClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/wrap/DexClass;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RecordsReplyMsgHook"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_28d
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindClass;->searchPackages([Ljava/lang/String;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 226
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    const-string v2, "ForwardMenuItem"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 224
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/ClassData;

    if-eqz v0, :cond_2c6

    .line 229
    sget-object v1, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/ClassData;->toDexType()Lorg/luckypray/dexkit/wrap/DexClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/wrap/DexClass;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ForwardPttHook"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_2c6
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    const-string v1, "com.tencent.mobileqq.aio.shortcurtbar"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindClass;->searchPackages([Ljava/lang/String;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 236
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    const-string v2, "originList"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    const-string v2, "filterVideoItem"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 234
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/ClassData;

    if-eqz v0, :cond_30b

    .line 241
    sget-object v1, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/ClassData;->toDexType()Lorg/luckypray/dexkit/wrap/DexClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/wrap/DexClass;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RemoveFilterVideoHook"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_30b
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    const-string v1, "com.tencent.mobileqq.setting.processor"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindClass;->searchPackages([Ljava/lang/String;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 246
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    const-string v2, "context"

    const-string v3, "leftText"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 245
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/ClassData;

    if-eqz v0, :cond_348

    .line 250
    sget-object v1, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/ClassData;->toDexType()Lorg/luckypray/dexkit/wrap/DexClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/wrap/DexClass;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QQSettingInjectClass1"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_348
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    const-string v1, "com.tencent.mobileqq.setting.main"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindClass;->searchPackages([Ljava/lang/String;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 255
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    const-string v2, "com.tencent.mobileqq.setting.processor.SettingConfigProvider"

    .line 256
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->superClass(Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    .line 255
    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 254
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/ClassData;

    if-eqz v0, :cond_37f

    .line 259
    sget-object v1, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/ClassData;->toDexType()Lorg/luckypray/dexkit/wrap/DexClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/wrap/DexClass;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QQSettingInjectClass2"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_37f
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    const-string v1, "com.tencent.mobileqq.troop.membersetting.part"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindClass;->searchPackages([Ljava/lang/String;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 264
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    const-string v2, "MemberSettingGroupManagePart"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    .line 264
    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 263
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/ClassData;

    if-eqz v0, :cond_3ba

    .line 268
    sget-object v1, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/ClassData;->toDexType()Lorg/luckypray/dexkit/wrap/DexClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/wrap/DexClass;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TroopTool"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_3ba
    invoke-static {}, Lorg/luckypray/dexkit/query/FindClass;->create()Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    const-string v1, "com.tencent.mobileqq.aio.msglist.holder.component.multifoward"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindClass;->searchPackages([Ljava/lang/String;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 273
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->create()Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    const-string v2, "msgList"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/ClassMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/ClassMatcher;

    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindClass;->matcher(Lorg/luckypray/dexkit/query/matchers/ClassMatcher;)Lorg/luckypray/dexkit/query/FindClass;

    move-result-object v0

    .line 272
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findClass(Lorg/luckypray/dexkit/query/FindClass;)Lorg/luckypray/dexkit/result/ClassDataList;

    move-result-object p0

    .line 275
    invoke-virtual {p0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/luckypray/dexkit/result/ClassData;

    if-eqz p0, :cond_3f5

    .line 277
    sget-object v0, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/luckypray/dexkit/result/ClassData;->toDexType()Lorg/luckypray/dexkit/wrap/DexClass;

    move-result-object p0

    invoke-virtual {p0}, Lorg/luckypray/dexkit/wrap/DexClass;->serialize()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MultiRecallHook"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f5
    return-void
.end method

.method private static findMethods(Lorg/luckypray/dexkit/DexKitBridge;)V
    .registers 5

    .line 286
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    const-string v1, "com.tencent.mobileqq.notification.modularize"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindMethod;->searchPackages([Ljava/lang/String;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 288
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    const-string v2, "TianShuOfflineMsgCenter"

    const-string v3, "deal0x135Msg online:"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    .line 288
    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 286
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/MethodData;

    if-eqz v0, :cond_3d

    .line 292
    sget-object v1, Lme/yxp/qfun/utils/dexkit/DexKit;->sMethodMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/MethodData;->toDexMethod()Lorg/luckypray/dexkit/wrap/DexMethod;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/wrap/DexMethod;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AntiAtAllHook"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_3d
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 297
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    .line 298
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_NtMsgForwardUtils()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->declaredClass(Ljava/lang/Class;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 299
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/Class;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    const-string v2, "startForwardMsgV2 origin_msg_type="

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 296
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/MethodData;

    if-eqz v0, :cond_7c

    .line 303
    sget-object v1, Lme/yxp/qfun/utils/dexkit/DexKit;->sMethodMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/MethodData;->toDexMethod()Lorg/luckypray/dexkit/wrap/DexMethod;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/wrap/DexMethod;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ForwardPttHook"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_7c
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 308
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    .line 309
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_TroopOnlinePushHandler()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->declaredClass(Ljava/lang/Class;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 310
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->returnType(Ljava/lang/Class;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    filled-new-array {v2, v2, v2}, [Ljava/lang/Class;

    move-result-object v2

    .line 311
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->paramTypes([Ljava/lang/Class;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    const-string v2, "handleMemberAdd addMemberUin:"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    .line 308
    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 307
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luckypray/dexkit/result/MethodData;

    if-eqz v0, :cond_c5

    .line 315
    sget-object v1, Lme/yxp/qfun/utils/dexkit/DexKit;->sMethodMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/luckypray/dexkit/result/MethodData;->toDexMethod()Lorg/luckypray/dexkit/wrap/DexMethod;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luckypray/dexkit/wrap/DexMethod;->serialize()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OnTroopJoin"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_c5
    invoke-static {}, Lorg/luckypray/dexkit/query/FindMethod;->create()Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    const-string v1, "com.tencent.mobileqq.aio.msglist.holder.component.msgtail"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindMethod;->searchPackages([Ljava/lang/String;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 320
    invoke-static {}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->create()Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    const-string v2, "chatType is not group"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/luckypray/dexkit/query/matchers/MethodMatcher;->usingStrings([Ljava/lang/String;)Lorg/luckypray/dexkit/query/matchers/MethodMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luckypray/dexkit/query/FindMethod;->matcher(Lorg/luckypray/dexkit/query/matchers/MethodMatcher;)Lorg/luckypray/dexkit/query/FindMethod;

    move-result-object v0

    .line 319
    invoke-virtual {p0, v0}, Lorg/luckypray/dexkit/DexKitBridge;->findMethod(Lorg/luckypray/dexkit/query/FindMethod;)Lorg/luckypray/dexkit/result/MethodDataList;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Lorg/luckypray/dexkit/result/BaseDataList;->singleOrNull()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/luckypray/dexkit/result/MethodData;

    if-eqz p0, :cond_100

    .line 323
    sget-object v0, Lme/yxp/qfun/utils/dexkit/DexKit;->sMethodMap:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/luckypray/dexkit/result/MethodData;->toDexMethod()Lorg/luckypray/dexkit/wrap/DexMethod;

    move-result-object p0

    invoke-virtual {p0}, Lorg/luckypray/dexkit/wrap/DexMethod;->serialize()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RemoveEmoReplyHook"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_100
    return-void
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 329
    new-instance v0, Lorg/luckypray/dexkit/wrap/DexClass;

    sget-object v1, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/luckypray/dexkit/wrap/DexClass;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->getHostClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/luckypray/dexkit/wrap/DexClass;->getInstance(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 3

    .line 334
    new-instance v0, Lorg/luckypray/dexkit/wrap/DexMethod;

    sget-object v1, Lme/yxp/qfun/utils/dexkit/DexKit;->sMethodMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/luckypray/dexkit/wrap/DexMethod;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->getHostClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/luckypray/dexkit/wrap/DexMethod;->getMethodInstance(Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private static readData()V
    .registers 3

    .line 53
    const-string v0, "classMap"

    const-string v1, "dexkit"

    invoke-static {v1, v0}, Lme/yxp/qfun/utils/data/DataUtils;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    const-string v2, "methodMap"

    invoke-static {v1, v2}, Lme/yxp/qfun/utils/data/DataUtils;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_14

    .line 56
    check-cast v0, Ljava/util/Map;

    sput-object v0, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    :cond_14
    if-eqz v1, :cond_1a

    .line 57
    check-cast v1, Ljava/util/Map;

    sput-object v1, Lme/yxp/qfun/utils/dexkit/DexKit;->sMethodMap:Ljava/util/Map;

    :cond_1a
    return-void
.end method

.method private static saveData()V
    .registers 3

    .line 61
    const-string v0, "lastVersionMap"

    invoke-static {}, Lme/yxp/qfun/utils/dexkit/VersionCheck;->getLatestVersionMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "dexkit"

    invoke-static {v2, v0, v1}, Lme/yxp/qfun/utils/data/DataUtils;->serialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    const-string v0, "classMap"

    sget-object v1, Lme/yxp/qfun/utils/dexkit/DexKit;->sClassMap:Ljava/util/Map;

    invoke-static {v2, v0, v1}, Lme/yxp/qfun/utils/data/DataUtils;->serialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const-string v0, "methodMap"

    sget-object v1, Lme/yxp/qfun/utils/dexkit/DexKit;->sMethodMap:Ljava/util/Map;

    invoke-static {v2, v0, v1}, Lme/yxp/qfun/utils/data/DataUtils;->serialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static showFindDialog()V
    .registers 3

    .line 67
    const-string v0, "com.tencent.mobileqq.activity.SplashActivity"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lme/yxp/qfun/utils/dexkit/DexKit$1;

    invoke-direct {v1}, Lme/yxp/qfun/utils/dexkit/DexKit$1;-><init>()V

    const-class v2, Landroid/os/Bundle;

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onCreate"

    invoke-static {v0, v2, v1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;

    return-void
.end method
