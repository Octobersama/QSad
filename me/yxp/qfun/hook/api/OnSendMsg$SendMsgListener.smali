.class public interface abstract Lme/yxp/qfun/hook/api/OnSendMsg$SendMsgListener;
.super Ljava/lang/Object;
.source "OnSendMsg.java"

# interfaces
.implements Lme/yxp/qfun/hook/base/ApiHookItem$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/hook/api/OnSendMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SendMsgListener"
.end annotation


# virtual methods
.method public abstract onSend(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;)V"
        }
    .end annotation
.end method
