.class public Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$UserItem;
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
    name = "UserItem"
.end annotation


# instance fields
.field private final mNick:Ljava/lang/String;

.field private final mUid:Ljava/lang/String;

.field private final mUin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$UserItem;->mUin:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$UserItem;->mUid:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$UserItem;->mNick:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .registers 4

    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    const-string v1, "col"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v1, "jp"

    iget-object v2, p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$UserItem;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "nm"

    iget-object v2, p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$UserItem;->mNick:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v1, "tp"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v1, "type"

    const-string v2, "qq"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v1, "uid"

    iget-object v2, p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$UserItem;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v1, "uin"

    iget-object p0, p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$UserItem;->mUin:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$UserItem;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 122
    :catch_9
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
