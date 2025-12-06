.class Lme/yxp/qfun/javaplugin/view/PluginView$1;
.super Ljava/lang/Object;
.source "PluginView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/yxp/qfun/javaplugin/view/PluginView;->setupTouchListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mTouchStartTime:J

.field private mTouchStartX:F

.field private mTouchStartY:F

.field final synthetic this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lme/yxp/qfun/javaplugin/view/PluginView;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    iput-object p2, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .registers 4

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->mTouchStartTime:J

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->mTouchStartX:F

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->mTouchStartY:F

    .line 130
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lme/yxp/qfun/javaplugin/view/PluginView;->-$$Nest$fputmInitialTouchX(Lme/yxp/qfun/javaplugin/view/PluginView;F)V

    .line 131
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-static {p0, p1}, Lme/yxp/qfun/javaplugin/view/PluginView;->-$$Nest$fputmInitialTouchY(Lme/yxp/qfun/javaplugin/view/PluginView;F)V

    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;II)V
    .registers 7

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->mTouchStartX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->mTouchStartY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/16 v2, 0xa

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_21

    cmpl-float v0, v1, v2

    if-lez v0, :cond_27

    .line 141
    :cond_21
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/yxp/qfun/javaplugin/view/PluginView;->-$$Nest$fputmIsDragging(Lme/yxp/qfun/javaplugin/view/PluginView;Z)V

    .line 144
    :cond_27
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-static {v0}, Lme/yxp/qfun/javaplugin/view/PluginView;->-$$Nest$fgetmIsDragging(Lme/yxp/qfun/javaplugin/view/PluginView;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-static {v1}, Lme/yxp/qfun/javaplugin/view/PluginView;->-$$Nest$fgetmInitialTouchX(Lme/yxp/qfun/javaplugin/view/PluginView;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-static {v2}, Lme/yxp/qfun/javaplugin/view/PluginView;->-$$Nest$fgetmInitialTouchY(Lme/yxp/qfun/javaplugin/view/PluginView;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 148
    iget-object v2, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-static {v2}, Lme/yxp/qfun/javaplugin/view/PluginView;->-$$Nest$fgetmCurrentX(Lme/yxp/qfun/javaplugin/view/PluginView;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 149
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-static {v0}, Lme/yxp/qfun/javaplugin/view/PluginView;->-$$Nest$fgetmCurrentY(Lme/yxp/qfun/javaplugin/view/PluginView;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    int-to-float p2, p2

    .line 151
    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    int-to-float p3, p3

    .line 152
    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 154
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-static {v0}, Lme/yxp/qfun/javaplugin/view/PluginView;->-$$Nest$fgetmPopupWindow(Lme/yxp/qfun/javaplugin/view/PluginView;)Landroid/widget/PopupWindow;

    move-result-object v0

    float-to-int p2, p2

    float-to-int p3, p3

    const/4 v1, -0x1

    invoke-virtual {v0, p2, p3, v1, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 156
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-static {v0, p2}, Lme/yxp/qfun/javaplugin/view/PluginView;->-$$Nest$fputmCurrentX(Lme/yxp/qfun/javaplugin/view/PluginView;I)V

    .line 157
    iget-object p2, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-static {p2, p3}, Lme/yxp/qfun/javaplugin/view/PluginView;->-$$Nest$fputmCurrentY(Lme/yxp/qfun/javaplugin/view/PluginView;I)V

    .line 159
    iget-object p2, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p3

    invoke-static {p2, p3}, Lme/yxp/qfun/javaplugin/view/PluginView;->-$$Nest$fputmInitialTouchX(Lme/yxp/qfun/javaplugin/view/PluginView;F)V

    .line 160
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-static {p0, p1}, Lme/yxp/qfun/javaplugin/view/PluginView;->-$$Nest$fputmInitialTouchY(Lme/yxp/qfun/javaplugin/view/PluginView;F)V

    :cond_90
    return-void
.end method

.method private handleActionUp()V
    .registers 5

    .line 165
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-static {v0}, Lme/yxp/qfun/javaplugin/view/PluginView;->-$$Nest$fgetmIsDragging(Lme/yxp/qfun/javaplugin/view/PluginView;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->mTouchStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    .line 166
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    invoke-static {v0}, Lme/yxp/qfun/javaplugin/view/PluginView;->-$$Nest$mshowMenu(Lme/yxp/qfun/javaplugin/view/PluginView;)V

    .line 168
    :cond_1a
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->this$0:Lme/yxp/qfun/javaplugin/view/PluginView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lme/yxp/qfun/javaplugin/view/PluginView;->-$$Nest$fputmIsDragging(Lme/yxp/qfun/javaplugin/view/PluginView;Z)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 108
    iget-object p1, p0, Lme/yxp/qfun/javaplugin/view/PluginView$1;->val$activity:Landroid/app/Activity;

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 112
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_26

    if-eq v1, v2, :cond_22

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1e

    goto :goto_29

    .line 117
    :cond_1e
    invoke-direct {p0, p2, v0, p1}, Lme/yxp/qfun/javaplugin/view/PluginView$1;->handleActionMove(Landroid/view/MotionEvent;II)V

    goto :goto_29

    .line 120
    :cond_22
    invoke-direct {p0}, Lme/yxp/qfun/javaplugin/view/PluginView$1;->handleActionUp()V

    goto :goto_29

    .line 114
    :cond_26
    invoke-direct {p0, p2}, Lme/yxp/qfun/javaplugin/view/PluginView$1;->handleActionDown(Landroid/view/MotionEvent;)V

    :goto_29
    return v2
.end method
