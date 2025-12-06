.class public Lme/yxp/qfun/utils/json/JsonConfigUtils;
.super Ljava/lang/Object;
.source "JsonConfigUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    .line 42
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->loadConfig(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 43
    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static getConfigFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 87
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_e

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_e
    new-instance p0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 37
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->loadConfig(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 38
    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 5

    .line 47
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->loadConfig(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 48
    invoke-virtual {p0, p2, p3, p4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 32
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->loadConfig(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 33
    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static loadConfig(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    .line 58
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->getConfigFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    .line 60
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    .line 63
    :cond_10
    :try_start_10
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_40
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_15} :catch_40

    .line 64
    :try_start_15
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_42

    .line 65
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    :goto_1f
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :catchall_29
    move-exception v1

    goto :goto_44

    .line 70
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_39
    .catchall {:try_start_1a .. :try_end_39} :catchall_29

    .line 72
    :try_start_39
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_42

    :try_start_3c
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_3f} :catch_40

    return-object v2

    :catch_40
    move-exception p0

    goto :goto_56

    :catchall_42
    move-exception p0

    goto :goto_4d

    .line 63
    :goto_44
    :try_start_44
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception p0

    :try_start_49
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4c
    throw v1
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_42

    :goto_4d
    :try_start_4d
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v0

    :try_start_52
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_55
    throw p0
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_40
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_56} :catch_40

    .line 73
    :goto_56
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static putBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 24
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->putValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static putInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 20
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->putValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static putLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 28
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->putValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 16
    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->putValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static putValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 52
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->loadConfig(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    invoke-static {p0, p1, v0}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->saveConfig(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static saveConfig(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 78
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->getConfigFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 79
    :try_start_4
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_15

    const/4 p0, 0x4

    .line 80
    :try_start_a
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_17

    .line 81
    :try_start_11
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    goto :goto_21

    :catchall_17
    move-exception p0

    .line 79
    :try_start_18
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception p2

    :try_start_1d
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    throw p0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_15

    .line 82
    :goto_21
    new-instance p2, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to save config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
