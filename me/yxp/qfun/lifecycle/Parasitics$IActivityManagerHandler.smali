.class Lme/yxp/qfun/lifecycle/Parasitics$IActivityManagerHandler;
.super Ljava/lang/Object;
.source "Parasitics.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/lifecycle/Parasitics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IActivityManagerHandler"
.end annotation


# instance fields
.field private final mOrigin:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lme/yxp/qfun/lifecycle/Parasitics$IActivityManagerHandler;->mOrigin:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 222
    const-string p1, "startActivity"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    const/4 p1, 0x0

    .line 224
    :goto_d
    array-length v0, p3

    const/4 v1, -0x1

    if-ge p1, v0, :cond_1b

    .line 225
    aget-object v0, p3, p1

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_18

    goto :goto_1c

    :cond_18
    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1b
    move p1, v1

    :goto_1c
    if-eq p1, v1, :cond_59

    .line 231
    aget-object v0, p3, p1

    check-cast v0, Landroid/content/Intent;

    .line 232
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 234
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-static {}, Lme/yxp/qfun/lifecycle/Parasitics;->-$$Nest$sfgetInjectActivityNames()Ljava/util/List;

    move-result-object v2

    .line 235
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 237
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 238
    const-string v3, "com.tencent.mobileqq.activity.photo.CameraPreviewActivity"

    .line 240
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v1, "ACTIVITY_PROXY_INTENT"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 242
    aput-object v2, p3, p1

    .line 247
    :cond_59
    :try_start_59
    iget-object p0, p0, Lme/yxp/qfun/lifecycle/Parasitics$IActivityManagerHandler;->mOrigin:Ljava/lang/Object;

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_5f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_59 .. :try_end_5f} :catch_60

    return-object p0

    :catch_60
    move-exception p0

    .line 249
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method
