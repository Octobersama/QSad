.class Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;
.super Ljava/lang/Object;
.source "MsgTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yxp/qfun/utils/qq/MsgTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateElement"
.end annotation


# static fields
.field private static sCreateArkElement:Ljava/lang/reflect/Method;

.field private static sCreateAtTextElement:Ljava/lang/reflect/Method;

.field private static sCreateFileElement:Ljava/lang/reflect/Method;

.field private static sCreateJson:Ljava/lang/reflect/Method;

.field private static sCreatePicElement:Ljava/lang/reflect/Method;

.field private static sCreatePttElement:Ljava/lang/reflect/Method;

.field private static sCreateReplyElement:Ljava/lang/reflect/Method;

.field private static sCreateTextElement:Ljava/lang/reflect/Method;

.field private static sCreateVideoElement:Ljava/lang/reflect/Method;

.field private static sGetSampleWaveData:Ljava/lang/reflect/Method;

.field private static sJsonClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sMsgUtilApiImpl:Ljava/lang/Object;

.field private static sQQRecorderUtilsImpl:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$smcreateArkElement(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->createArkElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smcreateAtTextElement(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->createAtTextElement(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smcreateFileElement(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->createFileElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smcreatePicElement(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->createPicElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smcreatePttElement(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->createPttElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smcreateReplyElement(J)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->createReplyElement(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smcreateTextElement(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->createTextElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smcreateVideoElement(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->createVideoElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sminitMethod()V
    .registers 0

    .line 0
    invoke-static {}, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->initMethod()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createArkElement(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 371
    sget-object v0, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sJsonClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 372
    sget-object v1, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreateJson:Ljava/lang/reflect/Method;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object p0, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreateArkElement:Ljava/lang/reflect/Method;

    sget-object v1, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sMsgUtilApiImpl:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static createAtTextElement(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 5

    .line 357
    sget-object v0, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreateAtTextElement:Ljava/lang/reflect/Method;

    sget-object v1, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sMsgUtilApiImpl:Ljava/lang/Object;

    const-string v2, "@全体成员"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static createFileElement(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 385
    sget-object v0, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreateFileElement:Ljava/lang/reflect/Method;

    sget-object v1, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sMsgUtilApiImpl:Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static createPicElement(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 361
    sget-object v0, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreatePicElement:Ljava/lang/reflect/Method;

    sget-object v1, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sMsgUtilApiImpl:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p0, v2, v3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static createPttElement(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 365
    sget-object v0, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sGetSampleWaveData:Ljava/lang/reflect/Method;

    sget-object v1, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sQQRecorderUtilsImpl:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 366
    sget-object v1, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreatePttElement:Ljava/lang/reflect/Method;

    sget-object v3, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sMsgUtilApiImpl:Ljava/lang/Object;

    filled-new-array {p0, v2, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static createReplyElement(J)Ljava/lang/Object;
    .registers 4

    .line 381
    sget-object v0, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreateReplyElement:Ljava/lang/reflect/Method;

    sget-object v1, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sMsgUtilApiImpl:Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static createTextElement(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 353
    sget-object v0, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreateTextElement:Ljava/lang/reflect/Method;

    sget-object v1, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sMsgUtilApiImpl:Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static createVideoElement(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 377
    sget-object v0, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreateVideoElement:Ljava/lang/reflect/Method;

    sget-object v1, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sMsgUtilApiImpl:Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static initMethod()V
    .registers 7

    .line 323
    const-string v0, "com.tencent.qqnt.msg.api.impl.MsgUtilApiImpl"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 324
    const-string v1, "com.tencent.mobileqq.ptt.impl.QQRecorderUtilsImpl"

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 325
    const-string v2, "CreateElement"

    invoke-static {v2}, Lme/yxp/qfun/utils/dexkit/DexKit;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sJsonClass:Ljava/lang/Class;

    const/4 v2, 0x0

    .line 327
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sMsgUtilApiImpl:Ljava/lang/Object;

    .line 328
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sQQRecorderUtilsImpl:Ljava/lang/Object;

    .line 330
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    const-string v3, "createTextElement"

    .line 331
    invoke-virtual {v2, v3}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreateTextElement:Ljava/lang/reflect/Method;

    .line 332
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    const-string v4, "createAtTextElement"

    .line 333
    invoke-virtual {v2, v4}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreateAtTextElement:Ljava/lang/reflect/Method;

    .line 334
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    const-string v4, "createPicElement"

    .line 335
    invoke-virtual {v2, v4}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4, v5}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v6}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreatePicElement:Ljava/lang/reflect/Method;

    .line 336
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    const-string v6, "createPttElement"

    .line 337
    invoke-virtual {v2, v6}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    const-class v6, Ljava/util/ArrayList;

    filled-new-array {v3, v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v5}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v2

    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreatePttElement:Ljava/lang/reflect/Method;

    .line 338
    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    const-string v2, "getSampleWaveData"

    .line 339
    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sGetSampleWaveData:Ljava/lang/reflect/Method;

    .line 340
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    const-string v2, "createArkElement"

    .line 341
    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreateArkElement:Ljava/lang/reflect/Method;

    .line 342
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    const-string v2, "createVideoElement"

    .line 343
    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreateVideoElement:Ljava/lang/reflect/Method;

    .line 344
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    const-string v2, "createReplyElement"

    .line 345
    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreateReplyElement:Ljava/lang/reflect/Method;

    .line 346
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    const-string v1, "createFileElement"

    .line 347
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreateFileElement:Ljava/lang/reflect/Method;

    .line 348
    sget-object v0, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sJsonClass:Ljava/lang/Class;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    .line 349
    invoke-virtual {v0, v4}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withReturnType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withParamTypes([Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lme/yxp/qfun/utils/qq/MsgTool$CreateElement;->sCreateJson:Ljava/lang/reflect/Method;

    return-void
.end method
