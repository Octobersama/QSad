.class public Lme/yxp/qfun/utils/data/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFolderToZip(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .registers 11

    .line 138
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_8

    goto/16 :goto_7d

    .line 141
    :cond_8
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_7d

    aget-object v3, p0, v2

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_20

    const-string v5, ""

    goto :goto_22

    :cond_20
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    :goto_22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 145
    invoke-static {v3, v4, p2}, Lme/yxp/qfun/utils/data/FileUtils;->addFolderToZip(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    goto :goto_66

    .line 147
    :cond_3a
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 148
    :try_start_3f
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_69

    .line 149
    :try_start_44
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-direct {v6, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v4, 0x400

    .line 152
    new-array v4, v4, [B

    .line 154
    :goto_50
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5d

    .line 155
    invoke-virtual {p2, v4, v1, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_50

    :catchall_5b
    move-exception p0

    goto :goto_6b

    .line 157
    :cond_5d
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_60
    .catchall {:try_start_44 .. :try_end_60} :catchall_5b

    .line 158
    :try_start_60
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_69

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :goto_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :catchall_69
    move-exception p0

    goto :goto_74

    .line 147
    :goto_6b
    :try_start_6b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception p1

    :try_start_70
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_73
    throw p0
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_69

    :goto_74
    :try_start_74
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7c
    throw p0

    :cond_7d
    :goto_7d
    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 38
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_15

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 44
    :cond_15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 48
    :cond_1e
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_54

    .line 49
    :try_start_23
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_40

    const/16 v1, 0x1000

    .line 50
    :try_start_2a
    new-array v1, v1, [B

    .line 52
    :goto_2c
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_38

    .line 53
    invoke-virtual {p0, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_36

    goto :goto_2c

    :catchall_36
    move-exception v1

    goto :goto_42

    .line 55
    :cond_38
    :try_start_38
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_40

    :try_start_3b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_54

    const/4 p0, 0x1

    return p0

    :catchall_40
    move-exception p0

    goto :goto_4b

    .line 48
    :goto_42
    :try_start_42
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception p0

    :try_start_47
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4a
    throw v1
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_40

    :goto_4b
    :try_start_4b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception p1

    :try_start_50
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_53
    throw p0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_54} :catch_54

    :catch_54
    return v0
.end method

.method public static copyDirectoryRecursively(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V
    .registers 8

    .line 77
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_39

    .line 81
    :cond_d
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_39

    aget-object v2, p1, v1

    .line 82
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 83
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    invoke-static {p0, v2, v3}, Lme/yxp/qfun/utils/data/FileUtils;->copyDirectoryRecursively(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V

    goto :goto_36

    .line 86
    :cond_2a
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-static {p0, v2, v3}, Lme/yxp/qfun/utils/data/FileUtils;->copySingleFile(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Z

    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_39
    :goto_39
    return-void
.end method

.method public static copySingleFile(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Z
    .registers 6

    const/4 v0, 0x0

    .line 63
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_41

    .line 64
    :try_start_d
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_2b

    const/16 p2, 0x1000

    .line 65
    :try_start_14
    new-array p2, p2, [B

    .line 67
    :goto_16
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    .line 68
    invoke-virtual {p1, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_21

    goto :goto_16

    :catchall_21
    move-exception p2

    goto :goto_2d

    .line 71
    :cond_23
    :try_start_23
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    const/4 p1, 0x1

    :try_start_27
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_41

    return p1

    :catchall_2b
    move-exception p1

    goto :goto_36

    .line 63
    :goto_2d
    :try_start_2d
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception p1

    :try_start_32
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_35
    throw p2
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_2b

    :goto_36
    if-eqz p0, :cond_40

    :try_start_38
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception p0

    :try_start_3d
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_40
    :goto_40
    throw p1
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_41

    :catch_41
    return v0
.end method

.method public static deleteDirectory(Ljava/lang/String;)Z
    .registers 6

    .line 22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 26
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_26

    aget-object v4, p0, v3

    .line 27
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lme/yxp/qfun/utils/data/FileUtils;->deleteDirectory(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    return v2

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 33
    :cond_26
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static unzip(Ljava/io/File;Ljava/io/File;)Z
    .registers 9

    .line 164
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 168
    :cond_e
    :try_start_e
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_a2

    .line 169
    :try_start_13
    new-instance p0, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_8e

    const/16 v2, 0x400

    .line 172
    :try_start_1f
    new-array v2, v2, [B

    .line 174
    :goto_21
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_86

    .line 175
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 178
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6e

    .line 179
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_6e

    :catchall_40
    move-exception p1

    goto :goto_90

    .line 182
    :cond_42
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 183
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_51

    .line 184
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 187
    :cond_51
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_56
    .catchall {:try_start_1f .. :try_end_56} :catchall_40

    .line 188
    :try_start_56
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_72

    .line 190
    :goto_5b
    :try_start_5b
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_68

    .line 191
    invoke-virtual {v4, v2, v1, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_66

    goto :goto_5b

    :catchall_66
    move-exception p1

    goto :goto_74

    .line 193
    :cond_68
    :try_start_68
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_72

    :try_start_6b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 195
    :cond_6e
    :goto_6e
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_40

    goto :goto_21

    :catchall_72
    move-exception p1

    goto :goto_7d

    .line 187
    :goto_74
    :try_start_74
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception v2

    :try_start_79
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7c
    throw p1
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_72

    :goto_7d
    :try_start_7d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    goto :goto_85

    :catchall_81
    move-exception v2

    :try_start_82
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_85
    throw p1
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_40

    .line 198
    :cond_86
    :try_start_86
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8e

    const/4 p0, 0x1

    :try_start_8a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_a2

    return p0

    :catchall_8e
    move-exception p0

    goto :goto_99

    .line 168
    :goto_90
    :try_start_90
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_98

    :catchall_94
    move-exception p0

    :try_start_95
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_98
    throw p1
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_8e

    :goto_99
    :try_start_99
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9d

    goto :goto_a1

    :catchall_9d
    move-exception p1

    :try_start_9e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a1
    throw p0
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a2} :catch_a2

    :catch_a2
    return v1
.end method

.method public static zipFolder(Ljava/io/File;Ljava/io/File;)Z
    .registers 2

    .line 134
    filled-new-array {p0}, [Ljava/io/File;

    move-result-object p0

    invoke-static {p1, p0}, Lme/yxp/qfun/utils/data/FileUtils;->zipFolders(Ljava/io/File;[Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static varargs zipFolders(Ljava/io/File;[Ljava/io/File;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_6d

    .line 93
    array-length v1, p1

    if-nez v1, :cond_8

    goto/16 :goto_6d

    .line 99
    :cond_8
    array-length v1, p1

    move v2, v0

    :goto_a
    if-ge v2, v1, :cond_6d

    aget-object v3, p1, v2

    .line 100
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 110
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_25

    return v0

    .line 115
    :cond_25
    :try_start_25
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_69

    .line 116
    :try_start_2a
    new-instance p0, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_55

    move v2, v0

    .line 118
    :goto_35
    :try_start_35
    array-length v3, p1

    if-ge v2, v3, :cond_4d

    .line 119
    aget-object v3, p1, v2

    .line 120
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 122
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-static {v3, v4, p0}, Lme/yxp/qfun/utils/data/FileUtils;->addFolderToZip(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    :try_end_47
    .catchall {:try_start_35 .. :try_end_47} :catchall_48

    goto :goto_4a

    :catchall_48
    move-exception p1

    goto :goto_57

    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 128
    :cond_4d
    :try_start_4d
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_55

    const/4 p0, 0x1

    :try_start_51
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_69

    return p0

    :catchall_55
    move-exception p0

    goto :goto_60

    .line 115
    :goto_57
    :try_start_57
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception p0

    :try_start_5c
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5f
    throw p1
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_55

    :goto_60
    :try_start_60
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_68

    :catchall_64
    move-exception p1

    :try_start_65
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_68
    throw p0
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_69} :catch_69

    :catch_69
    return v0

    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_6d
    :goto_6d
    return v0
.end method
