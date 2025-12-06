.class public final Lme/yxp/qfun/hook/msg/PicSummaryHook;
.super Lme/yxp/qfun/hook/base/BaseWithDataHookItem;
.source "PicSummaryHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "修改图片外显"
    desc = "返回值为Json格式时支持读取嵌套的key，为纯文本长度需小于30"
.end annotation


# instance fields
.field private dataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeSummaryListener:Lme/yxp/qfun/hook/api/OnSendMsg$SendMsgListener;

.field private mPicSummary:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$9Ov93y_ZLQ3UFEDVMHutgZJQ1F0(Lme/yxp/qfun/hook/msg/PicSummaryHook;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/hook/msg/PicSummaryHook;->lambda$setNextPicSummary$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$KHn3cH9ip_e6D2gOJKrHwEC5c3k(Lme/yxp/qfun/hook/msg/PicSummaryHook;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lme/yxp/qfun/hook/msg/PicSummaryHook;->lambda$onClick$1(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VAp47tZCGBJmfvwBhM4ZpAF5aHE(Lme/yxp/qfun/hook/msg/PicSummaryHook;Ljava/util/ArrayList;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/msg/PicSummaryHook;->lambda$initCallback$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseWithDataHookItem;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->dataMap:Ljava/util/Map;

    return-void
.end method

.method private get(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 143
    :try_start_0
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 145
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x2710

    .line 146
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x3a98

    .line 147
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 149
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4a

    .line 150
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 151
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    :goto_35
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 159
    :cond_3f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 160
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    return-object p0

    :catch_4a
    :cond_4a
    return-object p1
.end method

.method private synthetic lambda$initCallback$0(Ljava/util/ArrayList;)V
    .registers 6

    .line 39
    iget-object v0, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->mPicSummary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5f

    .line 44
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    const-string v3, "picElement"

    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 46
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    const-string v3, "marketFaceElement"

    invoke-virtual {v1, v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v2, :cond_47

    .line 49
    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v2, "summary"

    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    iget-object v2, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->mPicSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    move v0, v3

    :cond_47
    if-eqz v1, :cond_59

    .line 53
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v1, "faceName"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    iget-object v1, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->mPicSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    move v0, v3

    :cond_59
    if-eqz v0, :cond_e

    .line 56
    invoke-direct {p0}, Lme/yxp/qfun/hook/msg/PicSummaryHook;->setNextPicSummary()V

    goto :goto_e

    :cond_5f
    :goto_5f
    return-void
.end method

.method private synthetic lambda$onClick$1(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 111
    iget-object p3, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->dataMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "key"

    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object p1, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->dataMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "summaryOrUrl"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-direct {p0}, Lme/yxp/qfun/hook/msg/PicSummaryHook;->setNextPicSummary()V

    return-void
.end method

.method private synthetic lambda$setNextPicSummary$2()V
    .registers 6

    .line 121
    iget-object v0, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->dataMap:Ljava/util/Map;

    const-string v1, "summaryOrUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-direct {p0, v0}, Lme/yxp/qfun/hook/msg/PicSummaryHook;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    :try_start_e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    iget-object v3, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->dataMap:Ljava/util/Map;

    const-string v4, "key"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lme/yxp/qfun/utils/json/JsonUtil;->findValueByKey(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 126
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2a

    .line 127
    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->mPicSummary:Ljava/lang/String;

    return-void

    .line 129
    :cond_2a
    const-string v2, ""

    iput-object v2, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->mPicSummary:Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2e} :catch_2f

    return-void

    .line 132
    :catch_2f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_3a

    .line 133
    iput-object v0, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->mPicSummary:Ljava/lang/String;

    goto :goto_3c

    .line 135
    :cond_3a
    iput-object v1, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->mPicSummary:Ljava/lang/String;

    :goto_3c
    return-void
.end method

.method private setNextPicSummary()V
    .registers 3

    .line 120
    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lme/yxp/qfun/hook/msg/PicSummaryHook$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/msg/PicSummaryHook$$ExternalSyntheticLambda2;-><init>(Lme/yxp/qfun/hook/msg/PicSummaryHook;)V

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/thread/SyncUtils;->runOnNewThread(Ljava/lang/String;Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 2

    .line 37
    new-instance v0, Lme/yxp/qfun/hook/msg/PicSummaryHook$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lme/yxp/qfun/hook/msg/PicSummaryHook$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/msg/PicSummaryHook;)V

    iput-object v0, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->mChangeSummaryListener:Lme/yxp/qfun/hook/api/OnSendMsg$SendMsgListener;

    return-void
.end method

.method public initData()V
    .registers 4

    .line 73
    const-string v0, "data"

    const-string v1, "SummaryDataMap"

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/data/DataUtils;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 75
    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->dataMap:Ljava/util/Map;

    goto :goto_1f

    .line 77
    :cond_f
    iget-object v0, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->dataMap:Ljava/util/Map;

    const-string v1, "key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->dataMap:Ljava/util/Map;

    const-string v1, "summaryOrUrl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :goto_1f
    invoke-direct {p0}, Lme/yxp/qfun/hook/msg/PicSummaryHook;->setNextPicSummary()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 91
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    .line 96
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 97
    const-string v3, "普通外显或api链接"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v3, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->dataMap:Ljava/util/Map;

    const-string v4, "summaryOrUrl"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x28

    .line 99
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 100
    const-string v4, "需要显示的key"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v4, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->dataMap:Ljava/util/Map;

    const-string v5, "key"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 104
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    new-instance v3, Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x5

    invoke-direct {v3, p1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string p1, "设置图片外显文本"

    .line 108
    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 109
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lme/yxp/qfun/hook/msg/PicSummaryHook$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2, v1}, Lme/yxp/qfun/hook/msg/PicSummaryHook$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/msg/PicSummaryHook;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 110
    const-string p0, "保存"

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public savaData()V
    .registers 3

    .line 85
    const-string v0, "SummaryDataMap"

    iget-object p0, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->dataMap:Ljava/util/Map;

    const-string v1, "data"

    invoke-static {v1, v0, p0}, Lme/yxp/qfun/utils/data/DataUtils;->serialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startHook()V
    .registers 2

    .line 63
    sget-object v0, Lme/yxp/qfun/hook/api/OnSendMsg;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object p0, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->mChangeSummaryListener:Lme/yxp/qfun/hook/api/OnSendMsg$SendMsgListener;

    invoke-virtual {v0, p0}, Lme/yxp/qfun/hook/base/ApiHookItem;->addListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    return-void
.end method

.method public stopHook()V
    .registers 2

    .line 68
    sget-object v0, Lme/yxp/qfun/hook/api/OnSendMsg;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object p0, p0, Lme/yxp/qfun/hook/msg/PicSummaryHook;->mChangeSummaryListener:Lme/yxp/qfun/hook/api/OnSendMsg$SendMsgListener;

    invoke-virtual {v0, p0}, Lme/yxp/qfun/hook/base/ApiHookItem;->removeListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    return-void
.end method
