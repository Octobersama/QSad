.class public final Lme/yxp/qfun/hook/chat/DefaultBubbleAndFontHook;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "DefaultBubbleAndFontHook.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "默认气泡和字体"
    desc = "在聊天界面中将他人的气泡和字体全部显示为默认"
.end annotation


# instance fields
.field private mOnGetListener:Lme/yxp/qfun/hook/api/OnGetMsgRecord$GetMsgRecordListener;


# direct methods
.method public static synthetic $r8$lambda$y6xU_rNUh-gF-0j-RwJrpo20aZs(Ljava/lang/Object;)V
    .registers 3

    .line 18
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v1, "senderUin"

    .line 19
    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 23
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    const-string v0, "msgAttrs"

    .line 24
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->setValue(Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 2

    .line 17
    new-instance v0, Lme/yxp/qfun/hook/chat/DefaultBubbleAndFontHook$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lme/yxp/qfun/hook/chat/DefaultBubbleAndFontHook$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lme/yxp/qfun/hook/chat/DefaultBubbleAndFontHook;->mOnGetListener:Lme/yxp/qfun/hook/api/OnGetMsgRecord$GetMsgRecordListener;

    return-void
.end method

.method public startHook()V
    .registers 2

    .line 32
    sget-object v0, Lme/yxp/qfun/hook/api/OnGetMsgRecord;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object p0, p0, Lme/yxp/qfun/hook/chat/DefaultBubbleAndFontHook;->mOnGetListener:Lme/yxp/qfun/hook/api/OnGetMsgRecord$GetMsgRecordListener;

    invoke-virtual {v0, p0}, Lme/yxp/qfun/hook/base/ApiHookItem;->addListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    return-void
.end method

.method public stopHook()V
    .registers 2

    .line 37
    sget-object v0, Lme/yxp/qfun/hook/api/OnGetMsgRecord;->INSTANCE:Lme/yxp/qfun/hook/base/ApiHookItem;

    iget-object p0, p0, Lme/yxp/qfun/hook/chat/DefaultBubbleAndFontHook;->mOnGetListener:Lme/yxp/qfun/hook/api/OnGetMsgRecord$GetMsgRecordListener;

    invoke-virtual {v0, p0}, Lme/yxp/qfun/hook/base/ApiHookItem;->removeListener(Lme/yxp/qfun/hook/base/ApiHookItem$Listener;)V

    return-void
.end method
