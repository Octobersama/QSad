.class public final synthetic Lme/yxp/qfun/hook/msg/RevokeMsgHook$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput p4, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget p0, p0, Lme/yxp/qfun/hook/msg/RevokeMsgHook$$ExternalSyntheticLambda2;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lme/yxp/qfun/hook/msg/RevokeMsgHook;->$r8$lambda$B3Z_voqVNK9uT6777EXtwAsnrNI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
