.class public final Lme/yxp/qfun/hook/msg/RandomFaceHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "RandomFaceHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "自定义随机表情"
    desc = "使用猜拳/骰子可自定义结果"
.end annotation


# static fields
.field private static final BASE_JSON_TEMPLATE:Ljava/lang/String; = "  {\n\"1\": {\n\t\"type1\": {\n\t\t\"type2\": peerUid\n\t}\n},\n\"3\": {\n\t\"1\": {\n\t\t\"2\": {\n\t\t\t\"53\": {\n\t\t\t\t\"1\": 37,\n\t\t\t\t\"2\": {\n\t\t\t\t\t\"1\": \"1\",\n\t\t\t\t\t\"2\": \"v1\",\n\t\t\t\t\t\"3\": v2,\n\t\t\t\t\t\"4\": 1,\n\t\t\t\t\t\"5\": 2,\n\t\t\t\t\t\"6\": \"结果\",\n\t\t\t\t\t\"7\": \"faceText\",\n\t\t\t\t\t\"9\": 1\n\t\t\t\t},\n\t\t\t\t\"3\": 20\n\t\t\t}\n\t\t}\n\t}\n},\n\"4\": random1,\n\"5\": random2\n  }\n"

.field private static sAddAttributeMethod:Ljava/lang/reflect/Method;

.field private static sSendMsgMethod:Ljava/lang/reflect/Method;

