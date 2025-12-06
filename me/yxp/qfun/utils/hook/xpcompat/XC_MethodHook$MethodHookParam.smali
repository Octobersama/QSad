.class public abstract Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;
.super Ljava/lang/Object;
.source "XC_MethodHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MethodHookParam"
.end annotation


# instance fields
.field public args:[Ljava/lang/Object;

.field public method:Ljava/lang/reflect/Member;

.field public thisObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getResult()Ljava/lang/Object;
.end method

.method public abstract getResultOrThrowable()Ljava/lang/Object;
.end method

.method public abstract getThrowable()Ljava/lang/Throwable;
.end method

.method public abstract hasThrowable()Z
.end method

.method public abstract setResult(Ljava/lang/Object;)V
.end method

.method public abstract setThrowable(Ljava/lang/Throwable;)V
.end method
