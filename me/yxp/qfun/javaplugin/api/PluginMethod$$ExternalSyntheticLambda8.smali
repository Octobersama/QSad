.class public final synthetic Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda8;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-boolean p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda8;->f$2:Z

    invoke-static {v0, v1, p0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->$r8$lambda$wnYTfXWDyBF5PZyv2U_KCku4pJM(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
