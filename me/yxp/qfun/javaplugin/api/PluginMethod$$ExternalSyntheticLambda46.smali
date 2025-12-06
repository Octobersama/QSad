.class public final synthetic Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda46;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda46;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda46;->f$0:Ljava/lang/Object;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda46;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->$r8$lambda$iOeim0XM9qKArJzw6Na4QsxH9eI(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
