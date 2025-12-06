.class public interface abstract Lme/yxp/qfun/loader/hookapi/IHookBridge;
.super Ljava/lang/Object;
.source "IHookBridge.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/loader/hookapi/IHookBridge$MemberUnhookHandle;,
        Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;,
        Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;
    }
.end annotation


# static fields
.field public static final PRIORITY_DEFAULT:I = 0x32

.field public static final PRIORITY_HIGHEST:I = 0x2710

.field public static final PRIORITY_LOWEST:I = -0x2710


# virtual methods
.method public abstract deoptimize(Ljava/lang/reflect/Member;)Z
.end method

.method public abstract getApiLevel()I
.end method

.method public abstract getFrameworkName()Ljava/lang/String;
.end method

.method public abstract getFrameworkVersion()Ljava/lang/String;
.end method

.method public abstract getFrameworkVersionCode()J
.end method

.method public abstract getHookCounter()J
.end method

.method public abstract getHookedMethods()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hookMethod(Ljava/lang/reflect/Member;Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;I)Lme/yxp/qfun/loader/hookapi/IHookBridge$MemberUnhookHandle;
.end method

.method public abstract invokeOriginalConstructor(Ljava/lang/reflect/Constructor;Ljava/lang/Object;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;TT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract invokeOriginalMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract isDeoptimizationSupported()Z
.end method

.method public varargs abstract newInstanceOrigin(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method