.field private static sSendToServiceMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$6S9Wco_vZx1RwBiu0WwRLAQFqZU(Lme/yxp/qfun/hook/msg/RandomFaceHook;Ljava/lang/String;[Ljava/lang/String;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lme/yxp/qfun/hook/msg/RandomFaceHook;->lambda$initCallback$1(Ljava/lang/String;[Ljava/lang/String;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OCTmDS5kAfc1w-tC8B6vICb8Oa0(Lme/yxp/qfun/hook/msg/RandomFaceHook;[Ljava/lang/String;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lme/yxp/qfun/hook/msg/RandomFaceHook;->lambda$initCallback$0([Ljava/lang/String;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YZXNWOZjXpMIFk8VJT2OGqXwxsU(Lme/yxp/qfun/hook/msg/RandomFaceHook;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/msg/RandomFaceHook;->lambda$initCallback$2(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method

.method private synthetic lambda$initCallback$0([Ljava/lang/String;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 8

    const/4 v0, 0x2

    .line 150
    aget-object p1, p1, p5

    invoke-static {v0, p1}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    .line 151
    iget-object p1, p2, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    const-string v1, "peerUid"

    invoke-virtual {p1, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p1

    invoke-virtual {p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    iget-object p2, p2, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p2, p2, v0

    invoke-static {p2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p2

    const-string v1, "chatType"

    invoke-virtual {p2, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p2

    invoke-virtual {p2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p5, v0

    .line 154
    :try_start_36
    invoke-static {p3, p5, p1, p2}, Lme/yxp/qfun/hook/msg/RandomFaceHook;->makeBytes(Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/msg/RandomFaceHook;->sendBuffer([B)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception p1

    .line 156
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    .line 158
    :goto_42
    invoke-interface {p4}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$initCallback$1(Ljava/lang/String;[Ljava/lang/String;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Ljava/lang/String;)V
    .registers 8

    .line 147
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 148
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lme/yxp/qfun/hook/msg/RandomFaceHook$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p3, p4}, Lme/yxp/qfun/hook/msg/RandomFaceHook$$ExternalSyntheticLambda2;-><init>(Lme/yxp/qfun/hook/msg/RandomFaceHook;[Ljava/lang/String;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 149
    invoke-virtual {p1, p2, p0, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic lambda$initCallback$2(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 9

    .line 114
    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v2, v0, v1

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    .line 115
    aget-object v0, v0, v3

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v4, "chatType"

    invoke-virtual {v0, v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x64

    if-ne v0, v4, :cond_2f

    .line 116
    iget-object p0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2f
    const/4 v0, 0x0

    .line 119
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    const-string v4, "faceElement"

    invoke-virtual {v2, v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4f

    .line 121
    iget-object p0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 124
    :cond_4f
    invoke-static {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    const-string v4, "faceText"

    invoke-virtual {v2, v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v2

    invoke-virtual {v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6a

    .line 126
    iget-object p0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 129
    :cond_6a
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "/骰子"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x3

    if-nez v2, :cond_a0

    const-string v2, "/包剪锤"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8d

    .line 143
    iget-object p0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 139
    :cond_8d
    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "布"

    aput-object v4, v2, v0

    const-string v0, "剪刀"

    aput-object v0, v2, v3

    const-string v0, "石头"

    aput-object v0, v2, v1

    .line 141
    const-string v0, "自定义猜拳"

    :goto_9d
    move-object v3, v2

    move-object v2, v0

    goto :goto_c0

    :cond_a0
    const/4 v2, 0x6

    .line 135
    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "1点"

    aput-object v6, v2, v0

    const-string v0, "2点"

    aput-object v0, v2, v3

    const-string v0, "3点"

    aput-object v0, v2, v1

    const-string v0, "4点"

    aput-object v0, v2, v4

    const/4 v0, 0x4

    const-string v1, "5点"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "6点"

    aput-object v1, v2, v0

    .line 137
    const-string v0, "自定义骰子"

    goto :goto_9d

    .line 146
    :goto_c0
    new-instance v0, Lme/yxp/qfun/hook/msg/RandomFaceHook$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lme/yxp/qfun/hook/msg/RandomFaceHook$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/hook/msg/RandomFaceHook;Ljava/lang/String;[Ljava/lang/String;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Ljava/lang/String;)V

    const-wide/16 p0, 0x64

    invoke-static {v0, p0, p1}, Lme/yxp/qfun/utils/thread/SyncUtils;->postDelayed(Ljava/lang/Runnable;J)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static makeBytes(Ljava/lang/String;ILjava/lang/String;I)[B
    .registers 11

    const/4 v0, 0x1

    if-ne p3, v0, :cond_17

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 64
    :cond_17
    const-string v0, "/骰子"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "33"

    goto :goto_24

    :cond_22
    const-string v1, "34"

    .line 65
    :goto_24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "358"

    goto :goto_2f

    :cond_2d
    const-string v0, "359"

    .line 66
    :goto_2f
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 67
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    const-string v4, "type1"

    .line 71
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "  {\n\"1\": {\n\t\"type1\": {\n\t\t\"type2\": peerUid\n\t}\n},\n\"3\": {\n\t\"1\": {\n\t\t\"2\": {\n\t\t\t\"53\": {\n\t\t\t\t\"1\": 37,\n\t\t\t\t\"2\": {\n\t\t\t\t\t\"1\": \"1\",\n\t\t\t\t\t\"2\": \"v1\",\n\t\t\t\t\t\"3\": v2,\n\t\t\t\t\t\"4\": 1,\n\t\t\t\t\t\"5\": 2,\n\t\t\t\t\t\"6\": \"结果\",\n\t\t\t\t\t\"7\": \"faceText\",\n\t\t\t\t\t\"9\": 1\n\t\t\t\t},\n\t\t\t\t\"3\": 20\n\t\t\t}\n\t\t}\n\t}\n},\n\"4\": random1,\n\"5\": random2\n  }\n"

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    rsub-int/lit8 p3, p3, 0x3

    .line 72
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v5, "type2"

    invoke-virtual {v4, v5, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    const-string v4, "peerUid"

    .line 73
    invoke-virtual {p3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "v1"

    .line 74
    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "v2"

    .line 75
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "结果"

    .line 76
    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "faceText"

    .line 77
    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "random1"

    .line 78
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "random2"

    .line 79
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 82
    :try_start_97
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    new-instance p0, Lme/yxp/qfun/utils/json/ProtoData;

    invoke-direct {p0}, Lme/yxp/qfun/utils/json/ProtoData;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Lme/yxp/qfun/utils/json/ProtoData;->fromJSON(Lorg/json/JSONObject;)V

    .line 85
    invoke-virtual {p0}, Lme/yxp/qfun/utils/json/ProtoData;->toBytes()[B

    move-result-object p0
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a8} :catch_a9

    return-object p0

    :catch_a9
    const/4 p0, 0x0

    .line 87
    new-array p0, p0, [B

    return-object p0
.end method

.method private sendBuffer([B)V
    .registers 6

    .line 168
    :try_start_0
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_ToServiceMsg()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mobileqq.service"

    .line 169
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MessageSvc.PbSendMsg"

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 168
    invoke-static {v0, v1}, Lme/yxp/qfun/utils/reflect/ClassUtils;->makeDefaultObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    const-string v2, "wupBuffer"

    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    .line 171
    sget-object p1, Lme/yxp/qfun/hook/msg/RandomFaceHook;->sAddAttributeMethod:Ljava/lang/reflect/Method;

    const-string v1, "req_pb_protocol_flag"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object p1, Lme/yxp/qfun/hook/msg/RandomFaceHook;->sSendToServiceMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getQQAppInterface()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p1

    .line 174
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/error/ErrorOutput;->itemHookError(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 3

    .line 113
    sget-object v0, Lme/yxp/qfun/hook/msg/RandomFaceHook;->sSendMsgMethod:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/msg/RandomFaceHook$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/msg/RandomFaceHook$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/hook/msg/RandomFaceHook;)V

    invoke-static {p0, v0, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->replaceIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V

    return-void
.end method

.method public initMethod()Z
    .registers 4

    .line 93
    const-string p0, "com.tencent.common.app.AppInterface"

    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 94
    const-string v0, "com.tencent.qqnt.kernel.api.impl.MsgService"

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/ClassUtils;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 96
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_ToServiceMsg()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    const-string v2, "addAttribute"

    .line 97
    invoke-virtual {v1, v2}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lme/yxp/qfun/hook/msg/RandomFaceHook;->sAddAttributeMethod:Ljava/lang/reflect/Method;

    .line 100
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const-string v1, "sendToService"

    .line 101
    invoke-virtual {p0, v1}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/msg/RandomFaceHook;->sSendToServiceMethod:Ljava/lang/reflect/Method;

    .line 104
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const-string v0, "sendMsg"

    .line 105
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/msg/RandomFaceHook;->sSendMsgMethod:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method
