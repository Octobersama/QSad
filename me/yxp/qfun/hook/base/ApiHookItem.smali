.class public abstract Lme/yxp/qfun/hook/base/ApiHookItem;
.super Ljava/lang/Object;
.source "ApiHookItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/hook/base/ApiHookItem$Listener;
    }
.end annotation


# instance fields
.field public mListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lme/yxp/qfun/hook/base/ApiHookItem$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/hook/base/ApiHookItem;->mListenerSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final addListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V
    .registers 2

    .line 13
    iget-object p0, p0, Lme/yxp/qfun/hook/base/ApiHookItem;->mListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract loadHook()V
.end method

.method public final removeListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V
    .registers 2

    .line 17
    iget-object p0, p0, Lme/yxp/qfun/hook/base/ApiHookItem;->mListenerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
