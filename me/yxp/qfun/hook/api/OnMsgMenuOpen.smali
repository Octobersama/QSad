.class public final Lme/yxp/qfun/hook/api/OnMsgMenuOpen;
.super Lme/yxp/qfun/hook/base/ApiHookItem;
.source "OnMsgMenuOpen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/hook/api/OnMsgMenuOpen$OnMsgMenuClickListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

.field private static final PREFIX:Ljava/lang/String; = "[QFun]"


# instance fields
.field private final mActionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lme/yxp/qfun/hook/api/OnMsgMenuOpen$OnMsgMenuClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DLBrdjK8mZmQCUalNaALsycGB9g(Lme/yxp/qfun/hook/api/OnMsgMenuOpen;Ljava/lang/String;Ljava/lang/Object;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->lambda$createMenuItemView$2(Ljava/lang/String;Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_i_4k5W5vinwvpgg44B1TcODRMY(Lme/yxp/qfun/hook/api/OnMsgMenuOpen;Ljava/lang/Class;Ljava/lang/Class;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->lambda$loadHook$0(Ljava/lang/Class;Ljava/lang/Class;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wL8GxCnqDogDGYjAKyRnn9yHYSE(Lme/yxp/qfun/hook/api/OnMsgMenuOpen;Ljava/lang/Class;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->lambda$loadHook$1(Ljava/lang/Class;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;

    invoke-direct {v0}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;-><init>()V

    sput-object v0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/ApiHookItem;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->mActionMap:Ljava/util/Map;

    return-void
.end method

.method private addMenuItem(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 104
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getActivity()Landroid/app/Activity;

    move-result-object p0

    filled-new-array {p0, p5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 105
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p2

    sget-object p5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 106
    invoke-virtual {p2, p5}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p2

    .line 107
    invoke-virtual {p2, p3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->inParent(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p2

    .line 108
    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p5}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    .line 109
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p2

    sget-object p5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 110
    invoke-virtual {p2, p5}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p2

    .line 111
    invoke-virtual {p2, p3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->inParent(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p2

    const/4 p3, 0x0

    .line 112
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p2, p5}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    .line 113
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p2

    const-class p5, Ljava/lang/String;

    .line 114
    invoke-virtual {p2, p5}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p2

    .line 115
    invoke-virtual {p2, p4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    .line 116
    invoke-interface {p1, p3, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private containsItem(Ljava/util/List;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 140
    const-class p0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/utils/dexkit/DexKit;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, p0, :cond_1f

    goto :goto_e

    .line 147
    :cond_1f
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    .line 148
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method private createMenuItemView(Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;
    .registers 7

    .line 120
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lme/yxp/qfun/R$layout;->msgmenuitem:I

    const/4 v2, 0x0

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 123
    sget v1, Lme/yxp/qfun/R$id;->msgmenuitemTextView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 125
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 126
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    new-instance v1, Lme/yxp/qfun/hook/api/OnMsgMenuOpen$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen$$ExternalSyntheticLambda2;-><init>(Lme/yxp/qfun/hook/api/OnMsgMenuOpen;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private synthetic lambda$createMenuItemView$2(Ljava/lang/String;Ljava/lang/Object;Landroid/view/View;)V
    .registers 4

    .line 130
    :try_start_0
    iget-object p0, p0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->mActionMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen$OnMsgMenuClickListener;

    new-instance p1, Lme/yxp/qfun/javaplugin/api/MsgData;

    invoke-direct {p1, p2}, Lme/yxp/qfun/javaplugin/api/MsgData;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen$OnMsgMenuClickListener;->onClick(Lme/yxp/qfun/javaplugin/api/MsgData;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception p0

    .line 132
    const-class p1, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$loadHook$0(Ljava/lang/Class;Ljava/lang/Class;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 12

    .line 47
    iget-object v0, p3, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-class v2, Ljava/util/List;

    .line 48
    invoke-virtual {v0, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    iget-object p3, p3, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p3, p3, v1

    .line 49
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {v0, p3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->inParent(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p3

    .line 50
    invoke-virtual {p3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Ljava/util/List;

    .line 51
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p3

    .line 52
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgItem()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p3

    .line 53
    invoke-virtual {p3, p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->inParent(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p3

    .line 54
    invoke-virtual {p3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 55
    invoke-static {v7}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p3

    .line 56
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_MsgRecord()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p3

    .line 57
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgItem()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->inParent(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p3

    .line 58
    invoke-virtual {p3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p3

    .line 59
    invoke-static {p3}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p3

    const-string v0, "msgType"

    .line 60
    invoke-virtual {p3, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p3

    .line 61
    invoke-virtual {p3}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p3

    .line 62
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 64
    iget-object v0, p0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->mActionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 65
    invoke-direct {p0, v3, v6}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->containsItem(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    goto :goto_72

    .line 69
    :cond_86
    const-string v1, ","

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 70
    array-length v4, v1

    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 72
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a5

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    goto :goto_72

    :cond_a5
    move-object v2, p0

    move-object v5, p1

    move-object v4, p2

    .line 76
    invoke-direct/range {v2 .. v7}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->addMenuItem(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    move-object p0, v2

    move-object p2, v4

    move-object p1, v5

    goto :goto_72

    :cond_af
    return-void
.end method

.method private synthetic lambda$loadHook$1(Ljava/lang/Class;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 6

    .line 81
    iget-object v0, p2, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 82
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    .line 83
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgItem()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    .line 84
    invoke-virtual {v1, p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->inParent(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 86
    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    .line 87
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_MsgRecord()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    .line 88
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgItem()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->inParent(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 90
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[QFun]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    goto :goto_57

    .line 98
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->createMenuItemView(Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 95
    :cond_57
    :goto_57
    iget-object p0, p2, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object p1, p2, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p2, p2, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addListener(Ljava/lang/String;Lme/yxp/qfun/hook/api/OnMsgMenuOpen$OnMsgMenuClickListener;)V
    .registers 3

    .line 160
    iget-object p0, p0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->mActionMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public loadHook()V
    .registers 8

    .line 35
    const-class v0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/yxp/qfun/utils/dexkit/DexKit;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 38
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_QQCustomMenuExpandableLayout()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    const-string v3, "setMenu"

    .line 39
    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 41
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_QQCustomMenuExpandableLayout()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v3

    const-class v4, Landroid/view/View;

    .line 42
    invoke-virtual {v3, v4}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v5, [F

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v6, v0, v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    .line 43
    invoke-virtual {v3, v4}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v3

    .line 46
    new-instance v4, Lme/yxp/qfun/hook/api/OnMsgMenuOpen$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, v0}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/api/OnMsgMenuOpen;Ljava/lang/Class;Ljava/lang/Class;)V

    const/4 v0, 0x0

    invoke-static {v2, v4, v0}, Lme/yxp/qfun/utils/hook/HookUtils;->hookAlways(Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    .line 80
    new-instance v0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/api/OnMsgMenuOpen;Ljava/lang/Class;)V

    invoke-static {v3, v0}, Lme/yxp/qfun/utils/hook/HookUtils;->replaceAlways(Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V

    return-void
.end method

.method public removeListener(Ljava/lang/String;)V
    .registers 2

    .line 164
    iget-object p0, p0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->mActionMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
