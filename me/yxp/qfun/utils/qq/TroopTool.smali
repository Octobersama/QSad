.class public Lme/yxp/qfun/utils/qq/TroopTool;
.super Ljava/lang/Object;
.source "TroopTool.java"


# static fields
.field private static final ROLES:[Ljava/lang/String;

.field private static sChangeMemberName:Ljava/lang/reflect/Method;

.field private static sEditUniqueTitleActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sFetchTroopMemberInfo:Ljava/lang/reflect/Method;

.field private static sFetchTroopMemberList:Ljava/lang/reflect/Method;

.field private static sGetTroopInfo:Ljava/lang/reflect/Method;

.field private static sGetTroopList:Ljava/lang/reflect/Method;

.field private static sKickGroup:Ljava/lang/reflect/Method;

.field private static sMemberRole:Ljava/lang/Class;

.field private static sMemberSettingGroupManagePart:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sMemberSettingHandler:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sSetGroupAdmin:Ljava/lang/reflect/Method;

.field private static sSetGroupMemberTitle:Ljava/lang/reflect/Method;

.field private static sShutUp:Ljava/lang/reflect/Method;

.field private static sShutUpAll:Ljava/lang/reflect/Method;

.field private static sTroopInfoServiceImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sTroopListRepoApiImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sTroopMemberCardHandler:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sTroopMemberCardInfo:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sTroopMemberListRepo:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sTroopOperationRepo:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$JNgYcHNUqk31d_R9CXygFgO6hFQ(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 239
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1e

    .line 240
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    const-string v1, "com.tencent.mobileqq.data.troop.TroopMemberInfo"

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-ne p2, v1, :cond_1e

    .line 241
    aget-object p1, p4, v0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0

    .line 244
    :cond_1e
    invoke-virtual {p3, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rZUsEtopSusZK1DhMYAlloDxXMU(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 164
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1a

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    array-length p2, p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1a

    const/4 p1, 0x1

    .line 165
    aget-object p1, p4, p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0

    .line 168
    :cond_1a
    invoke-virtual {p3, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 22
    const-string v0, "ADMIN"

    const-string v1, "OWNER"

    const-string v2, "MEMBER"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->ROLES:[Ljava/lang/String;

    .line 48
    :try_start_c
    invoke-static {}, Lme/yxp/qfun/utils/qq/TroopTool;->initMethod()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v0

    .line 50
    const-string v1, "TroopTool"

    invoke-static {v1, v0}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeMemberName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 323
    sget-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopMemberCardInfo:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 324
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    const-string v3, "colorNick"

    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    .line 325
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    const-string v3, "colorNickId"

    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    .line 326
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    const-string v2, "memberuin"

    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    .line 327
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    const-string v1, "troopnick"

    invoke-virtual {p1, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    .line 328
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    .line 329
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    const-string p2, "troopuin"

    invoke-virtual {p1, p2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    .line 331
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 332
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    .line 335
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sChangeMemberName:Ljava/lang/reflect/Method;

    sget-object v1, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopMemberCardHandler:Ljava/lang/Class;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getQQAppInterface()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getGroupList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    sget-object v1, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopListRepoApiImpl:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_13
    if-eqz v2, :cond_7c

    .line 137
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_7c

    .line 141
    :cond_1c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 142
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 144
    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v4

    const-string v5, "troopuin"

    invoke-virtual {v4, v5}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v4

    invoke-virtual {v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 145
    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v5

    const-string v6, "troopNameFromNT"

    invoke-virtual {v5, v6}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v5

    invoke-virtual {v5}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 146
    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v6

    const-string v7, "troopowneruin"

    invoke-virtual {v6, v7}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v6

    invoke-virtual {v6}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 148
    const-string v7, "group"

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v7, "groupName"

    invoke-static {v5, v4}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v4, "groupOwner"

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v4, "groupInfo"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_7b
    return-object v0

    .line 138
    :cond_7c
    :goto_7c
    sget-object v2, Lme/yxp/qfun/utils/qq/TroopTool;->sGetTroopList:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_13
.end method

.method public static getGroupMemberList(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/TroopTool;->getMemberInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 179
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 180
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    const-string v4, "join_time"

    invoke-virtual {v3, v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    invoke-virtual {v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "joinGroupTime"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    const-string v4, "last_active_time"

    invoke-virtual {v3, v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    invoke-virtual {v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "lastActiveTime"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    const-string v4, "memberuin"

    invoke-virtual {v3, v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    invoke-virtual {v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "uin"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    const-string v4, "realLevel"

    invoke-virtual {v3, v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    invoke-virtual {v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "uinLevel"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    const-string v4, "troopnick"

    invoke-virtual {v3, v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    invoke-virtual {v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 186
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 187
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    const-string v4, "friendnick"

    invoke-virtual {v3, v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v3

    invoke-virtual {v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 189
    :cond_8e
    const-string v4, "uinName"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v3, "memberInfo"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v3, Lme/yxp/qfun/utils/qq/TroopTool;->ROLES:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_9c
    if-ge v5, v4, :cond_bc

    aget-object v6, v3, v5

    .line 193
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v7

    const-string v8, "role"

    invoke-virtual {v7, v8}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v7

    invoke-virtual {v7}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v7

    sget-object v9, Lme/yxp/qfun/utils/qq/TroopTool;->sMemberRole:Ljava/lang/Class;

    invoke-static {v9, v6}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v9

    if-ne v7, v9, :cond_b9

    .line 194
    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b9
    add-int/lit8 v5, v5, 0x1

    goto :goto_9c

    .line 197
    :cond_bc
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_c1
    return-object v0
.end method

.method public static getMemberInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 13

    .line 234
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 235
    sget-object v1, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopMemberListRepo:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 237
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->getHostClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    sget-object v3, Lme/yxp/qfun/utils/qq/TroopTool;->sFetchTroopMemberInfo:Ljava/lang/reflect/Method;

    .line 238
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v3, v3, v4

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Lme/yxp/qfun/utils/qq/TroopTool$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v1}, Lme/yxp/qfun/utils/qq/TroopTool$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)V

    .line 237
    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v10

    .line 247
    sget-object v2, Lme/yxp/qfun/utils/qq/TroopTool;->sFetchTroopMemberInfo:Ljava/lang/reflect/Method;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    const-string v9, ""

    move-object v5, p0

    move-object v6, p1

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p0, 0x5

    .line 248
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getMemberInfoList(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 160
    sget-object v1, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopMemberListRepo:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 162
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->getHostClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    sget-object v3, Lme/yxp/qfun/utils/qq/TroopTool;->sFetchTroopMemberList:Ljava/lang/reflect/Method;

    .line 163
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Lme/yxp/qfun/utils/qq/TroopTool$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1}, Lme/yxp/qfun/utils/qq/TroopTool$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)V

    .line 162
    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 171
    sget-object v3, Lme/yxp/qfun/utils/qq/TroopTool;->sFetchTroopMemberList:Ljava/lang/reflect/Method;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, ""

    const/4 v6, 0x0

    filled-new-array {p0, v6, v4, v5, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x5

    .line 172
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getMemberName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 253
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/TroopTool;->getMemberInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 254
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v1, "troopnick"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 256
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    const-string v0, "friendnick"

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_30

    return-object p0

    :cond_2f
    return-object v0

    :catch_30
    return-object p1
.end method

.method public static getProhibitList(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/TroopTool;->getMemberInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 207
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    const-string v3, "gagTimeStamp"

    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    cmp-long v7, v3, v5

    if-lez v7, :cond_d

    .line 211
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 212
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v8

    const-string v9, "memberuin"

    invoke-virtual {v8, v9}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v8

    invoke-virtual {v8}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "user"

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v8, "endTime"

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-long/2addr v3, v5

    .line 214
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "time"

    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    const-string v3, "troopnick"

    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 218
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    const-string v2, "friendnick"

    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 220
    :cond_84
    const-string v1, "userName"

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_8d
    return-object v0
.end method

.method public static getTroopInfo(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 229
    sget-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopInfoServiceImpl:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 230
    sget-object v1, Lme/yxp/qfun/utils/qq/TroopTool;->sGetTroopInfo:Ljava/lang/reflect/Method;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static initMethod()V
    .registers 7

    .line 55
    const-class v0, Ljava/util/List;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const-string v5, "com.tencent.qqnt.troop.impl.TroopListRepoApiImpl"

    invoke-static {v5}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopListRepoApiImpl:Ljava/lang/Class;

    .line 56
    const-string v5, "com.tencent.mobileqq.troop.membersetting.handler.MemberSettingHandler"

    invoke-static {v5}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sMemberSettingHandler:Ljava/lang/Class;

    .line 58
    :try_start_1a
    const-string v5, "com.tencent.mobileqq.troop.membersetting.part.MemberSettingGroupManagePart"

    invoke-static {v5}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sMemberSettingGroupManagePart:Ljava/lang/Class;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_23

    goto :goto_2b

    .line 60
    :catch_23
    const-string v5, "TroopTool"

    invoke-static {v5}, Lme/yxp/qfun/utils/dexkit/DexKit;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sMemberSettingGroupManagePart:Ljava/lang/Class;

    .line 62
    :goto_2b
    const-string v5, "com.tencent.biz.troop.EditUniqueTitleActivity"

    invoke-static {v5}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sEditUniqueTitleActivity:Ljava/lang/Class;

    .line 63
    const-string v5, "com.tencent.mobileqq.troop.handler.TroopMemberCardHandler"

    invoke-static {v5}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopMemberCardHandler:Ljava/lang/Class;

    .line 64
    const-string v5, "com.tencent.mobileqq.data.troop.TroopMemberCardInfo"

    invoke-static {v5}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopMemberCardInfo:Ljava/lang/Class;

    .line 65
    const-string v5, "com.tencent.qqnt.troopmemberlist.TroopMemberListRepo"

    invoke-static {v5}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopMemberListRepo:Ljava/lang/Class;

    .line 66
    const-string v5, "com.tencent.qqnt.troop.TroopOperationRepo"

    invoke-static {v5}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopOperationRepo:Ljava/lang/Class;

    .line 67
    const-string v5, "com.tencent.mobileqq.troop.api.impl.TroopInfoServiceImpl"

    invoke-static {v5}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopInfoServiceImpl:Ljava/lang/Class;

    .line 68
    const-string v5, "com.tencent.qqnt.kernelpublic.nativeinterface.MemberRole"

    invoke-static {v5}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sMemberRole:Ljava/lang/Class;

    .line 70
    sget-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopListRepoApiImpl:Ljava/lang/Class;

    invoke-static {v5}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v5

    const-string v6, "getSortedJoinedTroopInfoFromCache"

    .line 71
    invoke-virtual {v5, v6}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v5

    .line 72
    invoke-virtual {v5}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sGetTroopList:Ljava/lang/reflect/Method;

    .line 74
    :try_start_75
    sget-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sMemberSettingHandler:Ljava/lang/Class;

    invoke-static {v5}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v5

    .line 75
    invoke-virtual {v5, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v5

    filled-new-array {v4, v4, v1}, [Ljava/lang/Class;

    move-result-object v6

    .line 76
    invoke-virtual {v5, v6}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v5

    .line 77
    invoke-virtual {v5}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sShutUp:Ljava/lang/reflect/Method;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_8d} :catch_8e

    goto :goto_a6

    .line 79
    :catch_8e
    sget-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sMemberSettingHandler:Ljava/lang/Class;

    invoke-static {v5}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v5

    .line 80
    invoke-virtual {v5, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v5

    filled-new-array {v1, v4, v4}, [Ljava/lang/Class;

    move-result-object v6

    .line 81
    invoke-virtual {v5, v6}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v5

    .line 82
    invoke-virtual {v5}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sShutUp:Ljava/lang/reflect/Method;

    .line 85
    :goto_a6
    :try_start_a6
    sget-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sMemberSettingHandler:Ljava/lang/Class;

    invoke-static {v5}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v5

    .line 86
    invoke-virtual {v5, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v5

    filled-new-array {v1, v0, v2, v2}, [Ljava/lang/Class;

    move-result-object v6

    .line 87
    invoke-virtual {v5, v6}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v5

    .line 88
    invoke-virtual {v5}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sKickGroup:Ljava/lang/reflect/Method;
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_be} :catch_bf

    goto :goto_d7

    .line 90
    :catch_bf
    sget-object v5, Lme/yxp/qfun/utils/qq/TroopTool;->sMemberSettingHandler:Ljava/lang/Class;

    invoke-static {v5}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v5

    .line 91
    invoke-virtual {v5, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v5

    filled-new-array {v1, v2, v2, v0}, [Ljava/lang/Class;

    move-result-object v0

    .line 92
    invoke-virtual {v5, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sKickGroup:Ljava/lang/reflect/Method;

    .line 95
    :goto_d7
    sget-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sMemberSettingGroupManagePart:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v4, v4}, [Ljava/lang/Class;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sSetGroupAdmin:Ljava/lang/reflect/Method;

    .line 100
    :try_start_f1
    sget-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sEditUniqueTitleActivity:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 102
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_QQAppInterface()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mqq.observer.BusinessObserver"

    .line 103
    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v1, v4, v4, v4, v2}, [Ljava/lang/Class;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sSetGroupMemberTitle:Ljava/lang/reflect/Method;
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_113} :catch_114

    goto :goto_12c

    .line 106
    :catch_114
    sget-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sEditUniqueTitleActivity:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    filled-new-array {v4, v4, v4}, [Ljava/lang/Class;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sSetGroupMemberTitle:Ljava/lang/reflect/Method;

    .line 111
    :goto_12c
    sget-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopMemberCardHandler:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-class v1, Ljava/util/ArrayList;

    filled-new-array {v4, v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sChangeMemberName:Ljava/lang/reflect/Method;

    .line 115
    sget-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopMemberListRepo:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "fetchTroopMemberList"

    .line 116
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const/4 v1, 0x5

    .line 117
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamCount(I)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sFetchTroopMemberList:Ljava/lang/reflect/Method;

    .line 119
    sget-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopOperationRepo:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "modifyTroopShutUpTime"

    .line 120
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sShutUpAll:Ljava/lang/reflect/Method;

    .line 122
    sget-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopMemberListRepo:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "fetchTroopMemberInfo"

    .line 123
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const/4 v1, 0x6

    .line 124
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamCount(I)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sFetchTroopMemberInfo:Ljava/lang/reflect/Method;

    .line 126
    sget-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopInfoServiceImpl:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "getTroopInfo"

    .line 127
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sGetTroopInfo:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static isShutUp(Ljava/lang/String;)Z
    .registers 7

    .line 283
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/TroopTool;->getTroopInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 284
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v1, "dwGagTimeStamp"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 285
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    const-string v2, "dwGagTimeStamp_me"

    invoke-virtual {p0, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-nez p0, :cond_39

    cmp-long p0, v2, v4

    if-eqz p0, :cond_37

    goto :goto_39

    :cond_37
    const/4 p0, 0x0

    return p0

    :cond_39
    :goto_39
    const/4 p0, 0x1

    return p0
.end method

.method public static kickGroup(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object p1, Lme/yxp/qfun/utils/qq/TroopTool;->sMemberSettingHandler:Ljava/lang/Class;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getQQAppInterface()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 302
    :try_start_1a
    sget-object v1, Lme/yxp/qfun/utils/qq/TroopTool;->sKickGroup:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v2, v0, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2d} :catch_2e

    return-void

    .line 304
    :catch_2e
    sget-object v1, Lme/yxp/qfun/utils/qq/TroopTool;->sKickGroup:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {p0, p2, v2, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setGroupAdmin(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 291
    sget-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sSetGroupAdmin:Ljava/lang/reflect/Method;

    sget-object v1, Lme/yxp/qfun/utils/qq/TroopTool;->sMemberSettingGroupManagePart:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 292
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 291
    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setGroupMemberTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 310
    sget-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sEditUniqueTitleActivity:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 313
    :try_start_9
    sget-object v1, Lme/yxp/qfun/utils/qq/TroopTool;->sSetGroupMemberTitle:Ljava/lang/reflect/Method;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getQQAppInterface()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    filled-new-array {v2, p0, p1, p2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_18

    return-void

    .line 316
    :catch_18
    const-string v1, "app"

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getQQAppInterface()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setIntent"

    invoke-static {v0, v2, v1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v1, Lme/yxp/qfun/utils/qq/TroopTool;->sSetGroupMemberTitle:Ljava/lang/reflect/Method;

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static shutUp(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 266
    sget-object v0, Lme/yxp/qfun/utils/qq/TroopTool;->sMemberSettingHandler:Ljava/lang/Class;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getQQAppInterface()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 269
    :try_start_e
    sget-object v1, Lme/yxp/qfun/utils/qq/TroopTool;->sShutUp:Ljava/lang/reflect/Method;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {p0, p1, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_1c

    return-void

    .line 271
    :catch_1c
    sget-object v1, Lme/yxp/qfun/utils/qq/TroopTool;->sShutUp:Ljava/lang/reflect/Method;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static shutUpAll(Ljava/lang/String;Z)V
    .registers 5

    if-eqz p1, :cond_6

    const-wide/32 v0, 0xfffffff

    goto :goto_8

    :cond_6
    const-wide/16 v0, 0x0

    .line 278
    :goto_8
    sget-object p1, Lme/yxp/qfun/utils/qq/TroopTool;->sTroopOperationRepo:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 279
    sget-object v2, Lme/yxp/qfun/utils/qq/TroopTool;->sShutUpAll:Ljava/lang/reflect/Method;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    filled-new-array {p0, v0, v1, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
