.class public final synthetic Lme/yxp/qfun/utils/qq/MsgTool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/javaplugin/api/MsgData;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/javaplugin/api/MsgData;JLjava/lang/Object;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/utils/qq/MsgTool$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/javaplugin/api/MsgData;

    iput-wide p2, p0, Lme/yxp/qfun/utils/qq/MsgTool$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lme/yxp/qfun/utils/qq/MsgTool$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/utils/qq/MsgTool$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/javaplugin/api/MsgData;

    iget-wide v1, p0, Lme/yxp/qfun/utils/qq/MsgTool$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lme/yxp/qfun/utils/qq/MsgTool$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lme/yxp/qfun/utils/qq/MsgTool;->$r8$lambda$u3MXpTCB3tGVPXdiyE4kFZphxag(Lme/yxp/qfun/javaplugin/api/MsgData;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
