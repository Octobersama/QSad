.class public final Lme/yxp/qfun/hook/msg/MsgContentHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "MsgContentHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "修改本地消息文本"
    desc = "长按消息出现修改文本选项，滑动或重新进入聊天界面刷新"
.end annotation


# static fields
.field private static final MENU_KEY:Ljava/lang/String; = "[QFun],,文本修改,2,9"


# instance fields
.field private mGetMsgListener:Lme/yxp/qfun/hook/api/OnGetMsgRecord$GetMsgRecordListener;

.field private mMenuClickListener:Lme/yxp/qfun/hook/api/OnMsgMenuOpen$OnMsgMenuClickListener;

.field private final mMsgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$_TNFhtALJYL9Cu9iGf0thdT30kQ(Lme/yxp/qfun/hook/msg/MsgContentHook;Lme/yxp/qfun/javaplugin/api/MsgData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/msg/MsgContentHook;->lambda$initCallback$1(Lme/yxp/qfun/javaplugin/api/MsgData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kIqrvcjSMQVJm9uXjd6IMIqu5EM(Lme/yxp/qfun/hook/msg/MsgContentHook;Ljava/util/Map;Landroid/widget/LinearLayout;Ljava/util/Map;[Ljava/lang/Integer;JLandroid/content/DialogInterface;I)V
    .registers 9

    .line 0
    invoke-direct/range {p0 .. p8}, Lme/yxp/qfun/hook/msg/MsgContentHook;->lambda$showEditDialog$2(Ljava/util/Map;Landroid/widget/LinearLayout;Ljava/util/Map;[Ljava/lang/Integer;JLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lrZP4Uq9uPQe0yO7ufbyin09XjQ(Lme/yxp/qfun/hook/msg/MsgContentHook;Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/msg/MsgContentHook;->lambda$initCallback$0(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/hook/msg/MsgContentHook;->mMsgMap:Ljava/util/Map;

    return-void
.end method

.method private synthetic lambda$initCallback$0(Ljava/lang/Object;)V
    .registers 11

    .line 33
    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 35
    iget-object v2, p0, Lme/yxp/qfun/hook/msg/MsgContentHook;->mMsgMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_1e

    .line 37
    iget-object v4, p0, Lme/yxp/qfun/hook/msg/MsgContentHook;->mMsgMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 38
    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v4

    const-string v5, "elements"

    .line 39
    invoke-virtual {v4, v5}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v4

    invoke-virtual {v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 41
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_52
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 42
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v7

    const-string v8, "textElement"

    .line 43
    invoke-virtual {v7, v8}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v7

    invoke-virtual {v7}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 44
    invoke-static {v7}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v7

    const-string v8, "content"

    invoke-virtual {v7, v8}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v7

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    goto :goto_52

    :cond_86
    return-void
.end method

.method private synthetic lambda$initCallback$1(Lme/yxp/qfun/javaplugin/api/MsgData;)V
    .registers 9

    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 54
    :try_start_5
    iget-wide v1, p1, Lme/yxp/qfun/javaplugin/api/MsgData;->msgId:J

    .line 55
    iget-object p1, p1, Lme/yxp/qfun/javaplugin/api/MsgData;->data:Ljava/lang/Object;

    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    const-string v3, "elements"

    .line 56
    invoke-virtual {p1, v3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    invoke-virtual {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 58
    :goto_1a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6a

    .line 59
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v4

    const-string v5, "textElement"

    .line 60
    invoke-virtual {v4, v5}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v4

    invoke-virtual {v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_35

    goto :goto_67

    .line 66
    :cond_35
    invoke-static {v4}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v5, v6}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v5

    invoke-virtual {v5}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-static {v4}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v4

    const-string v6, "atType"

    invoke-virtual {v4, v6}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v4

    invoke-virtual {v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_67

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    :catch_65
    move-exception p1

    goto :goto_6e

    :cond_67
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 74
    :cond_6a
    invoke-direct {p0, v1, v2, v0}, Lme/yxp/qfun/hook/msg/MsgContentHook;->showEditDialog(JLjava/util/Map;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6d} :catch_65

    return-void

    .line 76
    :goto_6e
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$showEditDialog$2(Ljava/util/Map;Landroid/widget/LinearLayout;Ljava/util/Map;[Ljava/lang/Integer;JLandroid/content/DialogInterface;I)V
    .registers 9

    .line 122
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 126
    :goto_8
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p7

    if-ge p1, p7, :cond_2a

    .line 127
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Landroid/widget/EditText;

    .line 128
    invoke-virtual {p7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p7

    .line 129
    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result p8

    if-nez p8, :cond_27

    .line 130
    aget-object p8, p4, p1

    invoke-interface {p3, p8, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 134
    :cond_2a
    iget-object p0, p0, Lme/yxp/qfun/hook/msg/MsgContentHook;->mMsgMap:Ljava/util/Map;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private showEditDialog(JLjava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 95
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 96
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Integer;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Ljava/lang/Integer;

    .line 99
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 100
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 102
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 103
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 104
    const-string v7, "无可修改文本"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x11

    .line 108
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 109
    invoke-virtual {v4, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    :cond_49
    :goto_49
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v3

    if-ge v2, v3, :cond_5f

    .line 113
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 114
    aget-object v7, v1, v2

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 118
    :cond_5f
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v0, "可修改文本"

    .line 119
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lme/yxp/qfun/hook/msg/MsgContentHook$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-wide v7, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v8}, Lme/yxp/qfun/hook/msg/MsgContentHook$$ExternalSyntheticLambda2;-><init>(Lme/yxp/qfun/hook/msg/MsgContentHook;Ljava/util/Map;Landroid/widget/LinearLayout;Ljava/util/Map;[Ljava/lang/Integer;J)V

    .line 121
    const-string p0, "确定"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 2

    .line 32
    new-instance v0, Lme/yxp/qfun/hook/msg/MsgContentHook$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lme/yxp/qfun/hook/msg/MsgContentHook$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/msg/MsgContentHook;)V

    iput-object v0, p0, Lme/yxp/qfun/hook/msg/MsgContentHook;->mGetMsgListener:Lme/yxp/qfun/hook/api/OnGetMsgRecord$GetMsgRecordListener;

    .line 50
    new-instance v0, Lme/yxp/qfun/hook/msg/MsgContentHook$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lme/yxp/qfun/hook/msg/MsgContentHook$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/msg/MsgContentHook;)V

    iput-object v0, p0, Lme/yxp/qfun/hook/msg/MsgContentHook;->mMenuClickListener:Lme/yxp/qfun/hook/api/OnMsgMenuOpen$OnMsgMenuClickListener;

    return-void
.end method

.method public startHook()V
    .registers 4

    .line 83
    sget-object v0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    check-cast v0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;

    const-string v1, "[QFun],,文本修改,2,9"

    iget-object v2, p0, Lme/yxp/qfun/hook/msg/MsgContentHook;->mMenuClickListener:Lme/yxp/qfun/hook/api/OnMsgMenuOpen$OnMsgMenuClickListener;

    invoke-virtual {v0, v1, v2}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->addListener(Ljava/lang/String;Lme/yxp/qfun/hook/api/OnMsgMenuOpen$OnMsgMenuClickListener;)V

    .line 84
    sget-object v0, Lme/yxp/qfun/hook/api/OnGetMsgRecord;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object p0, p0, Lme/yxp/qfun/hook/msg/MsgContentHook;->mGetMsgListener:Lme/yxp/qfun/hook/api/OnGetMsgRecord$GetMsgRecordListener;

    invoke-virtual {v0, p0}, Lme/yxp/qfun/hook/base/ApiHookItem;->addListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    return-void
.end method

.method public stopHook()V
    .registers 3

    .line 89
    sget-object v0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    check-cast v0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;

    const-string v1, "[QFun],,文本修改,2,9"

    invoke-virtual {v0, v1}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->removeListener(Ljava/lang/String;)V

    .line 90
    sget-object v0, Lme/yxp/qfun/hook/api/OnGetMsgRecord;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object p0, p0, Lme/yxp/qfun/hook/msg/MsgContentHook;->mGetMsgListener:Lme/yxp/qfun/hook/api/OnGetMsgRecord$GetMsgRecordListener;

    invoke-virtual {v0, p0}, Lme/yxp/qfun/hook/base/ApiHookItem;->removeListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    return-void
.end method
