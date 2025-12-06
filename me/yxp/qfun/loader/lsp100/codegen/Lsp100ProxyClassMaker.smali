.class public Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;
.super Ljava/lang/Object;
.source "Lsp100ProxyClassMaker.java"


# static fields
.field private static sInstance:Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;

.field private static sLoadClassException:Ljava/lang/Throwable;

.field private static sProxyClassLoader:Ljava/lang/ClassLoader;

.field private static sWrapperMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAfterInvocationClassName:Ljava/lang/String;

.field private mBeforeInvocationClassName:Ljava/lang/String;

.field private mXposedHookerClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-class v0, Lme/yxp/qfun/loader/lsp100/dyn/Lsp100CallbackProxy$P0000000050;

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 59
    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_19

    .line 60
    aget-object v1, v1, v3

    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->mXposedHookerClassName:Ljava/lang/String;

    .line 65
    :cond_19
    :try_start_19
    const-string v1, "before"

    const-class v2, Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 68
    array-length v2, v1

    if-lez v2, :cond_38

    .line 69
    aget-object v1, v1, v3

    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->mBeforeInvocationClassName:Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_19 .. :try_end_38} :catch_63

    .line 76
    :cond_38
    :try_start_38
    const-string v1, "after"

    const-class v2, Lio/github/libxposed/api/XposedInterface$AfterHookCallback;

    const-class v4, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;

    filled-new-array {v2, v4}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 80
    array-length v1, v0

    if-lez v1, :cond_59

    .line 81
    aget-object v0, v0, v3

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->mAfterInvocationClassName:Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/NoSuchMethodException; {:try_start_38 .. :try_end_59} :catch_5a

    :cond_59
    return-void

    :catch_5a
    move-exception p0

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method after not found in template class"

    invoke-direct {v0, v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_63
    move-exception p0

    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method before not found in template class"

    invoke-direct {v0, v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getClassNameForPriority(I)Ljava/lang/String;
    .registers 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "me.yxp.qfun.loader.lsp100.dyn.Lsp100CallbackProxy$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->priorityToShortName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;
    .registers 1

    .line 97
    sget-object v0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sInstance:Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;

    if-nez v0, :cond_b

    .line 98
    new-instance v0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;

    invoke-direct {v0}, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;-><init>()V

    sput-object v0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sInstance:Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;

    .line 100
    :cond_b
    sget-object v0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sInstance:Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;

    return-object v0
.end method

.method public static getWrapperMethod()Ljava/lang/reflect/Method;
    .registers 1

    .line 89
    sget-object v0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sWrapperMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static impl1(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 9

    .line 114
    sget-object v0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sWrapperMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_35

    .line 118
    filled-new-array/range {p0 .. p7}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 130
    :try_start_d
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_18
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_d .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception v0

    move-object p0, v0

    .line 132
    instance-of p1, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p1, :cond_2d

    .line 133
    move-object p1, p0

    check-cast p1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    .line 134
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_2d

    .line 135
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 138
    :cond_2d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Failed to invoke wrapper method"

    invoke-direct {p1, p2, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 116
    :cond_35
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Wrapper method not set"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private loadProxyClassForPriority(Ljava/lang/String;[BI)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BI)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 182
    sget-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->INSTANCE:Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;

    invoke-virtual {p0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;->getClassLoaderHelper()Lme/yxp/qfun/loader/hookapi/IClassLoaderHelper;

    move-result-object p0

    if-eqz p0, :cond_54

    .line 186
    sget-object p3, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sLoadClassException:Ljava/lang/Throwable;

    if-nez p3, :cond_4a

    .line 189
    sget-object p3, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sProxyClassLoader:Ljava/lang/ClassLoader;

    if-nez p3, :cond_2a

    .line 190
    const-class p3, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;

    monitor-enter p3

    .line 191
    :try_start_13
    sget-object v0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sProxyClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_26

    .line 192
    const-class v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-interface {p0, v0}, Lme/yxp/qfun/loader/hookapi/IClassLoaderHelper;->createEmptyInMemoryMultiDexClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sProxyClassLoader:Ljava/lang/ClassLoader;

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_28

    .line 194
    :cond_26
    :goto_26
    monitor-exit p3

    goto :goto_2a

    :goto_28
    monitor-exit p3
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_24

    throw p0

    .line 198
    :cond_2a
    :goto_2a
    :try_start_2a
    sget-object p3, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sProxyClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2a .. :try_end_30} :catch_31

    return-object p0

    .line 202
    :catch_31
    sget-object p3, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sProxyClassLoader:Ljava/lang/ClassLoader;

    const/4 v0, 0x0

    invoke-interface {p0, p3, p2, v0}, Lme/yxp/qfun/loader/hookapi/IClassLoaderHelper;->injectDexToClassLoader(Ljava/lang/ClassLoader;[BLjava/lang/String;)V

    .line 207
    :try_start_37
    sget-object p0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sProxyClassLoader:Ljava/lang/ClassLoader;

    const/4 p2, 0x1

    invoke-static {p1, p2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_3e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_37 .. :try_end_3e} :catch_3f

    return-object p0

    :catch_3f
    move-exception p0

    .line 209
    sput-object p0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sLoadClassException:Ljava/lang/Throwable;

    .line 210
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Failed to load proxy class"

    invoke-direct {p1, p2, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 187
    :cond_4a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "reject to try again due to previous exception"

    sget-object p2, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sLoadClassException:Ljava/lang/Throwable;

    invoke-direct {p0, p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 184
    :cond_54
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ClassLoaderHelper not set"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private makeClassByteCodeForPriority(I)[B
    .registers 10

    .line 217
    invoke-static {p1}, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->getClassNameForPriority(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class p1, Lio/github/libxposed/api/XposedInterface$Hooker;

    .line 221
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class p1, Lio/github/libxposed/api/XposedInterface$BeforeHookCallback;

    .line 222
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-class p1, Lio/github/libxposed/api/XposedInterface$AfterHookCallback;

    .line 223
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->mXposedHookerClassName:Ljava/lang/String;

    iget-object v6, p0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->mBeforeInvocationClassName:Ljava/lang/String;

    iget-object v7, p0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->mAfterInvocationClassName:Ljava/lang/String;

    .line 218
    invoke-static/range {v0 .. v7}, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->impl1(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static priorityToShortName(I)Ljava/lang/String;
    .registers 6

    .line 150
    const-string v0, "%010d"

    if-ltz p0, :cond_24

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 153
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "N"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    int-to-long v3, p0

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setWrapperMethod(Ljava/lang/reflect/Method;)V
    .registers 1

    .line 93
    sput-object p0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sWrapperMethod:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public createProxyClass(I)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 162
    invoke-static {p1}, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->getClassNameForPriority(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    :try_start_4
    const-class v1, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_e} :catch_f

    return-object p0

    .line 168
    :catch_f
    sget-object v1, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sLoadClassException:Ljava/lang/Throwable;

    if-nez v1, :cond_25

    .line 171
    sget-object v1, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sProxyClassLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_1c

    .line 173
    :try_start_17
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_1b} :catch_1c

    return-object p0

    .line 177
    :catch_1c
    :cond_1c
    invoke-direct {p0, p1}, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->makeClassByteCodeForPriority(I)[B

    move-result-object v1

    .line 178
    invoke-direct {p0, v0, v1, p1}, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->loadProxyClassForPriority(Ljava/lang/String;[BI)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 169
    :cond_25
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "reject to try again due to previous exception"

    sget-object v0, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->sLoadClassException:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
