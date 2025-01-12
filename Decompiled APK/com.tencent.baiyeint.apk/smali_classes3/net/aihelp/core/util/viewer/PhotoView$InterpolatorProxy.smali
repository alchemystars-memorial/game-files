.class Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/viewer/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterpolatorProxy"
.end annotation


# instance fields
.field private mTarget:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lnet/aihelp/core/util/viewer/PhotoView;


# direct methods
.method private constructor <init>(Lnet/aihelp/core/util/viewer/PhotoView;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;->mTarget:Landroid/view/animation/Interpolator;

    return-void
.end method

.method synthetic constructor <init>(Lnet/aihelp/core/util/viewer/PhotoView;Lnet/aihelp/core/util/viewer/PhotoView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;-><init>(Lnet/aihelp/core/util/viewer/PhotoView;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;->mTarget:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_0
    return p1
.end method

.method public setTargetInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;->mTarget:Landroid/view/animation/Interpolator;

    return-void
.end method
