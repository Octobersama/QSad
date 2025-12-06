.class public Lme/yxp/qfun/javaplugin/loader/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field public static autoLoadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static pluginInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme/yxp/qfun/javaplugin/loader/PluginInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9cIJkh4iaTE4USAVu1PfwZ0HJm4(Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V
    .registers 2

    .line 93
    :try_start_0
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

    invoke-virtual {v0}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->startPlugin()V
    :try_end_5
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 95
    invoke-static {v0, p0}, Lme/yxp/qfun/utils/error/PluginError;->evalError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MSoBMe6ABWKbe7N_-tSPFB0xoCg(Ljava/io/File;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lme/yxp/qfun/javaplugin/loader/PluginManager;->hasRequiredFiles(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Qr2pRY9PGTZ7Mk-f4pyol_tlldg(Ljava/io/File;)Lme/yxp/qfun/javaplugin/loader/PluginInfo;
    .registers 1

    .line 0
    invoke-static {p0}, Lme/yxp/qfun/javaplugin/loader/PluginManager;->createPluginInfoFromDirectory(Ljava/io/File;)Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RU4JYttCTXViNR8pPCT4FtcajPg(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XsKiQvQCJknZ28-swkx3SR9A7No(Lme/yxp/qfun/javaplugin/loader/PluginInfo;)Z
    .registers 2

    .line 52
    sget-object v0, Lme/yxp/qfun/javaplugin/loader/PluginManager;->pluginInfos:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lme/yxp/qfun/javaplugin/loader/PluginManager;->pluginInfos:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoLoadPlugin()V
    .registers 4

    .line 84
    const-string v0, "data"

    const-string v1, "AutoLoadList"

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/data/DataUtils;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sput-object v0, Lme/yxp/qfun/javaplugin/loader/PluginManager;->autoLoadList:Ljava/util/List;

    if-nez v0, :cond_15

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lme/yxp/qfun/javaplugin/loader/PluginManager;->autoLoadList:Ljava/util/List;

    .line 89
    :cond_15
    sget-object v0, Lme/yxp/qfun/javaplugin/loader/PluginManager;->pluginInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    .line 90
    sget-object v2, Lme/yxp/qfun/javaplugin/loader/PluginManager;->autoLoadList:Ljava/util/List;

    iget-object v3, v1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 91
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 97
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1b

    :cond_3f
    return-void
.end method

.method private static createPluginInfoFromDirectory(Ljava/io/File;)Lme/yxp/qfun/javaplugin/loader/PluginInfo;
    .registers 12

    const/4 v1, 0x0

    .line 57
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    const-string v3, "info.prop"

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_6c

    .line 58
    :try_start_d
    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_4d

    .line 60
    :try_start_14
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 61
    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 62
    const-string v4, "id"

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_53

    .line 63
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    goto :goto_53

    .line 66
    :cond_2b
    new-instance v5, Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    const-string v4, "pluginName"

    .line 67
    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "versionCode"

    .line 68
    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "author"

    .line 69
    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 70
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v5 .. v10}, Lme/yxp/qfun/javaplugin/loader/PluginInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_14 .. :try_end_46} :catchall_50

    .line 73
    :try_start_46
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4d

    :try_start_49
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_6c

    return-object v5

    :catchall_4d
    move-exception v0

    move-object p0, v0

    goto :goto_63

    :catchall_50
    move-exception v0

    move-object p0, v0

    goto :goto_5a

    :cond_53
    :goto_53
    :try_start_53
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_4d

    :try_start_56
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_6c

    return-object v1

    .line 57
    :goto_5a
    :try_start_5a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception v0

    :try_start_5f
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_62
    throw p0
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_4d

    :goto_63
    :try_start_63
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_6b

    :catchall_67
    move-exception v0

    :try_start_68
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6b
    throw p0
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6c} :catch_6c

    :catch_6c
    return-object v1
.end method

.method public static deletePlugin(Lme/yxp/qfun/javaplugin/loader/PluginInfo;Landroid/app/Activity;)V
    .registers 4

    .line 109
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

    invoke-virtual {v0}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->stopPlugin()V

    .line 110
    sget-object v0, Lme/yxp/qfun/javaplugin/loader/PluginManager;->pluginInfos:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lme/yxp/qfun/javaplugin/loader/PluginManager;->autoLoadList:Ljava/util/List;

    iget-object v1, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 113
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginPath:Ljava/lang/String;

    invoke-static {p0}, Lme/yxp/qfun/utils/data/FileUtils;->deleteDirectory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 114
    check-cast p1, Lme/yxp/qfun/activity/JavaPlugin;

    invoke-virtual {p1}, Lme/yxp/qfun/activity/JavaPlugin;->notifyDataSetChanged()V

    :cond_1e
    return-void
.end method

.method public static getAllPlugin()V
    .registers 3

    .line 37
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getMODULE_DATA_PATH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/plugin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void

    .line 43
    :cond_2b
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda2;-><init>()V

    .line 44
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda3;-><init>()V

    .line 45
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda4;-><init>()V

    .line 46
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda5;-><init>()V

    .line 47
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 48
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 50
    sget-object v1, Lme/yxp/qfun/javaplugin/loader/PluginManager;->pluginInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 51
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda6;-><init>()V

    .line 52
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lme/yxp/qfun/javaplugin/loader/PluginManager;->pluginInfos:Ljava/util/List;

    .line 53
    new-instance v2, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static hasRequiredFiles(Ljava/io/File;)Z
    .registers 4

    .line 79
    const-string v0, "info.prop"

    const-string v1, "desc.txt"

    const-string v2, "main.java"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lme/yxp/qfun/javaplugin/loader/PluginManager$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;)V

    .line 80
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static importPlugin(Landroid/net/Uri;Landroid/app/Activity;)V
    .registers 12

    .line 119
    invoke-static {p1, p0}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    .line 120
    const-string v1, "导入失败"

    const/4 v2, 0x1

    if-eqz p0, :cond_ec

    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_ec

    .line 125
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getMODULE_DATA_PATH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/plugin/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3f
    if-ge v5, v4, :cond_53

    aget-object v6, v3, v5

    .line 130
    invoke-virtual {v6}, Landroidx/documentfile/provider/DocumentFile;->isFile()Z

    move-result v7

    if-eqz v7, :cond_50

    .line 131
    invoke-virtual {v6}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    .line 135
    :cond_53
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "main.java"

    const-string v5, "desc.txt"

    const-string v6, "info.prop"

    filled-new-array {v4, v6, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 136
    :try_start_6b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7d} :catch_e5

    .line 137
    :try_start_7d
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 138
    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v0, v4}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 140
    new-instance v4, Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    const-string v5, "pluginName"

    .line 141
    invoke-virtual {v0, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "versionCode"

    .line 142
    invoke-virtual {v0, v6}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "author"

    .line 143
    invoke-virtual {v0, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "id"

    .line 145
    invoke-virtual {v0, v9}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lme/yxp/qfun/javaplugin/loader/PluginInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0, v0}, Lme/yxp/qfun/utils/data/FileUtils;->copyDirectoryRecursively(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V

    .line 149
    sget-object p0, Lme/yxp/qfun/javaplugin/loader/PluginManager;->pluginInfos:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    check-cast p1, Lme/yxp/qfun/activity/JavaPlugin;

    invoke-virtual {p1}, Lme/yxp/qfun/activity/JavaPlugin;->notifyDataSetChanged()V

    .line 151
    const-string p0, "导入成功"

    const/4 p1, 0x2

    invoke-static {p1, p0}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V
    :try_end_d1
    .catchall {:try_start_7d .. :try_end_d1} :catchall_d7

    if-eqz v3, :cond_d6

    .line 153
    :try_start_d3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d6} :catch_e5

    :cond_d6
    return-void

    :catchall_d7
    move-exception v0

    move-object p0, v0

    if-eqz v3, :cond_e4

    .line 136
    :try_start_db
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_de
    .catchall {:try_start_db .. :try_end_de} :catchall_df

    goto :goto_e4

    :catchall_df
    move-exception v0

    move-object p1, v0

    :try_start_e1
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e4
    :goto_e4
    throw p0
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e5} :catch_e5

    .line 154
    :catch_e5
    invoke-static {v2, v1}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    .line 158
    :cond_e8
    invoke-static {v2, v1}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    return-void

    .line 121
    :cond_ec
    :goto_ec
    invoke-static {v2, v1}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    return-void
.end method

.method public static stopAllPlugin()V
    .registers 2

    .line 103
    sget-object v0, Lme/yxp/qfun/javaplugin/loader/PluginManager;->pluginInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    .line 104
    iget-object v1, v1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

    invoke-virtual {v1}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->stopPlugin()V

    goto :goto_6

    :cond_18
    return-void
.end method
