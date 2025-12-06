.class public final synthetic Lme/yxp/qfun/hook/entry/QQHomeInject$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lme/yxp/qfun/utils/hook/HookUtils$Hooker;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/hook/entry/QQHomeInject$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final execute(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lme/yxp/qfun/hook/entry/QQHomeInject$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    invoke-static {p0, p1}, Lme/yxp/qfun/hook/entry/QQHomeInject;->$r8$lambda$KdRFMgWzEuRU0uSwlM5qNVGq4yA(Ljava/lang/Class;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method
