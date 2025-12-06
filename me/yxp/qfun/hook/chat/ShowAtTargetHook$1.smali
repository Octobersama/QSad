.class Lme/yxp/qfun/hook/chat/ShowAtTargetHook$1;
.super Landroid/text/style/ClickableSpan;
.source "ShowAtTargetHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yxp/qfun/hook/chat/ShowAtTargetHook;->setClickableSpan(Ljava/util/Map;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/yxp/qfun/hook/chat/ShowAtTargetHook;

.field final synthetic val$uin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lme/yxp/qfun/hook/chat/ShowAtTargetHook;Ljava/lang/String;)V
    .registers 3

    .line 119
    iput-object p1, p0, Lme/yxp/qfun/hook/chat/ShowAtTargetHook$1;->this$0:Lme/yxp/qfun/hook/chat/ShowAtTargetHook;

    iput-object p2, p0, Lme/yxp/qfun/hook/chat/ShowAtTargetHook$1;->val$uin:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 122
    iget-object p1, p0, Lme/yxp/qfun/hook/chat/ShowAtTargetHook$1;->this$0:Lme/yxp/qfun/hook/chat/ShowAtTargetHook;

    iget-object p0, p0, Lme/yxp/qfun/hook/chat/ShowAtTargetHook$1;->val$uin:Ljava/lang/String;

    invoke-static {p1, p0}, Lme/yxp/qfun/hook/chat/ShowAtTargetHook;->-$$Nest$mopenUserProfileCard(Lme/yxp/qfun/hook/chat/ShowAtTargetHook;Ljava/lang/String;)V

    return-void
.end method
