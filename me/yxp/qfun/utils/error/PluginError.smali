.class public Lme/yxp/qfun/utils/error/PluginError;
.super Ljava/lang/Object;
.source "PluginError.java"


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lme/yxp/qfun/utils/error/PluginError;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V
    .registers 4

    .line 22
    const-string v0, "callError"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lme/yxp/qfun/utils/error/PluginError;->logPluginError(Ljava/lang/String;Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static evalError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V
    .registers 4

    .line 18
    const-string v0, "evalError"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lme/yxp/qfun/utils/error/PluginError;->logPluginError(Ljava/lang/String;Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static findError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Ljava/lang/String;)V
    .registers 5

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "回调("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")未找到"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "findError"

    invoke-static {v0, p0, p1, p2}, Lme/yxp/qfun/utils/error/PluginError;->logPluginError(Ljava/lang/String;Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Ljava/lang/String;)V

    return-void
.end method

.method private static logPluginError(Ljava/lang/String;Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;Ljava/lang/String;)V
    .registers 9

    .line 32
    const-string v0, "\n\n"

    :try_start_2
    sget-object v1, Lme/yxp/qfun/utils/error/PluginError;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v4, "\n\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string p0, "Time:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_34

    .line 40
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lme/yxp/qfun/utils/qq/ToastUtils;->Toast(Ljava/lang/String;)V

    .line 51
    new-instance p1, Ljava/io/FileWriter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginPath:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/error.txt"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 52
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_61} :catch_61

    :catch_61
    return-void
.end method
