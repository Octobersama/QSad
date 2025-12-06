.class public Lme/yxp/qfun/utils/json/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findValueByKey(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2a

    if-nez p1, :cond_6

    goto :goto_2a

    .line 14
    :cond_6
    :try_start_6
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 15
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 16
    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 17
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_1d
    move-object p0, v1

    goto :goto_25

    .line 19
    :cond_1f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    .line 23
    :cond_25
    :goto_25
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/json/JsonUtil;->searchRecursive(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_2a

    return-object p0

    :catchall_2a
    :cond_2a
    :goto_2a
    return-object v0
.end method

.method private static searchRecursive(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 30
    instance-of v0, p0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 31
    check-cast p0, Lorg/json/JSONObject;

    .line 32
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 33
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 34
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return-object v1

    :cond_1a
    return-object p0

    .line 37
    :cond_1b
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 39
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lme/yxp/qfun/utils/json/JsonUtil;->searchRecursive(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1f

    return-object v2

    .line 42
    :cond_36
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_51

    .line 43
    check-cast p0, Lorg/json/JSONArray;

    const/4 v0, 0x0

    .line 44
    :goto_3d
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_51

    .line 45
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lme/yxp/qfun/utils/json/JsonUtil;->searchRecursive(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4e

    return-object v2

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_51
    return-object v1
.end method
