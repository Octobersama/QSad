.class public Lme/yxp/qfun/javaplugin/loader/LoadJarHelper;
.super Ljava/lang/Object;
.source "LoadJarHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/javaplugin/loader/LoadJarHelper$FixJarClassLoader;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compileJarToDex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 44
    new-instance v4, Lcom/android/dx/dex/DexOptions;

    invoke-direct {v4}, Lcom/android/dx/dex/DexOptions;-><init>()V

    .line 45
    new-instance v5, Lcom/android/dx/dex/file/DexFile;

    invoke-direct {v5, v4}, Lcom/android/dx/dex/file/DexFile;-><init>(Lcom/android/dx/dex/DexOptions;)V

    .line 47
    new-instance v6, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    :cond_14
    :goto_14
    :try_start_14
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5f

    .line 50
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    .line 51
    new-array v2, v2, [B

    .line 54
    :goto_24
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_32

    .line 55
    invoke-virtual {v1, v2, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_24

    :catchall_2f
    move-exception v0

    move-object p0, v0

    goto :goto_99

    .line 58
    :cond_32
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 59
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    .line 60
    new-instance v0, Lcom/android/dx/command/dexer/DxContext;

    invoke-direct {v0}, Lcom/android/dx/command/dexer/DxContext;-><init>()V

    .line 62
    const-string v1, ".class"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 63
    new-instance v1, Lcom/android/dx/cf/direct/DirectClassFile;

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lcom/android/dx/cf/direct/DirectClassFile;-><init>([BLjava/lang/String;Z)V

    .line 64
    sget-object p0, Lcom/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/android/dx/cf/direct/StdAttributeFactory;

    invoke-virtual {v1, p0}, Lcom/android/dx/cf/direct/DirectClassFile;->setAttributeFactory(Lcom/android/dx/cf/direct/AttributeFactory;)V

    .line 65
    new-instance v3, Lcom/android/dx/dex/cf/CfOptions;

    invoke-direct {v3}, Lcom/android/dx/dex/cf/CfOptions;-><init>()V

    invoke-static/range {v0 .. v5}, Lcom/android/dx/dex/cf/CfTranslator;->translate(Lcom/android/dx/command/dexer/DxContext;Lcom/android/dx/cf/direct/DirectClassFile;[BLcom/android/dx/dex/cf/CfOptions;Lcom/android/dx/dex/DexOptions;Lcom/android/dx/dex/file/DexFile;)Lcom/android/dx/dex/file/ClassDefItem;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/android/dx/dex/file/DexFile;->add(Lcom/android/dx/dex/file/ClassDefItem;)V

    goto :goto_14

    .line 70
    :cond_5f
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 71
    invoke-virtual {v5, p0, v1, v0}, Lcom/android/dx/dex/file/DexFile;->writeTo(Ljava/io/OutputStream;Ljava/io/Writer;Z)V

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7a

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 78
    :cond_7a
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_14 .. :try_end_7f} :catchall_2f

    .line 79
    :try_start_7f
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_8d

    .line 80
    :try_start_86
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_2f

    .line 81
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V

    return-void

    :catchall_8d
    move-exception v0

    move-object p0, v0

    .line 78
    :try_start_8f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    goto :goto_98

    :catchall_93
    move-exception v0

    move-object p1, v0

    :try_start_95
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_98
    throw p0
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_2f

    .line 47
    :goto_99
    :try_start_99
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9d

    goto :goto_a2

    :catchall_9d
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a2
    throw p0
.end method

.method public static loadJar(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 6

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/jars/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getHostContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/dex/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".jar"

    const-string v4, ".dex"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {p0, v1}, Lme/yxp/qfun/utils/data/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    invoke-static {v1, v0}, Lme/yxp/qfun/javaplugin/loader/LoadJarHelper;->compileJarToDex(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance p0, Lme/yxp/qfun/javaplugin/loader/LoadJarHelper$FixJarClassLoader;

    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->getHostClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v1}, Lme/yxp/qfun/javaplugin/loader/LoadJarHelper$FixJarClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 40
    new-instance v1, Ldalvik/system/PathClassLoader;

    invoke-direct {v1, v0, p0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v1

    .line 29
    :cond_68
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find jar file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
