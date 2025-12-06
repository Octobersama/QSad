.class public Lme/yxp/qfun/lifecycle/Parasitics;
.super Ljava/lang/Object;
.source "Parasitics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/lifecycle/Parasitics$ResourcesLoaderHolderApi30;,
        Lme/yxp/qfun/lifecycle/Parasitics$ProxyInstrumentation;,
        Lme/yxp/qfun/lifecycle/Parasitics$ProxyHandlerCallback;,
        Lme/yxp/qfun/lifecycle/Parasitics$IActivityManagerHandler;,
        Lme/yxp/qfun/lifecycle/Parasitics$PackageManagerInvocationHandler;
    }
.end annotation


# static fields
.field private static final ACTIVITY_PROXY_INTENT:Ljava/lang/String; = "ACTIVITY_PROXY_INTENT"

.field private static final InjectActivityNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STUB_DEFAULT_ACTIVITY:Ljava/lang/String; = "com.tencent.mobileqq.activity.photo.CameraPreviewActivity"

.field private static final moduleloader:Ljava/lang/ClassLoader;


# direct methods
.method public static synthetic $r8$lambda$yaVQuF362E-OpqR501aPIkJi4sM(Landroid/content/res/Resources;Ljava/lang/String;)V
    .registers 5

    .line 103
    :try_start_0
    sget-object v0, Lme/yxp/qfun/lifecycle/Parasitics$ResourcesLoaderHolderApi30;->sResourcesLoader:Landroid/content/res/loader/ResourcesLoader;

    filled-new-array {v0}, [Landroid/content/res/loader/ResourcesLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    .line 105
    const-string v1, "Cannot modify resource loaders of ResourcesImpl not registered with ResourcesManager"

    .line 106
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 107
    invoke-static {p0, p1}, Lme/yxp/qfun/lifecycle/Parasitics;->injectResourcesBelowApi30(Landroid/content/res/Resources;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_1b
    throw v0
.end method

.method public static bridge synthetic -$$Nest$sfgetInjectActivityNames()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lme/yxp/qfun/lifecycle/Parasitics;->InjectActivityNames:Ljava/util/List;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmoduleloader()Ljava/lang/ClassLoader;
    .registers 1

    .line 0
    sget-object v0, Lme/yxp/qfun/lifecycle/Parasitics;->moduleloader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 66
    const-string v0, "me.yxp.qfun.activity.InjectSettings"

    const-string v1, "me.yxp.qfun.activity.JavaPlugin"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/lifecycle/Parasitics;->InjectActivityNames:Ljava/util/List;

    .line 69
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->getModuleClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/lifecycle/Parasitics;->moduleloader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initForStubActivity(Landroid/content/Context;)V
    .registers 13

    .line 129
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 130
    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    .line 131
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 132
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 133
    const-string v5, "mInstrumentation"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 134
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 135
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Instrumentation;

    .line 136
    new-instance v7, Lme/yxp/qfun/lifecycle/Parasitics$ProxyInstrumentation;

    invoke-direct {v7, v6}, Lme/yxp/qfun/lifecycle/Parasitics$ProxyInstrumentation;-><init>(Landroid/app/Instrumentation;)V

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    const-string v5, "mH"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 139
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 140
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    .line 141
    const-class v6, Landroid/os/Handler;

    const-string v7, "mCallback"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 142
    invoke-virtual {v6, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 143
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Handler$Callback;

    if-eqz v7, :cond_62

    .line 144
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lme/yxp/qfun/lifecycle/Parasitics$ProxyHandlerCallback;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6a

    .line 145
    :cond_62
    new-instance v8, Lme/yxp/qfun/lifecycle/Parasitics$ProxyHandlerCallback;

    invoke-direct {v8, v7}, Lme/yxp/qfun/lifecycle/Parasitics$ProxyHandlerCallback;-><init>(Landroid/os/Handler$Callback;)V

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6a} :catch_126

    .line 151
    :cond_6a
    :try_start_6a
    const-string v5, "android.app.ActivityManagerNative"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 152
    const-string v6, "gDefault"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_76} :catch_77

    goto :goto_83

    .line 155
    :catch_77
    :try_start_77
    const-string v5, "android.app.ActivityManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 156
    const-string v6, "IActivityManagerSingleton"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 162
    :goto_83
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 163
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 164
    const-string v6, "android.util.Singleton"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 165
    const-string v7, "mInstance"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 166
    invoke-virtual {v7, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 167
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 168
    sget-object v9, Lme/yxp/qfun/lifecycle/Parasitics;->moduleloader:Ljava/lang/ClassLoader;

    const-string v10, "android.app.IActivityManager"

    .line 169
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v10

    new-instance v11, Lme/yxp/qfun/lifecycle/Parasitics$IActivityManagerHandler;

    invoke-direct {v11, v8}, Lme/yxp/qfun/lifecycle/Parasitics$IActivityManagerHandler;-><init>(Ljava/lang/Object;)V

    .line 168
    invoke-static {v9, v10, v11}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v8

    .line 170
    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_b5} :catch_126

    .line 173
    :try_start_b5
    const-string v5, "android.app.ActivityTaskManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 174
    const-string v8, "IActivityTaskManagerSingleton"

    .line 175
    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 176
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 177
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 178
    const-string v8, "get"

    invoke-virtual {v6, v8, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 180
    const-string v6, "android.app.IActivityTaskManager"

    .line 181
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    new-instance v8, Lme/yxp/qfun/lifecycle/Parasitics$IActivityManagerHandler;

    invoke-direct {v8, v2}, Lme/yxp/qfun/lifecycle/Parasitics$IActivityManagerHandler;-><init>(Ljava/lang/Object;)V

    .line 180
    invoke-static {v9, v6, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 183
    invoke-virtual {v7, v5, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_eb} :catch_eb

    .line 187
    :catch_eb
    :try_start_eb
    const-string v2, "sPackageManager"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 189
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 190
    const-string v4, "android.content.pm.IPackageManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mPM"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 193
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 194
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    new-instance v6, Lme/yxp/qfun/lifecycle/Parasitics$PackageManagerInvocationHandler;

    invoke-direct {v6, v2}, Lme/yxp/qfun/lifecycle/Parasitics$PackageManagerInvocationHandler;-><init>(Ljava/lang/Object;)V

    invoke-static {v3, v4, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 196
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    invoke-virtual {v5, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_126} :catch_126

    :catch_126
    return-void
.end method

.method public static injectModuleResources(Landroid/content/res/Resources;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 76
    :cond_3
    :try_start_3
    sget v0, Lme/yxp/qfun/R$drawable;->ic_launcher:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_8} :catch_9

    return-void

    .line 80
    :catch_9
    invoke-static {}, Lme/yxp/qfun/common/ModuleLoader;->getMODULE_PATH()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {p0, v0}, Lme/yxp/qfun/lifecycle/Parasitics;->injectResourcesAboveApi30(Landroid/content/res/Resources;Ljava/lang/String;)V

    return-void
.end method

.method private static injectResourcesAboveApi30(Landroid/content/res/Resources;Ljava/lang/String;)V
    .registers 4

    .line 89
    sget-object v0, Lme/yxp/qfun/lifecycle/Parasitics$ResourcesLoaderHolderApi30;->sResourcesLoader:Landroid/content/res/loader/ResourcesLoader;

    if-nez v0, :cond_1d

    .line 91
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/content/res/loader/ResourcesProvider;->loadFromApk(Landroid/os/ParcelFileDescriptor;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object v0

    .line 94
    new-instance v1, Landroid/content/res/loader/ResourcesLoader;

    invoke-direct {v1}, Landroid/content/res/loader/ResourcesLoader;-><init>()V

    .line 95
    invoke-virtual {v1, v0}, Landroid/content/res/loader/ResourcesLoader;->addProvider(Landroid/content/res/loader/ResourcesProvider;)V

    .line 96
    sput-object v1, Lme/yxp/qfun/lifecycle/Parasitics$ResourcesLoaderHolderApi30;->sResourcesLoader:Landroid/content/res/loader/ResourcesLoader;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1d} :catch_1d

    .line 100
    :catch_1d
    :cond_1d
    new-instance v0, Lme/yxp/qfun/lifecycle/Parasitics$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lme/yxp/qfun/lifecycle/Parasitics$$ExternalSyntheticLambda0;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-static {v0}, Lme/yxp/qfun/utils/thread/SyncUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static injectResourcesBelowApi30(Landroid/content/res/Resources;Ljava/lang/String;)V
    .registers 5

    .line 118
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 119
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "addAssetPath"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 121
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_23

    :catch_23
    return-void
.end method
