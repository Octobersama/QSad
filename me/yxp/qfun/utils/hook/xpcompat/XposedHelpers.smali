.class public final Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;
.super Ljava/lang/Object;
.source "XposedHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$ClassNotFoundError;,
        Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$InvocationTargetError;
    }
.end annotation


# static fields
.field private static final additionalFields:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final constructorCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final fieldCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final methodCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMethodDepth:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->fieldCache:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->methodCache:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->constructorCache:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->additionalFields:Ljava/util/WeakHashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->sMethodDepth:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assetAsByteArray(Landroid/content/res/Resources;Ljava/lang/String;)[B
    .registers 5

    .line 1545
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 1547
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    .line 1548
    new-array v0, v0, [B

    .line 1551
    :goto_11
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1c

    const/4 v2, 0x0

    .line 1552
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_11

    .line 1554
    :cond_1c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1555
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1302
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 1310
    new-instance p1, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$InvocationTargetError;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_18
    move-exception p0

    .line 1308
    throw p0

    :catch_1a
    move-exception p0

    .line 1305
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1306
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1280
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 1288
    new-instance p1, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$InvocationTargetError;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_18
    move-exception p0

    .line 1286
    throw p0

    :catch_1a
    move-exception p0

    .line 1283
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1284
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1345
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_15
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    .line 1353
    new-instance p1, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$InvocationTargetError;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_15
    move-exception p0

    .line 1351
    throw p0

    :catch_17
    move-exception p0

    .line 1348
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1349
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1325
    :try_start_0
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_15
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    .line 1333
    new-instance p1, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$InvocationTargetError;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_15
    move-exception p0

    .line 1331
    throw p0

    :catch_17
    move-exception p0

    .line 1328
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1329
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static decrementMethodDepth(Ljava/lang/String;)I
    .registers 1

    .line 1602
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getMethodDepthCounter(Ljava/lang/String;)Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    return p0
.end method

.method public static varargs findAndHookConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;"
        }
    .end annotation

    .line 616
    array-length v0, p1

    if-eqz v0, :cond_24

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    instance-of v0, v0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;

    if-eqz v0, :cond_24

    .line 620
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    check-cast v0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;

    .line 621
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 623
    invoke-static {p0, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;

    move-result-object p0

    return-object p0

    .line 617
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no callback defined"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;
    .registers 3

    .line 630
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findAndHookConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;"
        }
    .end annotation

    .line 172
    array-length v0, p2

    if-eqz v0, :cond_24

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    instance-of v0, v0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;

    if-eqz v0, :cond_24

    .line 176
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p2, v0

    check-cast v0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;

    .line 177
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 179
    invoke-static {p0, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;

    move-result-object p0

    return-object p0

    .line 173
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no callback defined"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;
    .registers 4

    .line 246
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$Unhook;

    move-result-object p0

    return-object p0
.end method

.method public static findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_8

    .line 58
    const-class p1, Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_8
    const/4 v0, 0x0

    .line 61
    :try_start_9
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 63
    new-instance p1, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$ClassNotFoundError;

    invoke-direct {p1, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$ClassNotFoundError;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static findClassIfExists(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 76
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$ClassNotFoundError; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#bestmatch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    sget-object v1, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 642
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;

    if-eqz p0, :cond_2d

    return-object p0

    .line 644
    :cond_2d
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 650
    :cond_33
    :try_start_33
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 651
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_33 .. :try_end_3a} :catch_3b

    return-object v2

    .line 657
    :catch_3b
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 658
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_43
    const/4 v5, 0x1

    if-ge v3, v1, :cond_66

    aget-object v6, p0, v3

    .line 660
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    invoke-static {p1, v7, v5}, Lme/yxp/qfun/utils/hook/xpcompat/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v5

    if-eqz v5, :cond_63

    if-eqz v4, :cond_62

    .line 663
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 664
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 662
    invoke-static {v5, v7, p1}, Lme/yxp/qfun/utils/hook/xpcompat/MemberUtils;->compareParameterTypes([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v5

    if-gez v5, :cond_63

    :cond_62
    move-object v4, v6

    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_66
    if-eqz v4, :cond_71

    .line 672
    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 673
    sget-object p0, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    .line 676
    :cond_71
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    .line 677
    sget-object p1, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    throw p0
.end method

.method public static findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 701
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_17

    .line 702
    aget-object v2, p1, v1

    if-eqz v2, :cond_a

    goto :goto_14

    :cond_a
    if-nez v0, :cond_10

    .line 706
    invoke-static {p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 708
    :cond_10
    aget-object v2, v0, v1

    aput-object v2, p1, v1

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 710
    :cond_17
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 689
    invoke-static {p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#exact"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    sget-object v1, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->constructorCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 594
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;

    if-eqz p0, :cond_2d

    return-object p0

    .line 596
    :cond_2d
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 602
    :cond_33
    :try_start_33
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 p1, 0x1

    .line 603
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 604
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_33 .. :try_end_3e} :catch_3f

    return-object p0

    .line 607
    :catch_3f
    sget-object p0, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->constructorCache:Ljava/util/HashMap;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs findConstructorExact(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 551
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findConstructorExact(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 571
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p1, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findConstructorExactIfExists(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 559
    :try_start_1
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_5} :catch_6
    .catch Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$ClassNotFoundError; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    return-object v0
.end method

.method public static varargs findConstructorExactIfExists(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 579
    :try_start_1
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findConstructorExact(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_5} :catch_6
    .catch Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$ClassNotFoundError; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    return-object v0
.end method

.method public static findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    sget-object v1, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->fieldCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 94
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Field;

    if-eqz p0, :cond_29

    return-object p0

    .line 96
    :cond_29
    new-instance p0, Ljava/lang/NoSuchFieldError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_2f
    :try_start_2f
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findFieldRecursiveImpl(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 104
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2f .. :try_end_3a} :catch_3b

    return-object p0

    .line 107
    :catch_3b
    sget-object p0, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->fieldCache:Ljava/util/HashMap;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance p0, Ljava/lang/NoSuchFieldError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static findFieldIfExists(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 121
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findFieldRecursiveImpl(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 129
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception v0

    .line 132
    :catch_6
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 133
    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 138
    :try_start_14
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14 .. :try_end_18} :catch_6

    return-object p0

    .line 142
    :cond_19
    throw v0
.end method

.method public static findFirstFieldByExactType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    move-object v0, p0

    .line 157
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 158
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, p1, :cond_16

    const/4 p0, 0x1

    .line 159
    invoke-virtual {v4, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-object v4

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 163
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_20

    goto :goto_1

    .line 165
    :cond_20
    new-instance v0, Ljava/lang/NoSuchFieldError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in class "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#bestmatch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    sget-object v1, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 392
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    if-eqz p0, :cond_35

    return-object p0

    .line 394
    :cond_35
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 400
    :cond_3b
    :try_start_3b
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 401
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3b .. :try_end_42} :catch_43

    return-object v2

    :catch_43
    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v3, v1

    move v4, v2

    .line 410
    :goto_47
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_4e
    if-ge v8, v6, :cond_87

    aget-object v9, v5, v8

    if-nez v4, :cond_5f

    .line 412
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v10

    if-eqz v10, :cond_5f

    goto :goto_84

    .line 417
    :cond_5f
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_84

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    invoke-static {p2, v10, v2}, Lme/yxp/qfun/utils/hook/xpcompat/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v10

    if-eqz v10, :cond_84

    if-eqz v3, :cond_83

    .line 420
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 421
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 419
    invoke-static {v10, v11, p2}, Lme/yxp/qfun/utils/hook/xpcompat/MemberUtils;->compareParameterTypes([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v10

    if-gez v10, :cond_84

    :cond_83
    move-object v3, v9

    :cond_84
    :goto_84
    add-int/lit8 v8, v8, 0x1

    goto :goto_4e

    .line 428
    :cond_87
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_a3

    if-eqz v3, :cond_98

    .line 431
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 432
    sget-object p0, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->methodCache:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 435
    :cond_98
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    .line 436
    sget-object p1, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->methodCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    throw p0

    :cond_a3
    move v4, v7

    goto :goto_47
.end method

.method public static findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 460
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_17

    .line 461
    aget-object v2, p2, v1

    if-eqz v2, :cond_a

    goto :goto_14

    :cond_a
    if-nez v0, :cond_10

    .line 465
    invoke-static {p3}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 467
    :cond_10
    aget-object v2, v0, v1

    aput-object v2, p2, v1

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 469
    :cond_17
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 448
    invoke-static {p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#exact"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    sget-object v1, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 316
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    if-eqz p0, :cond_35

    return-object p0

    .line 318
    :cond_35
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 324
    :cond_3b
    :try_start_3b
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    .line 325
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 326
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3b .. :try_end_46} :catch_47

    return-object p0

    .line 329
    :catch_47
    sget-object p0, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->methodCache:Ljava/util/HashMap;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findMethodExact(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 4

    .line 284
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p1, p3}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static varargs findMethodExactIfExists(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 261
    :try_start_1
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_5} :catch_6
    .catch Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$ClassNotFoundError; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    return-object v0
.end method

.method public static varargs findMethodExactIfExists(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 5

    const/4 v0, 0x0

    .line 299
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findMethodExact(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_5} :catch_6
    .catch Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$ClassNotFoundError; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    return-object v0
.end method

.method public static varargs findMethodsByExactParameters(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 347
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_3a

    aget-object v4, p0, v3

    if-eqz p1, :cond_19

    .line 348
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    if-eq p1, v5, :cond_19

    goto :goto_37

    .line 352
    :cond_19
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 353
    array-length v6, p2

    array-length v7, v5

    if-eq v6, v7, :cond_22

    goto :goto_37

    :cond_22
    move v6, v2

    .line 358
    :goto_23
    array-length v7, p2

    if-ge v6, v7, :cond_30

    .line 359
    aget-object v7, p2, v6

    aget-object v8, v5, v6

    if-eq v7, v8, :cond_2d

    goto :goto_37

    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_30
    const/4 v5, 0x1

    .line 369
    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 370
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 372
    :cond_3a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/reflect/Method;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    if-eqz p0, :cond_29

    if-eqz p1, :cond_21

    .line 1453
    sget-object v0, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->additionalFields:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 1454
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_14

    const/4 p0, 0x0

    .line 1456
    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    goto :goto_1f

    .line 1458
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_12

    .line 1460
    monitor-enter p0

    .line 1461
    :try_start_16
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_1c
    move-exception p1

    .line 1462
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1c

    throw p1

    .line 1458
    :goto_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_12

    throw p0

    .line 1449
    :cond_21
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "key must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1446
    :cond_29
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "object must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAdditionalStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1527
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAdditionalStaticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1506
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getBooleanField(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 3

    .line 880
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    .line 886
    throw p0

    :catch_f
    move-exception p0

    .line 883
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 884
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getByteField(Ljava/lang/Object;Ljava/lang/String;)B
    .registers 3

    .line 895
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result p0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    .line 901
    throw p0

    :catch_f
    move-exception p0

    .line 898
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 899
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getCharField(Ljava/lang/Object;Ljava/lang/String;)C
    .registers 3

    .line 910
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result p0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    .line 916
    throw p0

    :catch_f
    move-exception p0

    .line 913
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 914
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs getClassesAsArray([Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 0
    return-object p0
.end method

.method public static getDoubleField(Ljava/lang/Object;Ljava/lang/String;)D
    .registers 3

    .line 925
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide p0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide p0

    :catch_d
    move-exception p0

    .line 931
    throw p0

    :catch_f
    move-exception p0

    .line 928
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 929
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getFloatField(Ljava/lang/Object;Ljava/lang/String;)F
    .registers 3

    .line 940
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    .line 946
    throw p0

    :catch_f
    move-exception p0

    .line 943
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 944
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getIntField(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 3

    .line 955
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    .line 961
    throw p0

    :catch_f
    move-exception p0

    .line 958
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 959
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getLongField(Ljava/lang/Object;Ljava/lang/String;)J
    .registers 3

    .line 970
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide p0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide p0

    :catch_d
    move-exception p0

    .line 976
    throw p0

    :catch_f
    move-exception p0

    .line 973
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 974
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getMD5Sum(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1563
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1564
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x2000

    .line 1565
    new-array p0, p0, [B

    .line 1567
    :goto_f
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1a

    const/4 v3, 0x0

    .line 1568
    invoke-virtual {v0, p0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_f

    .line 1570
    :cond_1a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1571
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 1572
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 p0, 0x10

    .line 1573
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2d} :catch_2e

    return-object p0

    .line 1575
    :catch_2e
    const-string p0, ""

    return-object p0
.end method

.method public static getMethodDepth(Ljava/lang/String;)I
    .registers 1

    .line 1614
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getMethodDepthCounter(Ljava/lang/String;)Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method private static getMethodDepthCounter(Ljava/lang/String;)Ljava/lang/ThreadLocal;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    .line 1618
    sget-object v0, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->sMethodDepth:Ljava/util/HashMap;

    monitor-enter v0

    .line 1619
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadLocal;

    if-nez v1, :cond_16

    .line 1621
    new-instance v1, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$1;

    invoke-direct {v1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$1;-><init>()V

    .line 1626
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_18

    .line 1628
    :cond_16
    :goto_16
    monitor-exit v0

    return-object v1

    .line 1629
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_14

    throw p0
.end method

.method public static getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 855
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 861
    throw p0

    :catch_f
    move-exception p0

    .line 858
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 859
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getParameterClasses(Ljava/lang/ClassLoader;[Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 488
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_5
    if-ltz v0, :cond_3e

    .line 489
    aget-object v3, p1, v0

    if-eqz v3, :cond_36

    .line 495
    instance-of v4, v3, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;

    if-eqz v4, :cond_10

    goto :goto_2b

    :cond_10
    if-nez v2, :cond_16

    add-int/lit8 v2, v0, 0x1

    .line 500
    new-array v2, v2, [Ljava/lang/Class;

    .line 503
    :cond_16
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_1f

    .line 504
    check-cast v3, Ljava/lang/Class;

    aput-object v3, v2, v0

    goto :goto_2b

    .line 505
    :cond_1f
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2e

    .line 506
    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v0

    :goto_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 508
    :cond_2e
    new-instance p0, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$ClassNotFoundError;

    const-string p1, "parameter type must either be specified as Class or String"

    invoke-direct {p0, p1, v1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$ClassNotFoundError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 491
    :cond_36
    new-instance p0, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$ClassNotFoundError;

    const-string p1, "parameter type must not be null"

    invoke-direct {p0, p1, v1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$ClassNotFoundError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_3e
    if-nez v2, :cond_44

    const/4 p0, 0x0

    .line 514
    new-array p0, p0, [Ljava/lang/Class;

    return-object p0

    :cond_44
    return-object v2
.end method

.method public static varargs getParameterTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 476
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 477
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 478
    aget-object v2, p0, v1

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_16
    return-object v0
.end method

.method private static varargs getParametersString([Ljava/lang/Class;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 530
    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    if-ge v4, v1, :cond_2a

    aget-object v5, p0, v4

    if-eqz v2, :cond_13

    move v2, v3

    goto :goto_18

    .line 534
    :cond_13
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_18
    if-eqz v5, :cond_22

    .line 538
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 540
    :cond_22
    const-string v5, "null"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 543
    :cond_2a
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShortField(Ljava/lang/Object;Ljava/lang/String;)S
    .registers 3

    .line 985
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result p0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    .line 991
    throw p0

    :catch_f
    move-exception p0

    .line 988
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 989
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticBooleanField(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1154
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return p0

    :catch_a
    move-exception p0

    .line 1160
    throw p0

    :catch_c
    move-exception p0

    .line 1157
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1158
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticByteField(Ljava/lang/Class;Ljava/lang/String;)B
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")B"
        }
    .end annotation

    .line 1169
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result p0
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return p0

    :catch_a
    move-exception p0

    .line 1175
    throw p0

    :catch_c
    move-exception p0

    .line 1172
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1173
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticCharField(Ljava/lang/Class;Ljava/lang/String;)C
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")C"
        }
    .end annotation

    .line 1184
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result p0
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return p0

    :catch_a
    move-exception p0

    .line 1190
    throw p0

    :catch_c
    move-exception p0

    .line 1187
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1188
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticDoubleField(Ljava/lang/Class;Ljava/lang/String;)D
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation

    .line 1199
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide p0
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return-wide p0

    :catch_a
    move-exception p0

    .line 1205
    throw p0

    :catch_c
    move-exception p0

    .line 1202
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1203
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticFloatField(Ljava/lang/Class;Ljava/lang/String;)F
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")F"
        }
    .end annotation

    .line 1214
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p0
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return p0

    :catch_a
    move-exception p0

    .line 1220
    throw p0

    :catch_c
    move-exception p0

    .line 1217
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1218
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1229
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return p0

    :catch_a
    move-exception p0

    .line 1235
    throw p0

    :catch_c
    move-exception p0

    .line 1232
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1233
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticLongField(Ljava/lang/Class;Ljava/lang/String;)J
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 1244
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide p0
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return-wide p0

    :catch_a
    move-exception p0

    .line 1250
    throw p0

    :catch_c
    move-exception p0

    .line 1247
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1248
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1137
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    .line 1143
    throw p0

    :catch_c
    move-exception p0

    .line 1140
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1141
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getStaticShortField(Ljava/lang/Class;Ljava/lang/String;)S
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")S"
        }
    .end annotation

    .line 1259
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result p0
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return p0

    :catch_a
    move-exception p0

    .line 1265
    throw p0

    :catch_c
    move-exception p0

    .line 1262
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1263
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getSurroundingThis(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 871
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static incrementMethodDepth(Ljava/lang/String;)I
    .registers 1

    .line 1592
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->getMethodDepthCounter(Ljava/lang/String;)Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    return p0
.end method

.method public static varargs newInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1390
    :try_start_0
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_1f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_8} :catch_14
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1400
    new-instance p1, Ljava/lang/InstantiationError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_14
    move-exception p0

    .line 1398
    new-instance p1, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$InvocationTargetError;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1f
    move-exception p0

    .line 1396
    throw p0

    :catch_21
    move-exception p0

    .line 1393
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1394
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1368
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findConstructorBestMatch(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_1f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_8} :catch_14
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1378
    new-instance p1, Ljava/lang/InstantiationError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_14
    move-exception p0

    .line 1376
    new-instance p1, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$InvocationTargetError;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers$InvocationTargetError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1f
    move-exception p0

    .line 1374
    throw p0

    :catch_21
    move-exception p0

    .line 1371
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1372
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static removeAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    if-eqz p0, :cond_29

    if-eqz p1, :cond_21

    .line 1483
    sget-object v0, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->additionalFields:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 1484
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_14

    const/4 p0, 0x0

    .line 1486
    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    goto :goto_1f

    .line 1488
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_12

    .line 1490
    monitor-enter p0

    .line 1491
    :try_start_16
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_1c
    move-exception p1

    .line 1492
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1c

    throw p1

    .line 1488
    :goto_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_12

    throw p0

    .line 1479
    :cond_21
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "key must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1476
    :cond_29
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "object must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeAdditionalStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1534
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->removeAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static removeAdditionalStaticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1513
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->removeAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    if-eqz p0, :cond_2f

    if-eqz p1, :cond_27

    .line 1424
    sget-object v0, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->additionalFields:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 1425
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_1a

    .line 1427
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1428
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_25

    .line 1430
    :cond_1a
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_18

    .line 1432
    monitor-enter v1

    .line 1433
    :try_start_1c
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_22
    move-exception p0

    .line 1434
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_22

    throw p0

    .line 1430
    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_18

    throw p0

    .line 1420
    :cond_27
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "key must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1417
    :cond_2f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "object must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setAdditionalStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1520
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->setAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setAdditionalStaticField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1499
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->setAdditionalInstanceField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V
    .registers 4

    .line 735
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 741
    throw p0

    :catch_e
    move-exception p0

    .line 738
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 739
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setByteField(Ljava/lang/Object;Ljava/lang/String;B)V
    .registers 4

    .line 750
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 756
    throw p0

    :catch_e
    move-exception p0

    .line 753
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 754
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setCharField(Ljava/lang/Object;Ljava/lang/String;C)V
    .registers 4

    .line 765
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 771
    throw p0

    :catch_e
    move-exception p0

    .line 768
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 769
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setDoubleField(Ljava/lang/Object;Ljava/lang/String;D)V
    .registers 5

    .line 780
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p3}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 786
    throw p0

    :catch_e
    move-exception p0

    .line 783
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 784
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setFloatField(Ljava/lang/Object;Ljava/lang/String;F)V
    .registers 4

    .line 795
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 801
    throw p0

    :catch_e
    move-exception p0

    .line 798
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 799
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setIntField(Ljava/lang/Object;Ljava/lang/String;I)V
    .registers 4

    .line 810
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 816
    throw p0

    :catch_e
    move-exception p0

    .line 813
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 814
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setLongField(Ljava/lang/Object;Ljava/lang/String;J)V
    .registers 5

    .line 825
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 831
    throw p0

    :catch_e
    move-exception p0

    .line 828
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 829
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 718
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 724
    throw p0

    :catch_e
    move-exception p0

    .line 721
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 722
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setShortField(Ljava/lang/Object;Ljava/lang/String;S)V
    .registers 4

    .line 840
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 846
    throw p0

    :catch_e
    move-exception p0

    .line 843
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 844
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticBooleanField(Ljava/lang/Class;Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1017
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 1023
    throw p0

    :catch_b
    move-exception p0

    .line 1020
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1021
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticByteField(Ljava/lang/Class;Ljava/lang/String;B)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "B)V"
        }
    .end annotation

    .line 1032
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 1038
    throw p0

    :catch_b
    move-exception p0

    .line 1035
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1036
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticCharField(Ljava/lang/Class;Ljava/lang/String;C)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 1047
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 1053
    throw p0

    :catch_b
    move-exception p0

    .line 1050
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1051
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticDoubleField(Ljava/lang/Class;Ljava/lang/String;D)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    .line 1062
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 1068
    throw p0

    :catch_b
    move-exception p0

    .line 1065
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1066
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticFloatField(Ljava/lang/Class;Ljava/lang/String;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .line 1077
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 1083
    throw p0

    :catch_b
    move-exception p0

    .line 1080
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1081
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticIntField(Ljava/lang/Class;Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1092
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 1098
    throw p0

    :catch_b
    move-exception p0

    .line 1095
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1096
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticLongField(Ljava/lang/Class;Ljava/lang/String;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1107
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 1113
    throw p0

    :catch_b
    move-exception p0

    .line 1110
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1111
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1000
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 1006
    throw p0

    :catch_b
    move-exception p0

    .line 1003
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1004
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setStaticShortField(Ljava/lang/Class;Ljava/lang/String;S)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "S)V"
        }
    .end annotation

    .line 1122
    :try_start_0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 1128
    throw p0

    :catch_b
    move-exception p0

    .line 1125
    invoke-static {p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 1126
    new-instance p1, Ljava/lang/IllegalAccessError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method
