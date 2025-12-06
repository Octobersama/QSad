.class Lme/yxp/qfun/javaplugin/loader/LoadJarHelper$FixJarClassLoader;
.super Ljava/lang/ClassLoader;
.source "LoadJarHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/javaplugin/loader/LoadJarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixJarClassLoader"
.end annotation


# instance fields
.field private final mParent:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 2

    .line 87
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 88
    iput-object p1, p0, Lme/yxp/qfun/javaplugin/loader/LoadJarHelper$FixJarClassLoader;->mParent:Ljava/lang/ClassLoader;

    return-void
.end method
