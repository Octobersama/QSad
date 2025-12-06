.class public interface abstract Lme/yxp/qfun/loader/hookapi/IHookBridge$MemberUnhookHandle;
.super Ljava/lang/Object;
.source "IHookBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/loader/hookapi/IHookBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MemberUnhookHandle"
.end annotation


# virtual methods
.method public abstract getCallback()Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;
.end method

.method public abstract getMember()Ljava/lang/reflect/Member;
.end method

.method public abstract isHookActive()Z
.end method

.method public abstract unhook()V
.end method
