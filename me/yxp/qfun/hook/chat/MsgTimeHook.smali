.class public final Lme/yxp/qfun/hook/chat/MsgTimeHook;
.super Lme/yxp/qfun/hook/base/BaseWithDataHookItem;
.source "MsgTimeHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;
    }
.end annotation

.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "显示消息时间"
    desc = "显示消息发送时间，点击可设置时间格式及颜色"
.end annotation


# static fields
.field private static final DATA_KEY:Ljava/lang/String; = "MsgTimeConfig"

.field private static final DEFAULT_COLOR:I = -0xffff01

.field private static final DEFAULT_FORMAT:Ljava/lang/String; = "HH:mm:ss"

.field private static final KEY_COLOR:Ljava/lang/String; = "color"

.field private static final KEY_FORMAT:Ljava/lang/String; = "format"


# instance fields
.field private mAddViewToMsgView:Lme/yxp/qfun/hook/api/OnAIOViewUpdate$AIOViewUpdateListener;

.field private mCurrentColor:I

.field private mCurrentFormat:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$PgpukIT9Dc9YCYyB4OUQSHfCv4M(Lme/yxp/qfun/hook/chat/MsgTimeHook;Landroid/widget/FrameLayout;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->setView(Landroid/widget/FrameLayout;Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentColor(Lme/yxp/qfun/hook/chat/MsgTimeHook;)I
    .registers 1

    .line 0
    iget p0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook;->mCurrentColor:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentFormat(Lme/yxp/qfun/hook/chat/MsgTimeHook;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook;->mCurrentFormat:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentColor(Lme/yxp/qfun/hook/chat/MsgTimeHook;I)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook;->mCurrentColor:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentFormat(Lme/yxp/qfun/hook/chat/MsgTimeHook;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook;->mCurrentFormat:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcolorToHex(Lme/yxp/qfun/hook/chat/MsgTimeHook;I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->colorToHex(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mparseColor(Lme/yxp/qfun/hook/chat/MsgTimeHook;Ljava/lang/String;)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseWithDataHookItem;-><init>()V

    const v0, -0xffff01

    .line 38
    iput v0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook;->mCurrentColor:I

    .line 39
    const-string v0, "HH:mm:ss"

    iput-object v0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook;->mCurrentFormat:Ljava/lang/String;

    return-void
.end method

.method private checkFormat(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 61
    :cond_4
    :try_start_4
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook;->mCurrentFormat:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 62
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_14

    const/4 p0, 0x1

    return p0

    :catch_14
    return v0
.end method

.method private colorToHex(I)Ljava/lang/String;
    .registers 2

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "#%08X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseColor(Ljava/lang/String;)I
    .registers 3

    .line 127
    const-string p0, "[^a-fA-F0-9]"

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_25

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#FF"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 130
    :cond_25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_43

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 133
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "必须是6位或8位十六进制值"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setView(Landroid/widget/FrameLayout;Ljava/lang/Object;)V
    .registers 7

    .line 93
    invoke-static {p2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p2

    const-string v0, "msgTime"

    invoke-virtual {p2, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p2

    invoke-virtual {p2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 94
    new-instance p2, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook;->mCurrentFormat:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 95
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 98
    :goto_2d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 99
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 100
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_4c

    .line 101
    check-cast v2, Landroid/widget/TextView;

    .line 102
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lme/yxp/qfun/hook/chat/MsgTimeHook;->checkFormat(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    move-object v0, v2

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_4f
    if-nez v0, :cond_75

    .line 109
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41200000  # 10.0f

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 111
    iget p0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook;->mCurrentColor:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p0, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x55

    .line 115
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 116
    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 118
    :cond_75
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 2

    .line 43
    new-instance v0, Lme/yxp/qfun/hook/chat/MsgTimeHook$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lme/yxp/qfun/hook/chat/MsgTimeHook$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/chat/MsgTimeHook;)V

    iput-object v0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook;->mAddViewToMsgView:Lme/yxp/qfun/hook/api/OnAIOViewUpdate$AIOViewUpdateListener;

    return-void
.end method

.method public initData()V
    .registers 3

    .line 71
    const-string v0, "data"

    const-string v1, "MsgTimeConfig"

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/data/DataUtils;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 73
    check-cast v0, Ljava/util/Map;

    .line 74
    const-string v1, "color"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook;->mCurrentColor:I

    .line 75
    const-string v1, "format"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook;->mCurrentFormat:Ljava/lang/String;

    :cond_24
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 89
    new-instance v0, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;-><init>(Lme/yxp/qfun/hook/chat/MsgTimeHook;Landroid/content/Context;)V

    invoke-virtual {v0}, Lme/yxp/qfun/hook/chat/MsgTimeHook$TimeFormatDialog;->show()V

    return-void
.end method

.method public savaData()V
    .registers 4

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    iget v1, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook;->mCurrentColor:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "format"

    iget-object p0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook;->mCurrentFormat:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string p0, "data"

    const-string v1, "MsgTimeConfig"

    invoke-static {p0, v1, v0}, Lme/yxp/qfun/utils/data/DataUtils;->serialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startHook()V
    .registers 2

    .line 48
    sget-object v0, Lme/yxp/qfun/hook/api/OnAIOViewUpdate;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object p0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook;->mAddViewToMsgView:Lme/yxp/qfun/hook/api/OnAIOViewUpdate$AIOViewUpdateListener;

    invoke-virtual {v0, p0}, Lme/yxp/qfun/hook/base/ApiHookItem;->addListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    return-void
.end method

.method public stopHook()V
    .registers 2

    .line 53
    sget-object v0, Lme/yxp/qfun/hook/api/OnAIOViewUpdate;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object p0, p0, Lme/yxp/qfun/hook/chat/MsgTimeHook;->mAddViewToMsgView:Lme/yxp/qfun/hook/api/OnAIOViewUpdate$AIOViewUpdateListener;

    invoke-virtual {v0, p0}, Lme/yxp/qfun/hook/base/ApiHookItem;->removeListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    return-void
.end method
