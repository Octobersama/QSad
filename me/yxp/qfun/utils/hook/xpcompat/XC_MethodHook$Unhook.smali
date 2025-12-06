.class public Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;
.super Ljava/lang/Object;
.source "XC_MethodHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unhook"
.end annotation


# instance fields
.field private final callback:Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;

.field private final unhookHandle:Lme/yxp/qfun/loader/hookapi/IHookBridge$MemberUnhookHandle;


# direct methods
.method public constructor <init>(Lme/yxp/qfun/loader/hookapi/IHookBridge$MemberUnhookHandle;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;)V
    .registers 3

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;->unhookHandle:Lme/yxp/qfun/loader/hookapi/IHookBridge$MemberUnhookHandle;

    .line 135
    iput-object p2, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;->callback:Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;

    return-void
.end method


# virtual methods
.method public getCallback()Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;
    .registers 1

    .line 146
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;->callback:Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;

    return-object p0
.end method

.method public getHookedMethod()Ljava/lang/reflect/Member;
    .registers 1

    .line 142
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;->unhookHandle:Lme/yxp/qfun/loader/hookapi/IHookBridge$MemberUnhookHandle;

    invoke-interface {p0}, Lme/yxp/qfun/loader/hookapi/IHookBridge$MemberUnhookHandle;->getMember()Ljava/lang/reflect/Member;

    move-result-object p0

    return-object p0
.end method

.method public unhook()V
    .registers 1

    .line 150
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;->unhookHandle:Lme/yxp/qfun/loader/hookapi/IHookBridge$MemberUnhookHandle;

    invoke-interface {p0}, Lme/yxp/qfun/loader/hookapi/IHookBridge$MemberUnhookHandle;->unhook()V

    return-void
.end method
