.class public Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;
.super Ljava/lang/Object;
.source "NtGrayTipJsonBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$TextItem;,
        Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$Item;,
        Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$MsgRefItem;,
        Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$UserItem;
    }
.end annotation


# static fields
.field public static final AIO_AV_C2C_NOTICE:I = 0x7e5

.field public static final AIO_AV_GROUP_NOTICE:I = 0x7e6


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method public static addLocalGrayTipMsg(Ljava/lang/Object;Ljava/lang/String;J)V
    .registers 7

    .line 26
    const-string v0, "com.tencent.qqnt.kernelpublic.nativeinterface.JsonGrayElement"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 27
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, ""

    const/4 v2, 0x0

    filled-new-array {p2, p1, v1, p3, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 29
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_IKernelMsgService$CppProxy()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p2

    const-string p3, "addLocalJsonGrayTipMsg"

    .line 30
    invoke-virtual {p2, p3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p2

    .line 33
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getKernelMsgservice()Ljava/lang/Object;

    move-result-object p3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p0, p1, v0, v0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public append(Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$Item;)Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;
    .registers 3

    .line 42
    iget-object v0, p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public appendText(Ljava/lang/String;)Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;
    .registers 4

    .line 37
    iget-object v0, p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$TextItem;

    invoke-direct {v1, p1}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$TextItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lorg/json/JSONObject;
    .registers 4

    .line 48
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    const-string v1, "align"

    const-string v2, "center"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 52
    iget-object p0, p0, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$Item;

    .line 53
    invoke-interface {v2}, Lme/yxp/qfun/utils/qq/NtGrayTipJsonBuilder$Item;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_17

    .line 55
    :cond_2b
    const-string p0, "items"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_30} :catch_31

    return-object v0

    :catch_31
    move-exception p0

    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
