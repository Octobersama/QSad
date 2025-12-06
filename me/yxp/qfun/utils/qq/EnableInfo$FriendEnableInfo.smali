.class public final Lme/yxp/qfun/utils/qq/EnableInfo$FriendEnableInfo;
.super Lme/yxp/qfun/utils/qq/EnableInfo;
.source "EnableInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/utils/qq/EnableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FriendEnableInfo"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 73
    invoke-direct {p0, p1}, Lme/yxp/qfun/utils/qq/EnableInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public updateInfo()V
    .registers 6

    .line 78
    new-instance v0, Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-direct {v0}, Lme/yxp/qfun/utils/data/TernaryDataList;-><init>()V

    .line 80
    :try_start_5
    invoke-static {}, Lme/yxp/qfun/utils/qq/FriendTool;->getAllFriend()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 81
    const-string v3, "uin"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    const-string v4, "name"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    iget-object v4, p0, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v4, v3}, Lme/yxp/qfun/utils/data/TernaryDataList;->getIsAvailable(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v3, v2, v4}, Lme/yxp/qfun/utils/data/TernaryDataList;->add(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_33

    goto :goto_d

    .line 88
    :catch_33
    :cond_33
    iput-object v0, p0, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    return-void
.end method
