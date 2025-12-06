.class public final synthetic Lme/yxp/qfun/hook/api/OnMsgMenuOpen$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lme/yxp/qfun/utils/hook/HookUtils$Replacement;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/hook/api/OnMsgMenuOpen;

.field public final synthetic f$1:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/hook/api/OnMsgMenuOpen;Ljava/lang/Class;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen$$ExternalSyntheticLambda1;->f$0:Lme/yxp/qfun/hook/api/OnMsgMenuOpen;

    iput-object p2, p0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final execute(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen$$ExternalSyntheticLambda1;->f$0:Lme/yxp/qfun/hook/api/OnMsgMenuOpen;

    iget-object p0, p0, Lme/yxp/qfun/hook/api/OnMsgMenuOpen$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Class;

    invoke-static {v0, p0, p1}, Lme/yxp/qfun/hook/api/OnMsgMenuOpen;->$r8$lambda$wL8GxCnqDogDGYjAKyRnn9yHYSE(Lme/yxp/qfun/hook/api/OnMsgMenuOpen;Ljava/lang/Class;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
