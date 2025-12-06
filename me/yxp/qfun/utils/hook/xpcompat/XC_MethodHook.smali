.class public abstract Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;
.super Ljava/lang/Object;
.source "XC_MethodHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;,
        Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;
    }
.end annotation


# instance fields
.field private final priority:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 21
    iput v0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;->priority:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;->priority:I

    return-void
.end method


# virtual methods
.method public afterHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    return-void
.end method

.method public beforeHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    return-void
.end method

.method public getPriority()I
    .registers 1

    .line 38
    iget p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;->priority:I

    return p0
.end method
