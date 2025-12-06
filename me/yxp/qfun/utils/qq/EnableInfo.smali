.class public abstract Lme/yxp/qfun/utils/qq/EnableInfo;
.super Ljava/lang/Object;
.source "EnableInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/utils/qq/EnableInfo$FriendEnableInfo;,
        Lme/yxp/qfun/utils/qq/EnableInfo$TroopEnableInfo;
    }
.end annotation


# instance fields
.field public dataList:Lme/yxp/qfun/utils/data/TernaryDataList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/yxp/qfun/utils/data/TernaryDataList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-direct {v0}, Lme/yxp/qfun/utils/data/TernaryDataList;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    .line 16
    iput-object p1, p0, Lme/yxp/qfun/utils/qq/EnableInfo;->fileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getValueArray()[Ljava/lang/String;
    .registers 6

    .line 36
    iget-object v0, p0, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    iget-object v0, v0, Lme/yxp/qfun/utils/data/TernaryDataList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 37
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_24

    .line 40
    iget-object v3, p0, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v3}, Lme/yxp/qfun/utils/data/TernaryDataList;->getKeyArray()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    .line 41
    iget-object v4, p0, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-virtual {v4, v3}, Lme/yxp/qfun/utils/data/TernaryDataList;->getData(Ljava/lang/String;)Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;

    move-result-object v3

    iget-object v3, v3, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_24
    return-object v1
.end method

.method public final initInfo()V
    .registers 3

    .line 21
    iget-object v0, p0, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    iget-object v0, v0, Lme/yxp/qfun/utils/data/TernaryDataList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    const-string v0, "data"

    iget-object v1, p0, Lme/yxp/qfun/utils/qq/EnableInfo;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/data/DataUtils;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 24
    check-cast v0, Lme/yxp/qfun/utils/data/TernaryDataList;

    iput-object v0, p0, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    :cond_15
    return-void
.end method

.method public final savaInfo()V
    .registers 3

    .line 31
    iget-object v0, p0, Lme/yxp/qfun/utils/qq/EnableInfo;->fileName:Ljava/lang/String;

    iget-object p0, p0, Lme/yxp/qfun/utils/qq/EnableInfo;->dataList:Lme/yxp/qfun/utils/data/TernaryDataList;

    const-string v1, "data"

    invoke-static {v1, v0, p0}, Lme/yxp/qfun/utils/data/DataUtils;->serialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract updateInfo()V
.end method
