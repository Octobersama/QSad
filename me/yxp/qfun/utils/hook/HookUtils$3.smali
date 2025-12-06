.class Lme/yxp/qfun/utils/hook/HookUtils$3;
.super Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;
.source "HookUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yxp/qfun/utils/hook/HookUtils;->replaceAlways(Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$replaceMent:Lme/yxp/qfun/utils/hook/HookUtils$Replacement;


# direct methods
.method public constructor <init>(Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lme/yxp/qfun/utils/hook/HookUtils$3;->val$replaceMent:Lme/yxp/qfun/utils/hook/HookUtils$Replacement;

    invoke-direct {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodReplacement;-><init>()V

    return-void
.end method


# virtual methods
.method public replaceHookedMethod(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 3

    .line 83
    :try_start_0
    iget-object p0, p0, Lme/yxp/qfun/utils/hook/HookUtils$3;->val$replaceMent:Lme/yxp/qfun/utils/hook/HookUtils$Replacement;

    invoke-interface {p0, p1}, Lme/yxp/qfun/utils/hook/HookUtils$Replacement;->execute(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object p0

    :catchall_7
    move-exception p0

    .line 85
    const-string v0, ""

    invoke-static {v0, p0}, Lme/yxp/qfun/utils/error/ErrorOutput;->Error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    iget-object p0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
