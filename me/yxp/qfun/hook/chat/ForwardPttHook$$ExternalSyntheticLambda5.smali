.class public final synthetic Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/hook/chat/ForwardPttHook;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/hook/chat/ForwardPttHook;Ljava/lang/String;ILjava/util/ArrayList;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda5;->f$0:Lme/yxp/qfun/hook/chat/ForwardPttHook;

    iput-object p2, p0, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput p3, p0, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda5;->f$2:I

    iput-object p4, p0, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda5;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda5;->f$0:Lme/yxp/qfun/hook/chat/ForwardPttHook;

    iget-object v1, p0, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget v2, p0, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda5;->f$2:I

    iget-object p0, p0, Lme/yxp/qfun/hook/chat/ForwardPttHook$$ExternalSyntheticLambda5;->f$3:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p0}, Lme/yxp/qfun/hook/chat/ForwardPttHook;->$r8$lambda$N2AutVFgp1uVBdNaBxuk9BeFruA(Lme/yxp/qfun/hook/chat/ForwardPttHook;Ljava/lang/String;ILjava/util/ArrayList;)V

    return-void
.end method
