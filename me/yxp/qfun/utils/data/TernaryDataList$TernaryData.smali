.class public Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;
.super Ljava/lang/Object;
.source "TernaryDataList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/utils/data/TernaryDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TernaryData"
.end annotation


# instance fields
.field public isAvailable:Z

.field public key:Ljava/lang/String;

.field final synthetic this$0:Lme/yxp/qfun/utils/data/TernaryDataList;

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lme/yxp/qfun/utils/data/TernaryDataList;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;Z)V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;->this$0:Lme/yxp/qfun/utils/data/TernaryDataList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;->key:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;->value:Ljava/lang/Object;

    .line 80
    iput-boolean p4, p0, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;->isAvailable:Z

    return-void
.end method

.method public synthetic constructor <init>(Lme/yxp/qfun/utils/data/TernaryDataList;Ljava/lang/String;Ljava/lang/Object;ZLme/yxp/qfun/utils/data/TernaryDataList-IA;)V
    .registers 6

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;-><init>(Lme/yxp/qfun/utils/data/TernaryDataList;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lme/yxp/qfun/utils/data/TernaryDataList$TernaryData;->isAvailable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
