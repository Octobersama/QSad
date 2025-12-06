.class public interface abstract annotation Lme/yxp/qfun/hook/base/HookItemAnnotation;
.super Ljava/lang/Object;
.source "HookItemAnnotation.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lme/yxp/qfun/hook/base/HookItemAnnotation;
        TargetProcess = ""
        desc = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract TAG()Ljava/lang/String;
.end method

.method public abstract TargetProcess()Ljava/lang/String;
.end method

.method public abstract desc()Ljava/lang/String;
.end method
