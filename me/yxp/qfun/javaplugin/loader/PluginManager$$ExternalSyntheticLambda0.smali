.class public final synthetic Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lme/yxp/qfun/javaplugin/loader/PluginManager;->$r8$lambda$RU4JYttCTXViNR8pPCT4FtcajPg(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
