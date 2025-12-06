.class public Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;
.super Ljava/lang/Object;
.source "Xp51HookWrapper.java"

# interfaces
.implements Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/loader/xp51/Xp51HookWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Xp51HookParam"
.end annotation


# instance fields
.field private mExtra:Ljava/lang/Object;

.field private mParam:Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;


# direct methods
.method public static bridge synthetic -$$Nest$fputmExtra(Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;Ljava/lang/Object;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->mExtra:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmParam(Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->mParam:Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkLifecycle()V
    .registers 2

    .line 117
    iget-object p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->mParam:Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    if-eqz p0, :cond_5

    return-void

    .line 118
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "attempt to access hook param after destroyed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getArgs()[Ljava/lang/Object;
    .registers 1

    .line 73
    invoke-direct {p0}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->checkLifecycle()V

    .line 74
    iget-object p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->mParam:Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    iget-object p0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    return-object p0
.end method

.method public getExtra()Ljava/lang/Object;
    .registers 1

    .line 106
    invoke-direct {p0}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->checkLifecycle()V

    .line 107
    iget-object p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->mExtra:Ljava/lang/Object;

    return-object p0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .registers 1

    .line 59
    invoke-direct {p0}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->checkLifecycle()V

    .line 60
    iget-object p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->mParam:Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    iget-object p0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    return-object p0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 1

    .line 80
    invoke-direct {p0}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->checkLifecycle()V

    .line 81
    iget-object p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->mParam:Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    invoke-virtual {p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getThisObject()Ljava/lang/Object;
    .registers 1

    .line 66
    invoke-direct {p0}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->checkLifecycle()V

    .line 67
    iget-object p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->mParam:Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    iget-object p0, p0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 1

    .line 93
    invoke-direct {p0}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->checkLifecycle()V

    .line 94
    iget-object p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->mParam:Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    invoke-virtual {p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public setExtra(Ljava/lang/Object;)V
    .registers 2

    .line 112
    invoke-direct {p0}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->checkLifecycle()V

    .line 113
    iput-object p1, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->mExtra:Ljava/lang/Object;

    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .registers 2

    .line 86
    invoke-direct {p0}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->checkLifecycle()V

    .line 87
    iget-object p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->mParam:Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    invoke-virtual {p0, p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .registers 2

    .line 99
    invoke-direct {p0}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->checkLifecycle()V

    .line 100
    iget-object p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->mParam:Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    invoke-virtual {p0, p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    return-void
.end method
