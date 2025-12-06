.class public Lme/yxp/qfun/hook/MainHook;
.super Ljava/lang/Object;
.source "MainHook.java"


# static fields
.field private static final ACTION_INIT:Ljava/lang/String; = "init"

.field private static final ACTION_SAVE:Ljava/lang/String; = "save"

.field public static final DATA_KEY_ENABLE:Ljava/lang/String; = "Enable"

.field public static Enable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static HookItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme/yxp/qfun/hook/base/BaseSwitchHookItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6WE8SI4Cgsx3V86RQk9LBSZoU3c(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 1

    .line 84
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 85
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->setCurrentEnv(Ljava/lang/Object;)V

    .line 86
    invoke-static {}, Lme/yxp/qfun/hook/MainHook;->onAccountChange()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lme/yxp/qfun/hook/MainHook;->HookItems:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/yxp/qfun/hook/MainHook;->Enable:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hook()V
    .registers 3

    .line 74
    invoke-static {}, Lme/yxp/qfun/hook/MainHook;->initEntry()V

    .line 75
    invoke-static {}, Lme/yxp/qfun/hook/MainHook;->loadApiHook()V

    .line 76
    invoke-static {}, Lme/yxp/qfun/hook/MainHook;->initHookItem()V

    .line 77
    invoke-static {}, Lme/yxp/qfun/javaplugin/MainPlugin;->initView()V

    .line 79
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_QQAppInterface()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "onCreateQQMessageFacade"

    .line 80
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 83
    new-instance v1, Lme/yxp/qfun/hook/MainHook$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lme/yxp/qfun/hook/MainHook$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lme/yxp/qfun/utils/hook/HookUtils;->hookAlways(Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method

.method private static hookItemData(Ljava/lang/String;)V
    .registers 4

    .line 196
    sget-object v0, Lme/yxp/qfun/hook/MainHook;->HookItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

    .line 197
    instance-of v2, v1, Lme/yxp/qfun/hook/base/BaseWithDataHookItem;

    if-eqz v2, :cond_6

    iget-boolean v2, v1, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->isAvailable:Z

    if-nez v2, :cond_1b

    goto :goto_6

    .line 201
    :cond_1b
    check-cast v1, Lme/yxp/qfun/hook/base/BaseWithDataHookItem;

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "init"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "save"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_6

    .line 207
    :cond_31
    invoke-virtual {v1}, Lme/yxp/qfun/hook/base/BaseWithDataHookItem;->savaData()V

    goto :goto_6

    .line 204
    :cond_35
    invoke-virtual {v1}, Lme/yxp/qfun/hook/base/BaseWithDataHookItem;->initData()V

    goto :goto_6

    :cond_39
    return-void
.end method

.method public static initData()V
    .registers 1

    .line 97
    invoke-static {}, Lme/yxp/qfun/hook/MainHook;->initEnable()V

    .line 98
    const-string v0, "init"

    invoke-static {v0}, Lme/yxp/qfun/hook/MainHook;->hookItemData(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lme/yxp/qfun/hook/MainHook;->updateHook()V

    return-void
.end method

.method private static initEnable()V
    .registers 4

    .line 165
    const-string v0, "data"

    const-string v1, "Enable"

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/data/DataUtils;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_28

    .line 167
    sget-object v0, Lme/yxp/qfun/hook/MainHook;->HookItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

    .line 168
    sget-object v2, Lme/yxp/qfun/hook/MainHook;->Enable:Ljava/util/Map;

    invoke-virtual {v1}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 171
    :cond_28
    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lme/yxp/qfun/hook/MainHook;->Enable:Ljava/util/Map;

    .line 172
    sget-object v0, Lme/yxp/qfun/hook/MainHook;->HookItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_32
    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

    .line 173
    sget-object v2, Lme/yxp/qfun/hook/MainHook;->Enable:Ljava/util/Map;

    invoke-virtual {v1}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 174
    sget-object v2, Lme/yxp/qfun/hook/MainHook;->Enable:Ljava/util/Map;

    invoke-virtual {v1}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_56
    return-void
.end method

.method private static initEntry()V
    .registers 2

    .line 104
    :try_start_0
    invoke-static {}, Lme/yxp/qfun/hook/entry/QQSettingInject;->hook()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception v0

    .line 106
    const-string v1, "QQSettingInject"

    invoke-static {v1, v0}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :goto_a
    :try_start_a
    invoke-static {}, Lme/yxp/qfun/hook/entry/QQHomeInject;->hook()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    goto :goto_14

    :catchall_e
    move-exception v0

    .line 112
    const-string v1, "QQHomeInject"

    invoke-static {v1, v0}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_14
    return-void
.end method

.method public static initHookItem()V
    .registers 35

    .line 117
    const-class v33, Lme/yxp/qfun/hook/purify/RemoveEmoReplyHook;

    const-class v34, Lme/yxp/qfun/hook/chat/ShowAtTargetHook;

    const-class v2, Lme/yxp/qfun/hook/troop/TroopClockInHook;

    const-class v3, Lme/yxp/qfun/hook/social/AutoKeepSparkHook;

    const-class v4, Lme/yxp/qfun/hook/msg/RevokeMsgHook;

    const-class v5, Lme/yxp/qfun/hook/social/PaiYiPaiHook;

    const-class v6, Lme/yxp/qfun/hook/msg/RepeatMsgHook;

    const-class v7, Lme/yxp/qfun/hook/chat/MsgTimeHook;

    const-class v8, Lme/yxp/qfun/hook/msg/FlashPicHook;

    const-class v9, Lme/yxp/qfun/hook/msg/PicSummaryHook;

    const-class v10, Lme/yxp/qfun/hook/browser/RemoveRiskWebpageBlockHook;

    const-class v11, Lme/yxp/qfun/hook/msg/RandomFaceHook;

    const-class v12, Lme/yxp/qfun/hook/troop/AntiAtAllHook;

    const-class v13, Lme/yxp/qfun/hook/redpacket/RedPacketHook;

    const-class v14, Lme/yxp/qfun/hook/msg/MsgContentHook;

    const-class v15, Lme/yxp/qfun/hook/social/OneClickLikeHook;

    const-class v16, Lme/yxp/qfun/hook/qrcode/LiftQRCodeLimitHook;

    const-class v17, Lme/yxp/qfun/hook/qrcode/SkipWaitTimeHook;

    const-class v18, Lme/yxp/qfun/hook/file/AutoRemarkApkHook;

    const-class v19, Lme/yxp/qfun/hook/chat/RemoveReplyAtHook;

    const-class v20, Lme/yxp/qfun/hook/device/TabletModeHook;

    const-class v21, Lme/yxp/qfun/hook/troop/SimpleTroopManagement;

    const-class v22, Lme/yxp/qfun/hook/chat/DefaultBubbleAndFontHook;

    const-class v23, Lme/yxp/qfun/hook/msg/EmotionToPicHook;

    const-class v24, Lme/yxp/qfun/hook/file/AutoSendOriginalPicHook;

    const-class v25, Lme/yxp/qfun/hook/msg/RecordsReplyMsgHook;

    const-class v26, Lme/yxp/qfun/hook/chat/ForwardPttHook;

    const-class v27, Lme/yxp/qfun/hook/file/DownloadTimesHook;

    const-class v28, Lme/yxp/qfun/hook/device/CustomDeviceHook;

    const-class v29, Lme/yxp/qfun/hook/purify/AntiInteractivePopHook;

    const-class v30, Lme/yxp/qfun/hook/purify/RemoveFilterVideoHook;

    const-class v31, Lme/yxp/qfun/hook/purify/AntiLinkPreviewHook;

    const-class v32, Lme/yxp/qfun/hook/chat/MultiRecallHook;

    filled-new-array/range {v2 .. v34}, [Ljava/lang/Class;

    move-result-object v1

    const/4 v0, 0x0

    move v2, v0

    :goto_48
    const/16 v0, 0x21

    if-ge v2, v0, :cond_65

    .line 131
    aget-object v0, v1, v2

    .line 132
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->getHookItem(Ljava/lang/Class;)Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

    move-result-object v3

    if-nez v3, :cond_55

    goto :goto_62

    .line 138
    :cond_55
    :try_start_55
    invoke-virtual {v3}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->init()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception v0

    .line 140
    invoke-static {v3, v0}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    .line 142
    :goto_5d
    sget-object v0, Lme/yxp/qfun/hook/MainHook;->HookItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_65
    return-void
.end method

.method private static loadApiHook()V
    .registers 10

    .line 147
    const-class v8, Lme/yxp/qfun/hook/api/OnPaiYiPai;

    const-class v9, Lme/yxp/qfun/hook/api/OnGetMsgRecord;

    const-class v0, Lme/yxp/qfun/hook/api/OnSendMsg;

    const-class v1, Lme/yxp/qfun/hook/api/OnAIOViewUpdate;

    const-class v2, Lme/yxp/qfun/hook/api/OnRKey;

    const-class v3, Lme/yxp/qfun/hook/api/OnMsg;

    const-class v4, Lme/yxp/qfun/hook/api/OnTroopJoin;

    const-class v5, Lme/yxp/qfun/hook/api/OnTroopQuit;

    const-class v6, Lme/yxp/qfun/hook/api/OnTroopShutUp;

    const-class v7, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Class;

    move-result-object v1

    const/4 v0, 0x0

    move v2, v0

    :goto_1a
    const/16 v0, 0xa

    if-ge v2, v0, :cond_3c

    .line 154
    aget-object v3, v1, v2

    .line 156
    :try_start_20
    const-string v0, "INSTANCE"

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/yxp/qfun/hook/base/ApiHookItem;

    .line 157
    invoke-virtual {v0}, Lme/yxp/qfun/hook/base/ApiHookItem;->loadHook()V
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_31

    goto :goto_39

    :catchall_31
    move-exception v0

    .line 159
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_3c
    return-void
.end method

.method private static onAccountChange()V
    .registers 0

    .line 181
    invoke-static {}, Lme/yxp/qfun/hook/MainHook;->initData()V

    .line 182
    invoke-static {}, Lme/yxp/qfun/javaplugin/MainPlugin;->initPlugins()V

    return-void
.end method

.method public static savaData()V
    .registers 3

    .line 91
    invoke-static {}, Lme/yxp/qfun/hook/MainHook;->updateHook()V

    .line 92
    const-string v0, "Enable"

    sget-object v1, Lme/yxp/qfun/hook/MainHook;->Enable:Ljava/util/Map;

    const-string v2, "data"

    invoke-static {v2, v0, v1}, Lme/yxp/qfun/utils/data/DataUtils;->serialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string v0, "save"

    invoke-static {v0}, Lme/yxp/qfun/hook/MainHook;->hookItemData(Ljava/lang/String;)V

    return-void
.end method

.method private static updateHook()V
    .registers 4

    .line 186
    sget-object v0, Lme/yxp/qfun/hook/MainHook;->HookItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

    .line 187
    sget-object v2, Lme/yxp/qfun/hook/MainHook;->Enable:Ljava/util/Map;

    invoke-virtual {v1}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-boolean v2, v1, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->isAvailable:Z

    if-eqz v2, :cond_2c

    .line 188
    invoke-virtual {v1}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->startHook()V

    goto :goto_6

    .line 190
    :cond_2c
    invoke-virtual {v1}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->stopHook()V

    goto :goto_6

    :cond_30
    return-void
.end method
