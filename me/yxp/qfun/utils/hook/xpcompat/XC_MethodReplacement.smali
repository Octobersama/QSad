.class public abstract Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;
.super Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;
.source "XC_MethodReplacement.java"


# static fields
.field public static final DO_NOTHING:Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 9
    new-instance v0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement$1;

    const/16 v1, 0x4e20

    invoke-direct {v0, v1}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement$1;-><init>(I)V

    sput-object v0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;->DO_NOTHING:Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;-><init>(I)V

    return-void
.end method

.method public static returnConstant(ILjava/lang/Object;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;
    .registers 3

    .line 48
    new-instance v0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement$2;

    invoke-direct {v0, p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement$2;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static returnConstant(Ljava/lang/Object;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;
    .registers 2

    const/16 v0, 0x32

    .line 38
    invoke-static {v0, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;->returnConstant(ILjava/lang/Object;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final afterHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final beforeHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 59
    :try_start_0
    invoke-virtual {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;->replaceHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object p0

    .line 60
    invoke-virtual {p1, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception p0

    .line 62
    invoke-virtual {p1, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract replaceHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
.end method
