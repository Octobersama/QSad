.class public Lme/yxp/qfun/loader/xp51/Xp51HookWrapper;
.super Ljava/lang/Object;
.source "Xp51HookWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51UnhookHandle;,
        Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookCallback;,
        Lme/yxp/qfun/loader/xp51/Xp51HookWrapper$Xp51HookParam;
    }
.end annotation


# static fields
.field private static final TAG_PREFIX:Ljava/lang/String; = "qfun_hcb_"

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


# direct methods
.method public static bridge synthetic -$$Nest$sfgetsNextHookId()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .line 0
    sget-object v0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper;->sNextHookId:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper;->sNextHookId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 39
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper;->sHookedMethods:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHookCounter()I
    .registers 4

    .line 43
    sget-object v0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper;->sNextHookId:Ljava/util/concurrent/atomic/AtomicLong;

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

    .line 48
    sget-object v0, Lme/yxp/qfun/loader/xp51/Xp51HookWrapper;->sHookedMethods:Ljava/util/Set;

    return-object v0
.end method
