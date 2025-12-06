.class public Lme/yxp/qfun/loader/xp51/Xp51HookEntry;
.super Ljava/lang/Object;
.source "Xp51HookEntry.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;
.implements Lde/robv/android/xposed/IXposedHookZygoteInit;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final PACKAGE_NAME_QQ:Ljava/lang/String; = "com.tencent.mobileqq"

.field private static final PACKAGE_NAME_SELF:Ljava/lang/String; = "me.yxp.qfun"

.field private static final PACKAGE_NAME_TIM:Ljava/lang/String; = "com.tencent.tim"

.field public static sCurrentPackageName:Ljava/lang/String;

.field private static sInitZygoteStartupParam:Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;

.field private static sLoadPackageParam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

.field private static sModulePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitZygoteStartupParam()Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;
    .registers 2

    .line 60
    sget-object v0, Lme/yxp/qfun/loader/xp51/Xp51HookEntry;->sInitZygoteStartupParam:Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;

    if-eqz v0, :cond_5

    return-object v0

    .line 61
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InitZygoteStartupParam is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLoadPackageParam()Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .registers 2

    .line 36
    sget-object v0, Lme/yxp/qfun/loader/xp51/Xp51HookEntry;->sLoadPackageParam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    if-eqz v0, :cond_5

    return-object v0

    .line 37
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LoadPackageParam is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getModulePath()Ljava/lang/String;
    .registers 2

    .line 48
    sget-object v0, Lme/yxp/qfun/loader/xp51/Xp51HookEntry;->sModulePath:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 49
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Module path is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 72
    sput-object p1, Lme/yxp/qfun/loader/xp51/Xp51HookEntry;->sLoadPackageParam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 75
    iget-object p0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_56

    goto :goto_30

    :sswitch_10
    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_30

    :cond_19
    const/4 v1, 0x2

    goto :goto_30

    :sswitch_1b
    const-string v0, "me.yxp.qfun"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_30

    :cond_24
    const/4 v1, 0x1

    goto :goto_30

    :sswitch_26
    const-string v0, "com.tencent.tim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    packed-switch v1, :pswitch_data_64

    return-void

    .line 77
    :pswitch_34  #0x1
    iget-object p0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lme/yxp/qfun/loader/xp51/Xp51HookStatusInit;->init(Ljava/lang/ClassLoader;)V

    return-void

    .line 83
    :pswitch_3a  #0x0, 0x2
    sget-object p0, Lme/yxp/qfun/loader/xp51/Xp51HookEntry;->sInitZygoteStartupParam:Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;

    if-eqz p0, :cond_4e

    .line 86
    iget-object p0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    sput-object p0, Lme/yxp/qfun/loader/xp51/Xp51HookEntry;->sCurrentPackageName:Ljava/lang/String;

    .line 87
    iget-object p0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    sget-object p1, Lme/yxp/qfun/loader/xp51/Xp51HookImpl;->INSTANCE:Lme/yxp/qfun/loader/xp51/Xp51HookImpl;

    invoke-static {}, Lme/yxp/qfun/loader/xp51/Xp51HookEntry;->getModulePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p1, v0}, Lme/yxp/qfun/common/ModuleLoader;->initialize(Ljava/lang/ClassLoader;Lme/yxp/qfun/loader/hookapi/ILoaderService;Lme/yxp/qfun/loader/hookapi/IHookBridge;Ljava/lang/String;)V

    return-void

    .line 84
    :cond_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "handleLoadPackage: sInitZygoteStartupParam is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_56
    .sparse-switch
        -0x62b8e7e -> :sswitch_26
        0x11db95a1 -> :sswitch_1b
        0x15924f98 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_3a  #00000000
        :pswitch_34  #00000001
        :pswitch_3a  #00000002
    .end packed-switch
.end method

.method public initZygote(Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;)V
    .registers 2

    .line 101
    sput-object p1, Lme/yxp/qfun/loader/xp51/Xp51HookEntry;->sInitZygoteStartupParam:Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;

    .line 102
    iget-object p0, p1, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;->modulePath:Ljava/lang/String;

    sput-object p0, Lme/yxp/qfun/loader/xp51/Xp51HookEntry;->sModulePath:Ljava/lang/String;

    return-void
.end method
