.class Lme/yxp/qfun/utils/hook/HookUtils$5;
.super Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;
.source "HookUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yxp/qfun/utils/hook/HookUtils;->replaceIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$hookItem:Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

.field final synthetic val$replaceMent:Lme/yxp/qfun/utils/hook/HookUtils$Replacement;


# direct methods
.method public constructor <init>(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V
    .registers 3

    .line 132
    iput-object p1, p0, Lme/yxp/qfun/utils/hook/HookUtils$5;->val$hookItem:Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

    iput-object p2, p0, Lme/yxp/qfun/utils/hook/HookUtils$5;->val$replaceMent:Lme/yxp/qfun/utils/hook/HookUtils$Replacement;

    invoke-direct {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;-><init>()V

    return-void
.end method


# virtual methods
.method public replaceHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 5

    .line 136
    :try_start_0
    iget-object v0, p0, Lme/yxp/qfun/utils/hook/HookUtils$5;->val$hookItem:Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

    invoke-virtual {v0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getHookStatus()Z

    move-result v0

    if-nez v0, :cond_15

    .line 137
    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v2, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_13
    move-exception v0

    goto :goto_1c

    .line 138
    :cond_15
    iget-object v0, p0, Lme/yxp/qfun/utils/hook/HookUtils$5;->val$replaceMent:Lme/yxp/qfun/utils/hook/HookUtils$Replacement;

    invoke-interface {v0, p1}, Lme/yxp/qfun/utils/hook/HookUtils$Replacement;->execute(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_13

    return-object p0

    .line 140
    :goto_1c
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/HookUtils$5;->val$hookItem:Lme/yxp/qfun/hook/base/BaseSwitchHookItem;

    invoke-static {p0, v0}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    .line 141
    iget-object p0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
