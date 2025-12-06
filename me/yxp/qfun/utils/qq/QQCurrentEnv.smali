.class public Lme/yxp/qfun/utils/qq/QQCurrentEnv;
.super Ljava/lang/Object;
.source "QQCurrentEnv.java"


# static fields
.field private static sCurrentUin:Ljava/lang/String;

.field private static sKernelMsgService:Ljava/lang/Object;

.field private static sQQAppInterface:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .registers 6

    const/4 v0, 0x0

    .line 18
    :try_start_1
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 19
    const-string v2, "currentActivityThread"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 20
    const-string v3, "mActivities"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 24
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 26
    const-string v5, "paused"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 27
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 29
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 30
    const-string v1, "activity"

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_55} :catch_56

    return-object v1

    :catch_56
    :cond_56
    return-object v0
.end method

.method public static getCurrentNickname()Ljava/lang/String;
    .registers 3

    .line 68
    :try_start_0
    sget-object v0, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->sQQAppInterface:Ljava/lang/Object;

    const-string v1, "getCurrentNickname"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 70
    :catch_e
    const-string v0, ""

    return-object v0
.end method

.method public static getCurrentUin()Ljava/lang/String;
    .registers 1

    .line 63
    sget-object v0, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->sCurrentUin:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_e

    :cond_b
    sget-object v0, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->sCurrentUin:Ljava/lang/String;

    return-object v0

    :cond_e
    :goto_e
    const-string v0, "global"

    return-object v0
.end method

.method public static getKernelMsgservice()Ljava/lang/Object;
    .registers 1

    .line 41
    sget-object v0, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->sKernelMsgService:Ljava/lang/Object;

    if-nez v0, :cond_7

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->setKernelMsgService()V

    .line 42
    :cond_7
    sget-object v0, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->sKernelMsgService:Ljava/lang/Object;

    return-object v0
.end method

.method public static getQQAppInterface()Ljava/lang/Object;
    .registers 1

    .line 75
    sget-object v0, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->sQQAppInterface:Ljava/lang/Object;

    return-object v0
.end method

.method public static setCurrentEnv(Ljava/lang/Object;)V
    .registers 1

    .line 79
    sput-object p0, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->sQQAppInterface:Ljava/lang/Object;

    .line 80
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->setCurrentUin()V

    .line 81
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->setKernelMsgService()V

    return-void
.end method

.method private static setCurrentUin()V
    .registers 3

    .line 47
    :try_start_0
    sget-object v0, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->sQQAppInterface:Ljava/lang/Object;

    const-string v1, "getCurrentAccountUin"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->sCurrentUin:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method

.method private static setKernelMsgService()V
    .registers 4

    .line 54
    :try_start_0
    const-string v0, "com.tencent.qqnt.kernel.api.IKernelService"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    sget-object v1, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->sQQAppInterface:Ljava/lang/Object;

    const-string v2, "getRuntimeService"

    const-string v3, ""

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    const-string v1, "getMsgService"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    const-string v1, "getService"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->sKernelMsgService:Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_27

    :catchall_27
    return-void
.end method
