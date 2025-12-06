.class public final Lme/yxp/qfun/hook/msg/RepeatMsgHook;
.super Lme/yxp/qfun/hook/base/BaseWithDataHookItem;
.source "RepeatMsgHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "消息复读"
    desc = "部分特殊消息无法复读，点击可自定义加一图标"
.end annotation


# static fields
.field public static sBitmap:Landroid/graphics/Bitmap;

.field private static sGetMsgMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$Pn0XrJ3Lzx4-dfX_sAOiRWQyMQ4(Lme/yxp/qfun/hook/msg/RepeatMsgHook;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lme/yxp/qfun/hook/msg/RepeatMsgHook;->lambda$initCallback$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cD-sZtTUlQ6-BS9IUkgrLO1PxSk(Lme/yxp/qfun/hook/msg/RepeatMsgHook;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/msg/RepeatMsgHook;->lambda$initCallback$1(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseWithDataHookItem;-><init>()V

    return-void
.end method

.method private synthetic lambda$initCallback$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Landroid/view/View;)V
    .registers 3

    .line 64
    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/msg/RepeatMsgHook;->sendMsg(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$initCallback$1(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 53
    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-class v1, Lkotlin/Lazy;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getValue"

    invoke-static {v0, v3, v2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 56
    sget-object v2, Lme/yxp/qfun/hook/msg/RepeatMsgHook;->sBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_32

    .line 57
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lme/yxp/qfun/hook/msg/RepeatMsgHook;->sBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_37

    .line 59
    :cond_32
    sget v2, Lme/yxp/qfun/R$drawable;->repeat:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    :goto_37
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MultiForwardActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4c

    return-void

    .line 64
    :cond_4c
    new-instance v2, Lme/yxp/qfun/hook/msg/RepeatMsgHook$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lme/yxp/qfun/hook/msg/RepeatMsgHook$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/msg/RepeatMsgHook;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private sendMsg(Ljava/lang/Object;)V
    .registers 3

    .line 71
    :try_start_0
    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    .line 72
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_MsgRecord()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    .line 73
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgItem()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->inParent(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 76
    new-instance v0, Lme/yxp/qfun/javaplugin/api/MsgData;

    invoke-direct {v0, p1}, Lme/yxp/qfun/javaplugin/api/MsgData;-><init>(Ljava/lang/Object;)V

    .line 77
    invoke-static {v0}, Lme/yxp/qfun/utils/qq/MsgTool;->repeatByMsgRecord(Lme/yxp/qfun/javaplugin/api/MsgData;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p1

    .line 79
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 4

    .line 51
    sget-object v0, Lme/yxp/qfun/hook/msg/RepeatMsgHook;->sGetMsgMethod:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/msg/RepeatMsgHook$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/msg/RepeatMsgHook$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/msg/RepeatMsgHook;)V

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->hookIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method

.method public initData()V
    .registers 2

    .line 85
    const-string p0, "data"

    const-string v0, "repeat"

    invoke-static {p0, v0}, Lme/yxp/qfun/utils/data/DataUtils;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/msg/RepeatMsgHook;->sBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public initMethod()Z
    .registers 4

    .line 40
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgFollowComponent()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 41
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 42
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgItem()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/List;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/msg/RepeatMsgHook;->sGetMsgMethod:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 106
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v0, "image/*"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public savaData()V
    .registers 5

    .line 91
    const-string v0, "data"

    const-string v1, "repeat"

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/data/DataUtils;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 93
    :try_start_8
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_15

    .line 94
    :try_start_d
    sget-object v0, Lme/yxp/qfun/hook/msg/RepeatMsgHook;->sBitmap:Landroid/graphics/Bitmap;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_22

    if-nez v0, :cond_17

    .line 99
    :goto_11
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    goto :goto_2c

    .line 97
    :cond_17
    :try_start_17
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 98
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_22

    goto :goto_11

    :catchall_22
    move-exception v0

    .line 93
    :try_start_23
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v1

    :try_start_28
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2b
    throw v0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_15

    .line 100
    :goto_2c
    invoke-static {p0, v0}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    return-void
.end method
