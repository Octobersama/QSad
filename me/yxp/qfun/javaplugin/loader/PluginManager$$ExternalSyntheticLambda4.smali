.class public final synthetic Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lme/yxp/qfun/javaplugin/loader/PluginManager;->$r8$lambda$Qr2pRY9PGTZ7Mk-f4pyol_tlldg(Ljava/io/File;)Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    move-result-object p0

    return-object p0
.end method
