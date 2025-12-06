.class public Lme/yxp/qfun/utils/data/TernaryDataList;
.super Ljava/lang/Object;
.source "TernaryDataList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme/yxp/qfun/utils/data/TernaryDataList<",
            "TT;>.TernaryData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/utils/data/TernaryDataList;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;Z)V"
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1}, Lme/yxp/qfun/utils/data/TernaryDataList;->contain(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 14
    iget-object v0, p0, Lme/yxp/qfun/utils/data/TernaryDataList;->list:Ljava/util/List;

    new-instance v1, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;-><init>(Lme/yxp/qfun/utils/data/TernaryDataList;Ljava/lang/String;Ljava/lang/Object;ZLme/yxp/qfun/utils/data/TernaryDataList-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

.method public contain(Ljava/lang/String;)Z
    .registers 3

    .line 19
    iget-object p0, p0, Lme/yxp/qfun/utils/data/TernaryDataList;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;

    .line 20
    iget-object v0, v0, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public getData(Ljava/lang/String;)Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lme/yxp/qfun/utils/data/TernaryDataList<",
            "TT;>.TernaryData;"
        }
    .end annotation

    .line 28
    iget-object p0, p0, Lme/yxp/qfun/utils/data/TernaryDataList;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;

    .line 29
    iget-object v1, v0, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIsAvailable(Ljava/lang/String;)Z
    .registers 3

    .line 50
    invoke-virtual {p0, p1}, Lme/yxp/qfun/utils/data/TernaryDataList;->contain(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 51
    invoke-virtual {p0, p1}, Lme/yxp/qfun/utils/data/TernaryDataList;->getData(Ljava/lang/String;)Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;

    move-result-object p0

    iget-boolean p0, p0, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;->isAvailable:Z

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public getKeyArray()[Ljava/lang/String;
    .registers 5

    .line 63
    iget-object v0, p0, Lme/yxp/qfun/utils/data/TernaryDataList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 64
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_1a

    .line 67
    iget-object v3, p0, Lme/yxp/qfun/utils/data/TernaryDataList;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;

    iget-object v3, v3, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;->key:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1a
    return-object v1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lme/yxp/qfun/utils/data/TernaryDataList;->contain(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 38
    invoke-virtual {p0, p1}, Lme/yxp/qfun/utils/data/TernaryDataList;->getData(Ljava/lang/String;)Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;

    move-result-object p0

    iget-object p0, p0, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;->value:Ljava/lang/Object;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public setIsAvailable(Ljava/lang/String;Z)V
    .registers 4

    .line 57
    invoke-virtual {p0, p1}, Lme/yxp/qfun/utils/data/TernaryDataList;->contain(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 58
    invoke-virtual {p0, p1}, Lme/yxp/qfun/utils/data/TernaryDataList;->getData(Ljava/lang/String;)Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;

    move-result-object p0

    iput-boolean p2, p0, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;->isAvailable:Z

    :cond_c
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lme/yxp/qfun/utils/data/TernaryDataList;->contain(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 45
    invoke-virtual {p0, p1}, Lme/yxp/qfun/utils/data/TernaryDataList;->getData(Ljava/lang/String;)Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;

    move-result-object p0

    iput-object p2, p0, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;->value:Ljava/lang/Object;

    :cond_c
    return-void
.end method
