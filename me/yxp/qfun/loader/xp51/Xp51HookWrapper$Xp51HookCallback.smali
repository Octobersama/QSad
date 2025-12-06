.class public Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "Xp51HookWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/loader/xp51/Xp51HookWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Xp51HookCallback"
.end annotation


# instance fields
.field private mAlive:Z

.field private final mCallback:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;

.field private final mHookId:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAlive(Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;->mAlive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;)Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;->mCallback:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAlive(Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;->mAlive:Z

    return-void
.end method

.method public constructor <init>(Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;I)V
    .registers 5

    .line 130
    invoke-direct {p0, p2}, Lde/robv/android/xposed/XC_MethodHook;-><init>(I)V

    .line 126
    invoke-static {}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper;->-$$Nest$sfgetsNextHookId()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;->mHookId:J

    const/4 p2, 0x1

    .line 127
    iput-boolean p2, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;->mAlive:Z

    .line 131
    iput-object p1, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;->mCallback:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;

    return-void
.end method


# virtual methods
.method public afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 148
    iget-boolean v0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;->mAlive:Z

    if-nez v0, :cond_5

    return-void

    .line 151
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "qfun_hcb_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;->mHookId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getObjectExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;

    if-eqz v1, :cond_30

    .line 156
    iget-object p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;->mCallback:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;

    invoke-interface {p0, v1}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;->afterHookedMember(Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;)V

    const/4 p0, 0x0

    .line 158
    invoke-virtual {p1, v0, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    invoke-static {v1, p0}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->-$$Nest$fputmParam(Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    .line 160
    invoke-static {v1, p0}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->-$$Nest$fputmExtra(Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;Ljava/lang/Object;)V

    return-void

    .line 154
    :cond_30
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hcbParam is null, tag: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 136
    iget-boolean v0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;->mAlive:Z

    if-nez v0, :cond_5

    return-void

    .line 139
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "qfun_hcb_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;->mHookId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;

    invoke-direct {v1}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;-><init>()V

    .line 141
    invoke-static {v1, p1}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;->-$$Nest$fputmParam(Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    .line 142
    invoke-virtual {p1, v0, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    iget-object p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;->mCallback:Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;

    invoke-interface {p0, v1}, Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;->beforeHookedMember(Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookParam;)V

    return-void
.end method
