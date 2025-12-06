.class public Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51UnhookHandle;
.super Ljava/lang/Object;
.source "Xp51HookWrapper.java"

# interfaces
.implements Lme/yxp/qfun/loader/hookapi/IHookBridge$MemberUnhookHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/loader/xp51/Xp51HookWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Xp51UnhookHandle"
.end annotation


# instance fields
.field private final mCallback:Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;

.field private final mMember:Ljava/lang/reflect/Member;

.field private final mUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;


# direct methods
.method public constructor <init>(Lde/robv/android/xposed/XC_MethodHook$Unhook;Ljava/lang/reflect/Member;Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;)V
    .registers 4

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51UnhookHandle;->mUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 172
    iput-object p2, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51UnhookHandle;->mMember:Ljava/lang/reflect/Member;

    .line 173
    iput-object p3, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51UnhookHandle;->mCallback:Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;

    return-void
.end method


# virtual methods
.method public getCallback()Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;
    .registers 1

    .line 185
    iget-object p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51UnhookHandle;->mCallback:Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;

    invoke-static {p0}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;->-$$Nest$fgetmCallback(Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;)Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;

    move-result-object p0

    return-object p0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .registers 1

    .line 179
    iget-object p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51UnhookHandle;->mMember:Ljava/lang/reflect/Member;

    return-object p0
.end method

.method public isHookActive()Z
    .registers 1

    .line 190
    iget-object p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51UnhookHandle;->mCallback:Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;

    invoke-static {p0}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;->-$$Nest$fgetmAlive(Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;)Z

    move-result p0

    return p0
.end method

.method public unhook()V
    .registers 2

    .line 195
    iget-object v0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51UnhookHandle;->mUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->unhook()V

    .line 196
    iget-object p0, p0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51UnhookHandle;->mCallback:Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;->-$$Nest$fputmAlive(Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;Z)V

    return-void
.end method
