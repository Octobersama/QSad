.class public final synthetic Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda9;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iget-boolean p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda9;->f$1:Z

    invoke-static {v0, p0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->$r8$lambda$P6ejjqv3273dbZ_Y0x05qqspx4A(Ljava/lang/String;Z)V

    return-void
.end method
