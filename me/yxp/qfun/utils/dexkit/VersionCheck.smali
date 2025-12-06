.class public Lme/yxp/qfun/utils/dexkit/VersionCheck;
.super Ljava/lang/Object;
.source "VersionCheck.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVersion()Z
    .registers 6

    .line 12
    const-string v0, "dexkit"

    const-string v1, "lastVersionMap"

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/data/DataUtils;->deserialize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_38

    .line 14
    check-cast v0, Ljava/util/Map;

    .line 15
    invoke-static {}, Lme/yxp/qfun/utils/dexkit/VersionCheck;->getModuleVersionCode()J

    move-result-wide v2

    const-string v4, "module"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_38

    .line 16
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getVersionCode()J

    move-result-wide v2

    const-string v4, "host"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_36

    goto :goto_38

    :cond_36
    const/4 v0, 0x0

    return v0

    :cond_38
    :goto_38
    return v1
.end method

.method public static getLatestVersionMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    invoke-static {}, Lme/yxp/qfun/utils/dexkit/VersionCheck;->getModuleVersionCode()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "module"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {}, Lme/yxp/qfun/utils/qq/HostInfo;->getVersionCode()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "host"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getModuleVersionCode()J
    .registers 2

    const/16 v0, 0xd

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    return-wide v0
.end method
