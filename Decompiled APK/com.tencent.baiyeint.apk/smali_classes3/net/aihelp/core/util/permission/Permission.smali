.class public interface abstract annotation Lnet/aihelp/core/util/permission/Permission;
.super Ljava/lang/Object;
.source "Permission.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lnet/aihelp/core/util/permission/Permission;
        requestCode = 0x0
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/util/permission/Permission$Result;,
        Lnet/aihelp/core/util/permission/Permission$State;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract requestCode()I
.end method
