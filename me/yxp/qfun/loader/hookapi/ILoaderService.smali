.class public interface abstract Lme/yxp/qfun/loader/hookapi/ILoaderService;
.super Ljava/lang/Object;
.source "ILoaderService.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract getClassLoaderHelper()Lme/yxp/qfun/loader/hookapi/IClassLoaderHelper;
.end method

.method public abstract getEntryPointName()Ljava/lang/String;
.end method

.method public abstract getLoaderVersionCode()I
.end method

.method public abstract getLoaderVersionName()Ljava/lang/String;
.end method

.method public abstract getMainModulePath()Ljava/lang/String;
.end method

.method public abstract log(Ljava/lang/String;)V
.end method

.method public abstract log(Ljava/lang/Throwable;)V
.end method

.method public varargs abstract queryExtension(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract setClassLoaderHelper(Lme/yxp/qfun/loader/hookapi/IClassLoaderHelper;)V
.end method
