.class Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement$2;
.super Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;
.source "XC_MethodReplacement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;->returnConstant(ILjava/lang/Object;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 48
    iput-object p2, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;-><init>(I)V

    return-void
.end method


# virtual methods
.method public replaceHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 2

    .line 51
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement$2;->val$result:Ljava/lang/Object;

    return-object p0
.end method
