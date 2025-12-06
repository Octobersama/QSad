.class public abstract Lme/yxp/qfun/hook/base/BaseWithDataHookItem;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "BaseWithDataHookItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "基础可点击项"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract initData()V
.end method

.method public abstract onClick(Landroid/view/View;)V
.end method

.method public abstract savaData()V
.end method
