.class public final synthetic Lme/yxp/qfun/utils/qq/AudioConverterUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/yxp/qfun/utils/qq/AudioConverterUtil$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;

    iput-object p2, p0, Lme/yxp/qfun/utils/qq/AudioConverterUtil$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lme/yxp/qfun/utils/qq/AudioConverterUtil$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lme/yxp/qfun/utils/qq/AudioConverterUtil$$ExternalSyntheticLambda0;->f$0:Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;

    iget-object v1, p0, Lme/yxp/qfun/utils/qq/AudioConverterUtil$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lme/yxp/qfun/utils/qq/AudioConverterUtil$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lme/yxp/qfun/utils/qq/AudioConverterUtil;->$r8$lambda$XrzozcJkuaq6mcQYaytAnOqEKzI(Lme/yxp/qfun/utils/qq/AudioConverterUtil$ConversionCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
