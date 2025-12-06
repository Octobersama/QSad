.class public Lme/yxp/qfun/loader/lsp100/Lsp100ExtCmd;
.super Ljava/lang/Object;
.source "Lsp100ExtCmd.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleQueryExtension(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 41
    const-string v0, "cmd"

    invoke-static {p0, v0}, Lme/yxp/qfun/common/CheckUtils;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_62

    goto :goto_48

    :sswitch_12
    const-string v0, "GetLoadPackageParam"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_48

    :cond_1b
    const/4 v2, 0x4

    goto :goto_48

    :sswitch_1d
    const-string v0, "GetInitErrors"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_48

    :cond_26
    const/4 v2, 0x3

    goto :goto_48

    :sswitch_28
    const-string v0, "GetXposedInterfaceClass"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_48

    :cond_31
    const/4 v2, 0x2

    goto :goto_48

    :sswitch_33
    const-string v0, "SetLibXposedNewApiByteCodeGeneratorWrapper"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_48

    :cond_3c
    const/4 v2, 0x1

    goto :goto_48

    :sswitch_3e
    const-string v0, "GetInitZygoteStartupParam"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    goto :goto_48

    :cond_47
    move v2, v1

    :goto_48
    const/4 p0, 0x0

    packed-switch v2, :pswitch_data_78

    return-object p0

    .line 44
    :pswitch_4d  #0x4
    sget-object p0, Lme/yxp/qfun/loader/lsp100/Lsp100HookEntry;->packageLoadedParam:Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;

    return-object p0

    .line 46
    :pswitch_50  #0x3
    invoke-static {}, Lme/yxp/qfun/common/ModuleLoader;->getInitErrors()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 43
    :pswitch_55  #0x2
    const-class p0, Lio/github/libxposed/api/XposedInterface;

    return-object p0

    .line 48
    :pswitch_58  #0x1
    aget-object p0, p1, v1

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-static {p0}, Lme/yxp/qfun/loader/lsp100/codegen/Lsp100ProxyClassMaker;->setWrapperMethod(Ljava/lang/reflect/Method;)V

    .line 49
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :pswitch_61  #0x0
    return-object p0

    :sswitch_data_62
    .sparse-switch
        -0x5dfef6b2 -> :sswitch_3e
        -0x3daf3133 -> :sswitch_33
        0x2a61970 -> :sswitch_28
        0x154f9c71 -> :sswitch_1d
        0x6b7fcf43 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_61  #00000000
        :pswitch_58  #00000001
        :pswitch_55  #00000002
        :pswitch_50  #00000003
        :pswitch_4d  #00000004
    .end packed-switch
.end method
