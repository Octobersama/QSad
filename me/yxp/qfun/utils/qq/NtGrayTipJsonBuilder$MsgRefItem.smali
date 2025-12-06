.class public Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$MsgRefItem;
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
    name = "MsgRefItem"
.end annotation


# instance fields
.field private final mMsgSeq:J

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$MsgRefItem;->mText:Ljava/lang/String;

    .line 133
    iput-wide p2, p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$MsgRefItem;->mMsgSeq:J

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .registers 6

    .line 137
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 138
    const-string v1, "type"

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v1, "txt"

    iget-object v2, p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$MsgRefItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v1, "col"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v1, "local_jp"

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 144
    const-string v2, "seq"

    iget-wide v3, p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$MsgRefItem;->mMsgSeq:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 145
    const-string p0, "param"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$MsgRefItem;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 156
    :catch_9
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
