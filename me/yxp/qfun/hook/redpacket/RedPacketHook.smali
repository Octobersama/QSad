.class public final Lme/yxp/qfun/hook/redpacket/RedPacketHook;
.super Lme/yxp/qfun/hook/base/BaseWithDataHookItem;
.source "RedPacketHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "自动抢红包"
    desc = "点击可设置一些参数"
.end annotation


# instance fields
.field public Servlet:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/yxp/qfun/utils/data/TernaryDataList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private commonHbConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

.field private onClick:Lme/yxp/qfun/hook/api/OnMsgMenuOpen$OnMsgMenuClickListener;

.field private onReceiveRedPacket:Lme/yxp/qfun/hook/api/OnMsg$MsgListener;

.field public startServlet:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$4jTIl1Pg8F2NUDEALZoKBipifuQ(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->lambda$onClick$2(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AydYbGJH___t9CwNxRVEUfJMCs8(Lme/yxp/qfun/javaplugin/api/MsgData;IILjava/lang/String;)V
    .registers 11

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    iget-object v1, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    invoke-static {v1}, Lme/yxp/qfun/utils/qq/TroopTool;->getTroopInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    const-string v2, "troopNameFromNT"

    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    .line 297
    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_31

    const/16 v3, 0x20

    if-eq p1, v3, :cond_2e

    const/high16 v3, 0x10000

    if-eq p1, v3, :cond_2b

    .line 303
    const-string p1, ""

    goto :goto_33

    .line 302
    :cond_2b
    const-string p1, "语音红包"

    goto :goto_33

    .line 301
    :cond_2e
    const-string p1, "口令红包"

    goto :goto_33

    .line 300
    :cond_31
    const-string p1, "拼手气或普通红包"

    .line 306
    :goto_33
    iget-wide v3, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->time:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    .line 307
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v3

    .line 308
    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v4}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v4

    .line 309
    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v3

    .line 311
    const-string v4, "[QFun]未领取红包:\n[红包类型:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string p1, "]\n[群聊:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    iget-object v1, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v1, ")]\n[发送者:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v1, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    iget-object v4, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    invoke-static {v1, v4}, Lme/yxp/qfun/utils/qq/TroopTool;->getMemberName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string p0, ")]\n[发送时间:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string p0, "]\n[原因:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 325
    const-string p1, "->"

    if-nez p2, :cond_aa

    .line 327
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p0, p2, p0

    .line 328
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    .line 330
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string p0, " 包含关键词 "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cd

    :cond_aa
    if-ne p2, v2, :cond_cd

    .line 336
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p0, p2, p0

    .line 337
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    .line 339
    const-string p2, "实际平均金额"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string p0, "分低于预期平均金额"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string p0, "分"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_cd
    :goto_cd
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lme/yxp/qfun/utils/qq/MsgTool;->sendMsg(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RtrYONJ0OfMEsWHUekMSSD1_4kw(Ljava/lang/String;)Z
    .registers 1

    .line 246
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$eOgDrL8bopvlectcfziB30JehGM(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/content/DialogInterface;I)V
    .registers 13

    .line 0
    invoke-direct/range {p0 .. p12}, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->lambda$onClick$3(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gNu_umGf7cYZJF4zeU-IhaSM2Qg(Ljava/lang/String;)Z
    .registers 1

    .line 254
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$q6myZm9wkPPHmFciGLN7EBYuKtM(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->lambda$initCallback$0(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vxSEHRXrPVWx4BojE8mhrZf99bo(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Lme/yxp/qfun/javaplugin/api/MsgData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->lambda$initCallback$1(Lme/yxp/qfun/javaplugin/api/MsgData;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseWithDataHookItem;-><init>()V

    .line 53
    new-instance v0, Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-direct {v0}, Lme/yxp/qfun/utils/data/TernaryDataList;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->commonHbConfig:Ljava/util/Map;

    return-void
.end method

.method private grabHb(Lme/yxp/qfun/javaplugin/api/MsgData;Z)V
    .registers 14

    .line 207
    iget v0, p1, Lme/yxp/qfun/javaplugin/api/MsgData;->msgType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_107

    iget v0, p1, Lme/yxp/qfun/javaplugin/api/MsgData;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    goto/16 :goto_107

    .line 209
    :cond_d
    iget-object v0, p1, Lme/yxp/qfun/javaplugin/api/MsgData;->data:Ljava/lang/Object;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v1, "elements"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 210
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 211
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v2, "walletElement"

    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    const-string v3, "receiver"

    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 213
    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 214
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    const-string v3, "billNo"

    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 215
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    const-string v3, "authkey"

    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 216
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v2, "redChannel"

    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v0, 0x400

    if-ne v8, v0, :cond_90

    goto/16 :goto_107

    .line 221
    :cond_90
    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    iget-object v0, v0, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    iget-object v2, p1, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    if-eqz p2, :cond_9f

    goto :goto_107

    .line 227
    :cond_9f
    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    const-string v2, "keywords"

    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/data/TernaryDataList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v3, ""

    move v4, v1

    :cond_b0
    :goto_b0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 228
    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b0

    iget-object v10, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v10, v2}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b0

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    goto :goto_b0

    :cond_e0
    if-eqz v4, :cond_fc

    if-eqz p2, :cond_fc

    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1, v8}, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->sendReasonMsg(Lme/yxp/qfun/javaplugin/api/MsgData;Ljava/lang/String;II)V

    return-void

    .line 238
    :cond_fc
    new-instance v3, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;

    invoke-direct {v3}, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;-><init>()V

    move-object v4, p0

    move-object v9, p1

    move v10, p2

    invoke-virtual/range {v3 .. v10}, Lme/yxp/qfun/hook/redpacket/PreGrabRedPacket;->preGrabHb(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILme/yxp/qfun/javaplugin/api/MsgData;Z)V

    :cond_107
    :goto_107
    return-void
.end method

.method private synthetic lambda$initCallback$0(Ljava/lang/Object;)V
    .registers 4

    .line 85
    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->commonHbConfig:Ljava/util/Map;

    const-string v1, "isAuto"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 87
    :cond_11
    new-instance v0, Lme/yxp/qfun/javaplugin/api/MsgData;

    invoke-direct {v0, p1}, Lme/yxp/qfun/javaplugin/api/MsgData;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 88
    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->grabHb(Lme/yxp/qfun/javaplugin/api/MsgData;Z)V

    return-void
.end method

.method private synthetic lambda$initCallback$1(Lme/yxp/qfun/javaplugin/api/MsgData;)V
    .registers 3

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->grabHb(Lme/yxp/qfun/javaplugin/api/MsgData;Z)V

    return-void
.end method

.method private synthetic lambda$onClick$2(Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    .line 168
    new-instance p2, Lme/yxp/qfun/utils/ui/EnableDialog;

    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-direct {p2, p1, p0}, Lme/yxp/qfun/utils/ui/EnableDialog;-><init>(Landroid/content/Context;Lme/yxp/qfun/utils/qq/EnableInfo;)V

    invoke-virtual {p2}, Lme/yxp/qfun/utils/ui/EnableDialog;->show()V

    return-void
.end method

.method private synthetic lambda$onClick$3(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/content/DialogInterface;I)V
    .registers 15

    .line 185
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 187
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 188
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    .line 191
    iget-object p11, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p12

    if-eqz p12, :cond_2a

    const/4 p1, 0x0

    goto :goto_2e

    :cond_2a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_2e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p12, "average"

    invoke-virtual {p11, p12, p1}, Lme/yxp/qfun/utils/data/TernaryDataList;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    iget-object p1, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p11

    if-eqz p11, :cond_42

    const-wide/16 v0, 0x0

    goto :goto_46

    :cond_42
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_46
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p11, "delay"

    invoke-virtual {p1, p11, p4}, Lme/yxp/qfun/utils/data/TernaryDataList;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    iget-object p1, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-direct {p0, p2}, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->splitStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    const-string p4, "keywords"

    invoke-virtual {p1, p4, p2}, Lme/yxp/qfun/utils/data/TernaryDataList;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    iget-object p1, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-direct {p0, p3}, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->splitStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    const-string p3, "replys"

    invoke-virtual {p1, p3, p2}, Lme/yxp/qfun/utils/data/TernaryDataList;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    iget-object p1, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {p5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p12, p2}, Lme/yxp/qfun/utils/data/TernaryDataList;->setIsAvailable(Ljava/lang/String;Z)V

    .line 197
    iget-object p1, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {p6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p11, p2}, Lme/yxp/qfun/utils/data/TernaryDataList;->setIsAvailable(Ljava/lang/String;Z)V

    .line 198
    iget-object p1, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {p7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p4, p2}, Lme/yxp/qfun/utils/data/TernaryDataList;->setIsAvailable(Ljava/lang/String;Z)V

    .line 199
    iget-object p1, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {p8}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p3, p2}, Lme/yxp/qfun/utils/data/TernaryDataList;->setIsAvailable(Ljava/lang/String;Z)V

    .line 200
    iget-object p1, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->commonHbConfig:Ljava/util/Map;

    invoke-virtual {p9}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "isAuto"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->commonHbConfig:Ljava/util/Map;

    invoke-virtual {p10}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "isManual"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private listToCommaSeparatedString(Ljava/util/List;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_35

    .line 243
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_35

    .line 246
    :cond_9
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string p1, ","

    .line 247
    invoke-static {p1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 244
    :cond_35
    :goto_35
    const-string p0, ""

    return-object p0
.end method

.method private splitStringToList(Ljava/lang/String;)Ljava/util/List;
    .registers 2
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

    if-eqz p1, :cond_30

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_30

    .line 254
    :cond_9
    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 252
    :cond_30
    :goto_30
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public add4byte([B)[B
    .registers 4

    .line 258
    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_33

    .line 259
    :try_start_5
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1e

    .line 260
    :try_start_a
    array-length v1, p1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 261
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 262
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_20

    .line 263
    :try_start_17
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1e

    :try_start_1a
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_33

    return-object p1

    :catchall_1e
    move-exception p1

    goto :goto_2a

    :catchall_20
    move-exception p1

    .line 258
    :try_start_21
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception v0

    :try_start_26
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_29
    throw p1
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_1e

    :goto_2a
    :try_start_2a
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception p0

    :try_start_2f
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw p1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_33

    :catch_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public initCallback()V
    .registers 3

    .line 81
    new-instance v0, Lme/yxp/qfun/utils/qq/EnableInfo$TroopEnableInfo;

    const-string v1, "HbWhitelist"

    invoke-direct {v0, v1}, Lme/yxp/qfun/utils/qq/EnableInfo$TroopEnableInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    .line 83
    new-instance v0, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda2;-><init>(Lme/yxp/qfun/hook/redpacket/RedPacketHook;)V

    iput-object v0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->onReceiveRedPacket:Lme/yxp/qfun/hook/api/OnMsg$MsgListener;

    .line 92
    new-instance v0, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda3;-><init>(Lme/yxp/qfun/hook/redpacket/RedPacketHook;)V

    iput-object v0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->onClick:Lme/yxp/qfun/hook/api/OnMsgMenuOpen$OnMsgMenuClickListener;

    return-void
.end method

.method public initData()V
    .registers 6

    const/4 v0, 0x0

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 118
    const-string v2, "AutoGrabHbConfig"

    const-string v3, "data"

    invoke-static {v3, v2}, Lme/yxp/qfun/utils/data/DataUtils;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 120
    check-cast v2, Lme/yxp/qfun/utils/data/TernaryDataList;

    iput-object v2, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    .line 122
    :cond_13
    iget-object v2, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    const-string v4, "average"

    invoke-virtual {v2, v4, v1, v0}, Lme/yxp/qfun/utils/data/TernaryDataList;->add(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 123
    iget-object v2, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    const-string v4, "delay"

    invoke-virtual {v2, v4, v1, v0}, Lme/yxp/qfun/utils/data/TernaryDataList;->add(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 124
    iget-object v1, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "keywords"

    invoke-virtual {v1, v4, v2, v0}, Lme/yxp/qfun/utils/data/TernaryDataList;->add(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 125
    iget-object v1, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "replys"

    invoke-virtual {v1, v4, v2, v0}, Lme/yxp/qfun/utils/data/TernaryDataList;->add(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 127
    const-string v0, "CommonHbConfig"

    invoke-static {v3, v0}, Lme/yxp/qfun/utils/data/DataUtils;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 129
    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->commonHbConfig:Ljava/util/Map;

    goto :goto_56

    .line 131
    :cond_46
    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->commonHbConfig:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "isAuto"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->commonHbConfig:Ljava/util/Map;

    const-string v2, "isManual"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :goto_56
    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-virtual {p0}, Lme/yxp/qfun/utils/qq/EnableInfo;->initInfo()V

    return-void
.end method

.method public initMethod()Z
    .registers 3

    .line 66
    invoke-static {}, Lme/yxp/qfun/hook/redpacket/GrabCommandRedPacket;->initMethod()V

    .line 68
    invoke-static {}, Lme/yxp/qfun/hook/redpacket/GrabVoiceRedPacket;->initMethod()V

    .line 70
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AppRuntime()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "startServlet"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->startServlet:Ljava/lang/reflect/Method;

    .line 72
    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/dexkit/DexKit;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->Servlet:Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 20

    move-object/from16 v1, p0

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 150
    iget-object v2, v1, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-virtual {v2}, Lme/yxp/qfun/utils/qq/EnableInfo;->updateInfo()V

    .line 152
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lme/yxp/qfun/R$layout;->redpacketmenu:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 154
    sget v3, Lme/yxp/qfun/R$id;->whitelistGroupButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 156
    sget v4, Lme/yxp/qfun/R$id;->averageEditText:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 157
    sget v5, Lme/yxp/qfun/R$id;->keywordEditText:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 158
    sget v6, Lme/yxp/qfun/R$id;->replyEditText:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 159
    sget v7, Lme/yxp/qfun/R$id;->delayEditText:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 161
    sget v8, Lme/yxp/qfun/R$id;->averageSwitch:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    .line 162
    sget v9, Lme/yxp/qfun/R$id;->keywordSwitch:I

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Switch;

    .line 163
    sget v10, Lme/yxp/qfun/R$id;->replySwitch:I

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Switch;

    .line 164
    sget v11, Lme/yxp/qfun/R$id;->delaySwitch:I

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Switch;

    .line 165
    sget v12, Lme/yxp/qfun/R$id;->autoSwitch:I

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Switch;

    .line 166
    sget v13, Lme/yxp/qfun/R$id;->manualSwitch:I

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Switch;

    .line 168
    new-instance v14, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda7;

    invoke-direct {v14, v1, v0}, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda7;-><init>(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Landroid/content/Context;)V

    invoke-virtual {v3, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v3, v1, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    const-string v14, "average"

    invoke-virtual {v3, v14}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 171
    iget-object v3, v1, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    const-string v15, "delay"

    invoke-virtual {v3, v15}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v11, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 172
    iget-object v3, v1, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    move-object/from16 p1, v8

    const-string v8, "keywords"

    invoke-virtual {v3, v8}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v9, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 173
    iget-object v3, v1, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    move-object/from16 v16, v9

    const-string v9, "replys"

    invoke-virtual {v3, v9}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v10, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 174
    iget-object v3, v1, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->commonHbConfig:Ljava/util/Map;

    move-object/from16 v17, v10

    const-string v10, "isAuto"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v12, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 175
    iget-object v3, v1, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->commonHbConfig:Ljava/util/Map;

    const-string v10, "isManual"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v13, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 177
    iget-object v3, v1, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v3, v14}, Lme/yxp/qfun/utils/data/TernaryDataList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v3, v1, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v3, v15}, Lme/yxp/qfun/utils/data/TernaryDataList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v3, v1, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v3, v8}, Lme/yxp/qfun/utils/data/TernaryDataList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v1, v3}, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->listToCommaSeparatedString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v3, v1, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v3, v9}, Lme/yxp/qfun/utils/data/TernaryDataList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v1, v3}, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->listToCommaSeparatedString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    new-instance v3, Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x5

    invoke-direct {v3, v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v0, "设置参数"

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    new-instance v0, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda8;

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v7, v11

    move-object v10, v12

    move-object v11, v13

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v11}, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda8;-><init>(Lme/yxp/qfun/hook/redpacket/RedPacketHook;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;)V

    .line 183
    const-string v1, "确定"

    invoke-virtual {v14, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public processMap(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 271
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 275
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 276
    const-string v2, "&"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_2c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 283
    :cond_44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    return-object p0

    .line 285
    :catch_49
    const-string p0, ""

    return-object p0
.end method

.method public savaData()V
    .registers 4

    .line 141
    const-string v0, "AutoGrabHbConfig"

    iget-object v1, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->autoGrabHbConfig:Lme/yxp/qfun/utils/data/TernaryDataList;

    const-string v2, "data"

    invoke-static {v2, v0, v1}, Lme/yxp/qfun/utils/data/DataUtils;->serialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v0, "CommonHbConfig"

    iget-object v1, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->commonHbConfig:Ljava/util/Map;

    invoke-static {v2, v0, v1}, Lme/yxp/qfun/utils/data/DataUtils;->serialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->mTroopEnableInfo:Lme/yxp/qfun/utils/qq/EnableInfo;

    invoke-virtual {p0}, Lme/yxp/qfun/utils/qq/EnableInfo;->savaInfo()V

    return-void
.end method

.method public sendReasonMsg(Lme/yxp/qfun/javaplugin/api/MsgData;Ljava/lang/String;II)V
    .registers 6

    .line 292
    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p4, p3, p2}, Lme/yxp/qfun/hook/redpacket/RedPacketHook$$ExternalSyntheticLambda6;-><init>(Lme/yxp/qfun/javaplugin/api/MsgData;IILjava/lang/String;)V

    invoke-static {p0, v0}, Lme/yxp/qfun/utils/thread/SyncUtils;->runOnNewThread(Ljava/lang/String;Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public startHook()V
    .registers 3

    .line 107
    sget-object v0, Lme/yxp/qfun/hook/api/OnMsg;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object v1, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->onReceiveRedPacket:Lme/yxp/qfun/hook/api/OnMsg$MsgListener;

    invoke-virtual {v0, v1}, Lme/yxp/qfun/hook/base/ApiHookItem;->addListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    .line 109
    iget-object v0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->commonHbConfig:Ljava/util/Map;

    const-string v1, "isManual"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "[QFun],,打开红包,10"

    if-eqz v0, :cond_23

    .line 110
    sget-object v0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    check-cast v0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;

    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->onClick:Lme/yxp/qfun/hook/api/OnMsgMenuOpen$OnMsgMenuClickListener;

    invoke-virtual {v0, v1, p0}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->addListener(Ljava/lang/String;Lme/yxp/qfun/hook/api/OnMsgMenuOpen$OnMsgMenuClickListener;)V

    return-void

    .line 112
    :cond_23
    sget-object p0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    check-cast p0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;

    invoke-virtual {p0, v1}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->removeListener(Ljava/lang/String;)V

    return-void
.end method

.method public stopHook()V
    .registers 2

    .line 99
    sget-object v0, Lme/yxp/qfun/hook/api/OnMsg;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object p0, p0, Lme/yxp/qfun/hook/redpacket/RedPacketHook;->onReceiveRedPacket:Lme/yxp/qfun/hook/api/OnMsg$MsgListener;

    invoke-virtual {v0, p0}, Lme/yxp/qfun/hook/base/ApiHookItem;->removeListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    .line 100
    sget-object p0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    check-cast p0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;

    const-string v0, "[QFun],,打开红包,10"

    invoke-virtual {p0, v0}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->removeListener(Ljava/lang/String;)V

    return-void
.end method
