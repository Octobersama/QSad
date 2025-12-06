.class public Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;
.super Ljava/lang/Object;
.source "Lsp100HookWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;,
        Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$UnhookHandle;,
        Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;,
        Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$Lsp100HookAgent;,
        Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$InvocationParamWrapper;
    }
.end annotation


# static fields
.field private static final DEFAULT_PRIORITY:I = 0x32

.field private static final DEFAULT_PROXY:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final EMPTY_CALLBACKS:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

.field private static final sCallbackRegistry:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/reflect/Member;",
            "Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sHookedMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNextHookId:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final sRegistryWriteLock:Ljava/lang/Object;

.field public static self:Lio/github/libxposed/api/XposedModule;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetEMPTY_CALLBACKS()[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;
    .registers 1

    .line 0
    sget-object v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->EMPTY_CALLBACKS:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsCallbackRegistry()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 0
    sget-object v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->sCallbackRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsNextHookId()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .line 0
    sget-object v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->sNextHookId:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smcopyCallbacks(Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;)[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;
    .registers 1

    .line 0
    invoke-static {p0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->copyCallbacks(Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;)[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    .line 45
    new-array v0, v0, [Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    sput-object v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->EMPTY_CALLBACKS:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->sNextHookId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 47
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->sHookedMethods:Ljava/util/Set;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->sRegistryWriteLock:Ljava/lang/Object;

    .line 49
    const-class v0, Lme/yxp/qfun/loader/lsp100/dyn/Lsp100CallbackProxy$P0000000050;

    sput-object v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->DEFAULT_PROXY:Ljava/lang/Class;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->sCallbackRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 56
    sput-object v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->self:Lio/github/libxposed/api/XposedModule;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyCallbacks(Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;)[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;
    .registers 2

    if-nez p0, :cond_5

    .line 204
    sget-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->EMPTY_CALLBACKS:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    return-object p0

    .line 206
    :cond_5
    iget-object v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_8
    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;->callbacks:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    if-eqz p0, :cond_16

    .line 208
    invoke-virtual {p0}, [Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    goto :goto_1a

    .line 210
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_14

    .line 211
    sget-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->EMPTY_CALLBACKS:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    return-object p0

    .line 210
    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_14

    throw p0
.end method

.method private static generateProxyClassForCallback(I)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 216
    invoke-static {}, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->getInstance()Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;

    move-result-object v0

    .line 217
    invoke-virtual {v0, p0}, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->createProxyClass(I)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getHookCounter()I
    .registers 4

    .line 221
    sget-object v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->sNextHookId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getHookedMethodsRaw()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Member;",
            ">;"
        }
    .end annotation

    .line 225
    sget-object v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->sHookedMethods:Ljava/util/Set;

    return-object v0
.end method

.method public static hookAndRegisterMethodCallback(Ljava/lang/reflect/Member;Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;I)Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$UnhookHandle;
    .registers 11

    .line 66
    const-string v0, "method"

    invoke-static {p0, v0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const-string v0, "callback"

    invoke-static {p1, v0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    :try_start_a
    invoke-static {p2}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->generateProxyClassForCallback(I)Ljava/lang/Class;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_10

    move v1, p2

    goto :goto_1c

    :catch_10
    move-exception v0

    .line 78
    const-string v1, "QAuxv"

    const-string v2, "failed to generate proxy class, fallback to default"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    sget-object v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->DEFAULT_PROXY:Ljava/lang/Class;

    const/16 v1, 0x32

    .line 85
    :goto_1c
    new-instance v2, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    invoke-direct {v2, p1, p2, v1}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;-><init>(Lme/yxp/qfun/loader/hookapi/IHookBridge$IMemberHookCallback;II)V

    .line 86
    new-instance p1, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$UnhookHandle;

    invoke-direct {p1, v2, p0}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$UnhookHandle;-><init>(Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;Ljava/lang/reflect/Member;)V

    .line 87
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 89
    sget-object v4, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->sRegistryWriteLock:Ljava/lang/Object;

    monitor-enter v4

    .line 91
    :try_start_2d
    sget-object v5, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->sCallbackRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v6, :cond_4b

    .line 93
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :catchall_48
    move-exception p0

    goto/16 :goto_db

    .line 97
    :cond_4b
    :goto_4b
    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v5, :cond_5b

    .line 99
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 100
    invoke-virtual {v6, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_5b
    invoke-virtual {v5, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;

    if-nez v3, :cond_a1

    .line 105
    instance-of v3, p0, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_70

    .line 106
    sget-object v3, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->self:Lio/github/libxposed/api/XposedModule;

    move-object v6, p0

    check-cast v6, Ljava/lang/reflect/Method;

    invoke-virtual {v3, v6, v1, v0}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Method;ILjava/lang/Class;)Lio/github/libxposed/api/XposedInterface$MethodUnhooker;

    goto :goto_7c

    .line 107
    :cond_70
    instance-of v3, p0, Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_8a

    .line 108
    sget-object v3, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->self:Lio/github/libxposed/api/XposedModule;

    move-object v6, p0

    check-cast v6, Ljava/lang/reflect/Constructor;

    invoke-virtual {v3, v6, v1, v0}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Constructor;ILjava/lang/Class;)Lio/github/libxposed/api/XposedInterface$MethodUnhooker;

    .line 113
    :goto_7c
    new-instance v3, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;

    invoke-direct {v3}, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;-><init>()V

    .line 114
    invoke-virtual {v5, p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->sHookedMethods:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 110
    :cond_8a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "only method and constructor can be hooked, but got "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_a1
    :goto_a1
    monitor-exit v4
    :try_end_a2
    .catchall {:try_start_2d .. :try_end_a2} :catchall_48

    .line 121
    iget-object p0, v3, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;->lock:Ljava/lang/Object;

    monitor-enter p0

    .line 123
    :try_start_a5
    iget-object v0, v3, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;->callbacks:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    const/4 v1, 0x1

    if-nez v0, :cond_ab

    goto :goto_ad

    :cond_ab
    array-length v4, v0

    add-int/2addr v1, v4

    .line 124
    :goto_ad
    new-array v1, v1, [Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    const/4 v4, 0x0

    if-eqz v0, :cond_d3

    .line 127
    :goto_b2
    iget-object v0, v3, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;->callbacks:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    array-length v5, v0

    if-ge v4, v5, :cond_c4

    .line 128
    aget-object v0, v0, v4

    iget v5, v0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;->priority:I

    if-le v5, p2, :cond_c4

    .line 129
    aput-object v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b2

    :catchall_c2
    move-exception p1

    goto :goto_d9

    .line 134
    :cond_c4
    aput-object v2, v1, v4

    .line 135
    :goto_c6
    iget-object p2, v3, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;->callbacks:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    array-length v0, p2

    if-ge v4, v0, :cond_d5

    add-int/lit8 v0, v4, 0x1

    .line 136
    aget-object p2, p2, v4

    aput-object p2, v1, v0

    move v4, v0

    goto :goto_c6

    .line 139
    :cond_d3
    aput-object v2, v1, v4

    .line 141
    :cond_d5
    iput-object v1, v3, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;->callbacks:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    .line 142
    monitor-exit p0

    return-object p1

    :goto_d9
    monitor-exit p0
    :try_end_da
    .catchall {:try_start_a5 .. :try_end_da} :catchall_c2

    throw p1

    .line 119
    :goto_db
    :try_start_db
    monitor-exit v4
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_48

    throw p0
.end method

.method public static isMethodCallbackRegistered(Ljava/lang/reflect/Member;Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;)Z
    .registers 6

    .line 176
    const-string v0, "method"

    invoke-static {p0, v0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    const-string v0, "callback"

    invoke-static {p1, v0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget v0, p1, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;->tag:I

    .line 179
    sget-object v1, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->sCallbackRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    return v1

    .line 184
    :cond_1c
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_29

    return v1

    .line 188
    :cond_29
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;

    if-nez p0, :cond_32

    return v1

    .line 193
    :cond_32
    iget-object p0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;->callbacks:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    .line 194
    array-length v0, p0

    move v2, v1

    :goto_36
    if-ge v2, v0, :cond_41

    aget-object v3, p0, v2

    if-ne v3, p1, :cond_3e

    const/4 p0, 0x1

    return p0

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_41
    return v1
.end method

.method public static removeMethodCallback(Ljava/lang/reflect/Member;Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;)V
    .registers 9

    .line 147
    const-string v0, "method"

    invoke-static {p0, v0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    const-string v0, "callback"

    invoke-static {p1, v0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget v0, p1, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;->tag:I

    .line 151
    sget-object v1, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper;->sCallbackRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1b

    goto :goto_30

    .line 155
    :cond_1b
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_28

    goto :goto_30

    .line 159
    :cond_28
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;

    if-nez p0, :cond_31

    :goto_30
    return-void

    .line 164
    :cond_31
    iget-object v0, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v2, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;->callbacks:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_3e
    if-ge v5, v3, :cond_4d

    aget-object v6, v2, v5

    if-eq v6, p1, :cond_4a

    .line 168
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :catchall_48
    move-exception p0

    goto :goto_59

    :cond_4a
    :goto_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 171
    :cond_4d
    new-array p1, v4, [Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    iput-object p1, p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackListHolder;->callbacks:[Lme/yxp/qfun/loader/lsp100/Lsp100HookWrapper$CallbackWrapper;

    .line 172
    monitor-exit v0

    return-void

    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_34 .. :try_end_5a} :catchall_48

    throw p0
.end method
