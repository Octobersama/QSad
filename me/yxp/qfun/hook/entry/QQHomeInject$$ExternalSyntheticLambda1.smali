.class public final synthetic Lme/yxp/qfun/hook/entry/QQHomeInject$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/hook/entry/QQHomeInject$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object p0, p0, Lme/yxp/qfun/hook/entry/QQHomeInject$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/hook/entry/QQHomeInject;->$r8$lambda$-ikTlMqEjavTB6zC8VZ9NzA3HLk(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
