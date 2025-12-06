.class public final synthetic Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/javaplugin/api/PluginMethod;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda50;->f$0:Lme/yxp/qfun/javaplugin/api/PluginMethod;

    iput-object p2, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda50;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda50;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda50;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda50;->f$0:Lme/yxp/qfun/javaplugin/api/PluginMethod;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda50;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda50;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda50;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->$r8$lambda$WqXyGOgWgjk0PMv6vZXlvcTOjjo(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
