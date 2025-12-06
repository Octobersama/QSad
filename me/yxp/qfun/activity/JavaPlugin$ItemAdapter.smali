.class Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "JavaPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/activity/JavaPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lme/yxp/qfun/javaplugin/loader/PluginInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLayoutId:I

.field final synthetic this$0:Lme/yxp/qfun/activity/JavaPlugin;


# direct methods
.method public static synthetic $r8$lambda$7J5zLVJPn-t3wAocdGWoXHPmRN0(Landroid/widget/Switch;)V
    .registers 2

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$SHtBAokh5n7RCKAfDgikyu032VI(Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/widget/Switch;)V
    .registers 4

    .line 164
    :try_start_0
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

    invoke-virtual {v0}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->startPlugin()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 166
    invoke-static {v0, p0}, Lme/yxp/qfun/utils/error/PluginError;->evalError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    const/4 p0, 0x1

    .line 167
    const-string v0, "加载失败"

    invoke-static {p0, v0}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    .line 168
    new-instance p0, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter$$ExternalSyntheticLambda2;-><init>(Landroid/widget/Switch;)V

    const-wide/16 v0, 0xc8

    invoke-static {p0, v0, v1}, Lme/yxp/qfun/utils/thread/SyncUtils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$wlvYdAgTe5f_Mk9Z2GkXb9F1vH0(Landroid/widget/Switch;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/view/View;)V
    .registers 4

    .line 161
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 162
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/widget/Switch;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 170
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void

    .line 172
    :cond_14
    iget-object p0, p1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

    invoke-virtual {p0}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->stopPlugin()V

    return-void
.end method

.method public constructor <init>(Lme/yxp/qfun/activity/JavaPlugin;ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lme/yxp/qfun/javaplugin/loader/PluginInfo;",
            ">;)V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter;->this$0:Lme/yxp/qfun/activity/JavaPlugin;

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 140
    iput p2, p0, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter;->mLayoutId:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 146
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    if-nez p1, :cond_12

    .line 148
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 151
    :cond_12
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget p0, p0, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter;->mLayoutId:I

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 152
    sget p2, Lme/yxp/qfun/R$id;->pluginItemLinearLayout:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 153
    sget p3, Lme/yxp/qfun/R$id;->pluginItemTextView:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 154
    sget v0, Lme/yxp/qfun/R$id;->pluginItemSwitch:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 156
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object p2, p1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginName:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-boolean p2, p1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->isRunning:Z

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 160
    new-instance p2, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0, p1}, Lme/yxp/qfun/activity/JavaPlugin$ItemAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Switch;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method
