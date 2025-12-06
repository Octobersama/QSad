.class public Lme/yxp/qfun/javaplugin/view/PluginView;
.super Ljava/lang/Object;
.source "PluginView.java"


# instance fields
.field private mButtonHeight:I

.field private mButtonWidth:I

.field private mChatType:I

.field private mContact:Ljava/lang/Object;

.field private mCurrentX:I

.field private mCurrentY:I

.field private mFloatingButton:Landroid/widget/LinearLayout;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIsDragging:Z

.field private mPeerName:Ljava/lang/String;

.field private mPeerUin:Ljava/lang/String;

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public static synthetic $r8$lambda$4sF5gfGGfjjJQc0zxv8up3V5ymA(Lme/yxp/qfun/javaplugin/view/PluginView;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/view/PluginView;->lambda$addMenuItemToPlugin$4(Lme/yxp/qfun/javaplugin/loader/PluginInfo;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KMpR1ffRLaR_Ks6BUvO9GhbPSR8(Landroid/widget/TextView;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V
    .registers 6

    const-wide/16 v0, 0x64

    .line 203
    :try_start_2
    new-instance v2, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda2;-><init>(Landroid/widget/TextView;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    invoke-static {v2}, Lme/yxp/qfun/utils/thread/SyncUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 206
    iget-object v2, p1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

    invoke-virtual {v2}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->startPlugin()V
    :try_end_f
    .catch Lbsh/EvalError; {:try_start_2 .. :try_end_f} :catch_1a
    .catchall {:try_start_2 .. :try_end_f} :catchall_18

    .line 210
    new-instance v2, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda3;-><init>(Landroid/widget/TextView;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    :goto_14
    invoke-static {v2, v0, v1}, Lme/yxp/qfun/utils/thread/SyncUtils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    :catchall_18
    move-exception v2

    goto :goto_24

    :catch_1a
    move-exception v2

    .line 208
    :try_start_1b
    invoke-static {v2, p1}, Lme/yxp/qfun/utils/error/PluginError;->evalError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    .line 210
    new-instance v2, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda3;-><init>(Landroid/widget/TextView;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    goto :goto_14

    :goto_24
    new-instance v3, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda3;-><init>(Landroid/widget/TextView;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    invoke-static {v3, v0, v1}, Lme/yxp/qfun/utils/thread/SyncUtils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 212
    throw v2
.end method

.method public static synthetic $r8$lambda$NNmMFntRcdGKAP2kzgIEKqZjHus(Landroid/widget/TextView;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/view/View;)V
    .registers 4

    .line 201
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda5;-><init>(Landroid/widget/TextView;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 213
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic $r8$lambda$QQHbkjY80Yh6J3nPix7gM3E_V6M(Lme/yxp/qfun/javaplugin/view/PluginView;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/javaplugin/view/PluginView;->lambda$showFloatingButton$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dKVl8bDQM-AE021rJFdakoIa_jM(Landroid/widget/TextView;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V
    .registers 2

    .line 211
    iget-object p1, p1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i2k0AAy9UQl4vrx6M07wc5ctdcw(Landroid/widget/TextView;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V
    .registers 3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(加载中...)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentX(Lme/yxp/qfun/javaplugin/view/PluginView;)I
    .registers 1

    .line 0
    iget p0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mCurrentX:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentY(Lme/yxp/qfun/javaplugin/view/PluginView;)I
    .registers 1

    .line 0
    iget p0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mCurrentY:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInitialTouchX(Lme/yxp/qfun/javaplugin/view/PluginView;)F
    .registers 1

    .line 0
    iget p0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mInitialTouchX:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInitialTouchY(Lme/yxp/qfun/javaplugin/view/PluginView;)F
    .registers 1

    .line 0
    iget p0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mInitialTouchY:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDragging(Lme/yxp/qfun/javaplugin/view/PluginView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mIsDragging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPopupWindow(Lme/yxp/qfun/javaplugin/view/PluginView;)Landroid/widget/PopupWindow;
    .registers 1

    .line 0
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentX(Lme/yxp/qfun/javaplugin/view/PluginView;I)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mCurrentX:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentY(Lme/yxp/qfun/javaplugin/view/PluginView;I)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mCurrentY:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInitialTouchX(Lme/yxp/qfun/javaplugin/view/PluginView;F)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mInitialTouchX:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInitialTouchY(Lme/yxp/qfun/javaplugin/view/PluginView;F)V
    .registers 2

    .line 0
    iput p1, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mInitialTouchY:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsDragging(Lme/yxp/qfun/javaplugin/view/PluginView;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mIsDragging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowMenu(Lme/yxp/qfun/javaplugin/view/PluginView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lme/yxp/qfun/javaplugin/view/PluginView;->showMenu()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mCurrentX:I

    .line 32
    iput v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mCurrentY:I

    .line 37
    iput-boolean v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mIsDragging:Z

    return-void
.end method

.method private addMenuItemToPlugin(Landroid/app/Activity;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 224
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lme/yxp/qfun/R$layout;->pluginmenuitem:I

    const/4 v1, 0x0

    .line 225
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 226
    sget v0, Lme/yxp/qfun/R$id;->pluginmenuitemButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 227
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    new-instance p4, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p2, p5}, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/javaplugin/view/PluginView;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addPluginToMenu(Landroid/app/Activity;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/widget/LinearLayout;)V
    .registers 12

    .line 194
    iget-object v0, p2, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

    iget-object v0, v0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->itemMap:Ljava/util/Map;

    .line 195
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 197
    :cond_b
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lme/yxp/qfun/R$layout;->pluginmenu:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    .line 198
    sget v1, Lme/yxp/qfun/R$id;->pluginNameTextView:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 199
    iget-object v2, p2, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    new-instance v2, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p2}, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda4;-><init>(Landroid/widget/TextView;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 216
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lme/yxp/qfun/javaplugin/view/PluginView;->addMenuItemToPlugin(Landroid/app/Activity;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 219
    :cond_57
    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createPopupWindow(Landroid/app/Activity;)V
    .registers 5

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lme/yxp/qfun/R$layout;->pluginfloatview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 88
    sget v0, Lme/yxp/qfun/R$id;->float_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mFloatingButton:Landroid/widget/LinearLayout;

    .line 90
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 92
    iget v1, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mButtonWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 93
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mButtonHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 95
    invoke-virtual {p1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mButtonWidth:I

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mButtonHeight:I

    return-void
.end method

.method private extractIntentData(Landroid/app/Activity;)V
    .registers 5

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_4b

    .line 59
    :cond_b
    const-string v0, "key_chat_type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mChatType:I

    const/4 v1, 0x2

    .line 60
    const-string v2, "key_peerId"

    if-ne v0, v1, :cond_1d

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 61
    :cond_1d
    const-string v0, "key_peerUin"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_27
    iput-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mPeerUin:Ljava/lang/String;

    .line 62
    const-string v0, "key_chat_name"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mPeerName:Ljava/lang/String;

    .line 65
    :try_start_31
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_Contact()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mChatType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 66
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 65
    invoke-static {v0, p1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mContact:Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4b} :catch_4b

    :catch_4b
    :goto_4b
    return-void
.end method

.method private initButtonDimensions(Landroid/app/Activity;)V
    .registers 4

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41c80000  # 25.0f

    .line 81
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mButtonWidth:I

    .line 83
    iput p1, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mButtonHeight:I

    return-void
.end method

.method private synthetic lambda$addMenuItemToPlugin$4(Lme/yxp/qfun/javaplugin/loader/PluginInfo;Ljava/lang/String;Landroid/view/View;)V
    .registers 6

    .line 229
    iget-object p1, p1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

    iget-object p1, p1, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget p3, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mChatType:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mPeerUin:Ljava/lang/String;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mPeerName:Ljava/lang/String;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mContact:Ljava/lang/Object;

    filled-new-array {p3, v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->invokeItem(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showFloatingButton$5(Landroid/view/View;)V
    .registers 5

    .line 243
    iget v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mCurrentX:I

    if-nez v0, :cond_18

    iget v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mCurrentY:I

    if-nez v0, :cond_18

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mCurrentX:I

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mCurrentY:I

    .line 247
    :cond_18
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mCurrentX:I

    iget p0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mCurrentY:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, p0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private notifyPluginsChatInterface()V
    .registers 6

    .line 73
    sget-object v0, Lme/yxp/qfun/javaplugin/loader/PluginManager;->pluginInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    .line 74
    iget-boolean v2, v1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->isRunning:Z

    if-eqz v2, :cond_6

    .line 75
    iget-object v1, v1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

    iget-object v1, v1, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginCallback:Lme/yxp/qfun/javaplugin/api/PluginCallback;

    iget v2, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mChatType:I

    iget-object v3, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mPeerUin:Ljava/lang/String;

    iget-object v4, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mPeerName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lme/yxp/qfun/javaplugin/api/PluginCallback;->chatInterface(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_24
    return-void
.end method

.method private setupTouchListener(Landroid/app/Activity;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mFloatingButton:Landroid/widget/LinearLayout;

    new-instance v1, Lme/yxp/qfun/javaplugin/view/PluginView$1;

    invoke-direct {v1, p0, p1}, Lme/yxp/qfun/javaplugin/view/PluginView$1;-><init>(Lme/yxp/qfun/javaplugin/view/PluginView;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private showMenu()V
    .registers 7

    .line 174
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const v1, 0x1020002

    .line 177
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 178
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lme/yxp/qfun/R$layout;->pluginpopupview:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 179
    sget v3, Lme/yxp/qfun/R$id;->pluginitemholder:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 181
    sget-object v4, Lme/yxp/qfun/javaplugin/loader/PluginManager;->pluginInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    .line 182
    invoke-direct {p0, v0, v5, v3}, Lme/yxp/qfun/javaplugin/view/PluginView;->addPluginToMenu(Landroid/app/Activity;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/widget/LinearLayout;)V

    goto :goto_29

    .line 185
    :cond_39
    new-instance p0, Landroid/widget/PopupWindow;

    const/4 v0, -0x1

    const/4 v3, -0x2

    invoke-direct {p0, v2, v0, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v0, 0x1

    .line 187
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 188
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 189
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/16 v0, 0x50

    const/4 v2, 0x0

    .line 190
    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public dismissFloatButton()V
    .registers 2

    .line 252
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_5

    return-void

    .line 253
    :cond_5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mPopupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method public initPopupWindow()V
    .registers 2

    .line 44
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 47
    :cond_7
    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/view/PluginView;->extractIntentData(Landroid/app/Activity;)V

    .line 48
    invoke-direct {p0}, Lme/yxp/qfun/javaplugin/view/PluginView;->notifyPluginsChatInterface()V

    .line 49
    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/view/PluginView;->initButtonDimensions(Landroid/app/Activity;)V

    .line 50
    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/view/PluginView;->createPopupWindow(Landroid/app/Activity;)V

    .line 51
    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/view/PluginView;->setupTouchListener(Landroid/app/Activity;)V

    return-void
.end method

.method public showFloatingButton()V
    .registers 3

    .line 236
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_21

    .line 238
    :cond_b
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_21

    :cond_12
    const v1, 0x1020002

    .line 241
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 242
    new-instance v1, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lme/yxp/qfun/javaplugin/view/PluginView$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/javaplugin/view/PluginView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_21
    :goto_21
    return-void
.end method
