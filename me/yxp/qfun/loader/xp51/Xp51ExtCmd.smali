.class public Lme/yxp/qfun/loader/xp51/Xp51ExtCmd;
.super Ljava/lang/Object;
.source "Xp51ExtCmd.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleQueryExtension(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 17
    const-string p1, "cmd"

    invoke-static {p0, p1}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_54

    goto :goto_3c

    :sswitch_11
    const-string p1, "GetLoadPackageParam"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_3c

    :cond_1a
    const/4 v0, 0x3

    goto :goto_3c

    :sswitch_1c
    const-string p1, "GetInitErrors"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_3c

    :cond_25
    const/4 v0, 0x2

    goto :goto_3c

    :sswitch_27
    const-string p1, "GetXposedBridgeClass"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto :goto_3c

    :cond_30
    const/4 v0, 0x1

    goto :goto_3c

    :sswitch_32
    const-string p1, "GetInitZygoteStartupParam"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    packed-switch v0, :pswitch_data_66

    const/4 p0, 0x0

    return-object p0

    .line 20
    :pswitch_41  #0x3
    invoke-static {}, Lme/yxp/qfun/loader/xp51/Xp51HookEntry;->getLoadPackageParam()Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    move-result-object p0

    return-object p0

    .line 22
    :pswitch_46  #0x2
    invoke-static {}, Lme/yxp/qfun/common/ModuleLoader;->getInitErrors()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 19
    :pswitch_4b  #0x1
    const-class p0, Lde/robv/android/xposed/XposedBridge;

    return-object p0

    .line 21
    :pswitch_4e  #0x0
    invoke-static {}, Lme/yxp/qfun/loader/xp51/Xp51HookEntry;->getInitZygoteStartupParam()Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_54
    .sparse-switch
        -0x5dfef6b2 -> :sswitch_32
        -0x112ac8a2 -> :sswitch_27
        0x154f9c71 -> :sswitch_1c
        0x6b7fcf43 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4e  #00000000
        :pswitch_4b  #00000001
        :pswitch_46  #00000002
        :pswitch_41  #00000003
    .end packed-switch
.end method
