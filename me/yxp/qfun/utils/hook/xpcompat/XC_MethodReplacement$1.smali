.class Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement$1;
.super Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;
.source "XC_MethodReplacement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;-><init>(I)V

    return-void
.end method


# virtual methods
.method public replaceHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method
