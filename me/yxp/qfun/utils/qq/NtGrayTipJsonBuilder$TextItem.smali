.class public Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$TextItem;
.super Ljava/lang/Object;
.source "NtGrayTipJsonBuilder.java"

# interfaces
.implements Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$Item;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextItem"
.end annotation


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$TextItem;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .registers 3

    .line 76
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 77
    const-string v1, "txt"

    iget-object p0, p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$TextItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string p0, "type"

    const-string v1, "nor"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$TextItem;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 88
    :catch_9
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
