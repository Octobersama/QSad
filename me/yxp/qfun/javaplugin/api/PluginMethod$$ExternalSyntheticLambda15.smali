.class public final synthetic Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda15;->f$0:I

    iput-object p2, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda15;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget v0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda15;->f$0:I

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda15;->f$2:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->$r8$lambda$YfVP_v0gyTC1kevp1cxYUuTJrZY(ILjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
