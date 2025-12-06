.class public final synthetic Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/javaplugin/api/PluginMethod;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda3;->f$0:Lme/yxp/qfun/javaplugin/api/PluginMethod;

    iput-object p2, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput p4, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda3;->f$0:Lme/yxp/qfun/javaplugin/api/PluginMethod;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda3;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->$r8$lambda$7_E28R6xTLJlIeqiK63E9_n9GYQ(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
