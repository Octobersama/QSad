.class public Lme/yxp/qfun/utils/dexkit/BridgeControler;
.super Ljava/lang/Object;
.source "BridgeControler.java"


# static fields
.field private static sBridge:Lorg/luckypray/dexkit/DexKitBridge;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeBridge()V
    .registers 1

    .line 18
    sget-object v0, Lme/yxp/qfun/utils/dexkit/BridgeControler;->sBridge:Lorg/luckypray/dexkit/DexKitBridge;

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {v0}, Lorg/luckypray/dexkit/DexKitBridge;->close()V

    :cond_7
    return-void
.end method

.method public static getBridge()Lorg/luckypray/dexkit/DexKitBridge;
    .registers 1

    .line 14
    sget-object v0, Lme/yxp/qfun/utils/dexkit/BridgeControler;->sBridge:Lorg/luckypray/dexkit/DexKitBridge;

    return-object v0
.end method

.method public static initBridge(Ljava/lang/String;)V
    .registers 2

    .line 9
    const-string v0, "dexkit"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lorg/luckypray/dexkit/DexKitBridge;->create(Ljava/lang/String;)Lorg/luckypray/dexkit/DexKitBridge;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/utils/dexkit/BridgeControler;->sBridge:Lorg/luckypray/dexkit/DexKitBridge;

    return-void
.end method
