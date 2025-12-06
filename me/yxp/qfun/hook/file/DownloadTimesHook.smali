.class public final Lme/yxp/qfun/hook/file/DownloadTimesHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "DownloadTimesHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "显示文件下载次数"
    desc = "群文件显示具体下载次数（显示无效可尝试进入群文件页面触发热插件下载后重启应用）"
.end annotation


# static fields
.field private static sGetItem:Ljava/lang/reflect/Method;

.field private static sGetView:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$_BqQzqVYdhRQrDe7WMlYadbute4(Lme/yxp/qfun/hook/file/DownloadTimesHook;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/file/DownloadTimesHook;->lambda$initCallback$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method

.method private getDownloadTimes(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 73
    const-string p0, "uint32_download_times=(\\d+)"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 74
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 79
    const-string p0, "str_file_name=\'([^\']*)\'"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 80
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$initCallback$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)V
    .registers 9

    .line 50
    sget-object v0, Lme/yxp/qfun/hook/file/DownloadTimesHook;->sGetItem:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v2, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-direct {p0, v0}, Lme/yxp/qfun/hook/file/DownloadTimesHook;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-direct {p0, v0}, Lme/yxp/qfun/hook/file/DownloadTimesHook;->getDownloadTimes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_70

    if-nez p0, :cond_22

    goto :goto_70

    .line 58
    :cond_22
    invoke-virtual {p1}, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v2, v0

    :goto_35
    if-ge v3, v2, :cond_70

    aget-object v4, v0, v3

    const/4 v5, 0x1

    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 61
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 62
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_6d

    .line 63
    check-cast v4, Landroid/widget/TextView;

    .line 64
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(下载次数："

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_70
    :goto_70
    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 4

    .line 49
    sget-object v0, Lme/yxp/qfun/hook/file/DownloadTimesHook;->sGetView:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/file/DownloadTimesHook$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/file/DownloadTimesHook$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/file/DownloadTimesHook;)V

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->hookIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;Lme/yxp/qfun/utils/hook/HookUtils$Hooker;)V

    return-void
.end method

.method public initMethod()Z
    .registers 3

    .line 24
    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->isInTargetProcess()Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 30
    :cond_8
    :try_start_8
    const-string p0, "com.tencent.mobileqq.troop.file.data.TroopFileShowAdapter"

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_17

    .line 32
    :catch_f
    const-string p0, "troop_plugin.apk"

    const-string v0, "com.tencent.mobileqq.troop.data.TroopFileShowAdapter"

    invoke-static {p0, v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->loadFromPlugin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 36
    :goto_17
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "getView"

    .line 37
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/hook/file/DownloadTimesHook;->sGetView:Ljava/lang/reflect/Method;

    .line 40
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const-string v0, "getItem"

    .line 41
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/file/DownloadTimesHook;->sGetItem:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method
