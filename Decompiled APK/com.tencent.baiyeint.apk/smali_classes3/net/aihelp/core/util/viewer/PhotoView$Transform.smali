.class Lnet/aihelp/core/util/viewer/PhotoView$Transform;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/viewer/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Transform"
.end annotation


# instance fields
.field C:Lnet/aihelp/core/util/viewer/PhotoView$ClipCalculate;

.field isRunning:Z

.field mClipRect:Landroid/graphics/RectF;

.field mClipScroller:Landroid/widget/Scroller;

.field mFlingScroller:Landroid/widget/OverScroller;

.field mInterpolatorProxy:Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;

.field mLastFlingX:I

.field mLastFlingY:I

.field mLastTranslateX:I

.field mLastTranslateY:I

.field mRotateScroller:Landroid/widget/Scroller;

.field mScaleScroller:Landroid/widget/Scroller;

.field mTranslateScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lnet/aihelp/core/util/viewer/PhotoView;


# direct methods
.method constructor <init>(Lnet/aihelp/core/util/viewer/PhotoView;)V
    .locals 2

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    new-instance v0, Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;-><init>(Lnet/aihelp/core/util/viewer/PhotoView;Lnet/aihelp/core/util/viewer/PhotoView$1;)V

    iput-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mInterpolatorProxy:Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;

    invoke-virtual {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mInterpolatorProxy:Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mInterpolatorProxy:Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mInterpolatorProxy:Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mInterpolatorProxy:Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mClipScroller:Landroid/widget/Scroller;

    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mInterpolatorProxy:Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private applyAnima()V
    .locals 5

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$200(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$200(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2800(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2800(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$200(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$200(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2900(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$3000(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$200(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1600(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result v1

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$200(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$000(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result v1

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$000(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result v2

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$200(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1800(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2200(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$300(Lnet/aihelp/core/util/viewer/PhotoView;)V

    return-void
.end method

.method private postExecute()V
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->isRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-virtual {v0, p0}, Lnet/aihelp/core/util/viewer/PhotoView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const v1, 0x461c4000    # 10000.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-static {v0, v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$002(Lnet/aihelp/core/util/viewer/PhotoView;F)F

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mLastTranslateX:I

    sub-int/2addr v0, v4

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    iget v5, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mLastTranslateY:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v5}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1800(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v6

    add-int/2addr v6, v0

    invoke-static {v5, v6}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1802(Lnet/aihelp/core/util/viewer/PhotoView;I)I

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2200(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v0, v5}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2202(Lnet/aihelp/core/util/viewer/PhotoView;I)I

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mLastTranslateX:I

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mLastTranslateY:I

    move v0, v3

    :cond_1
    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mLastFlingX:I

    sub-int/2addr v0, v4

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    iget v5, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mLastFlingY:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    iput v5, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mLastFlingX:I

    iget-object v5, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    iput v5, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mLastFlingY:I

    iget-object v5, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v5}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1800(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v6

    add-int/2addr v6, v0

    invoke-static {v5, v6}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1802(Lnet/aihelp/core/util/viewer/PhotoView;I)I

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2200(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v0, v5}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2202(Lnet/aihelp/core/util/viewer/PhotoView;I)I

    move v0, v3

    :cond_2
    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1602(Lnet/aihelp/core/util/viewer/PhotoView;F)F

    move v0, v3

    :cond_3
    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mClipScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$3500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_7

    :cond_4
    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mClipScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    iget-object v5, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mClipScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2700(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v6, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v6}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v7}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget-object v7, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->C:Lnet/aihelp/core/util/viewer/PhotoView$ClipCalculate;

    invoke-interface {v7}, Lnet/aihelp/core/util/viewer/PhotoView$ClipCalculate;->calculateTop()F

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2700(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v6, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v7}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v1

    if-nez v4, :cond_5

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v6}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iput v6, v4, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v6}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iput v6, v4, Landroid/graphics/RectF;->right:F

    :cond_5
    cmpl-float v1, v5, v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iput v4, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    :cond_6
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mClipRect:Landroid/graphics/RectF;

    invoke-static {v1, v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$3502(Lnet/aihelp/core/util/viewer/PhotoView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    :cond_7
    if-nez v0, :cond_8

    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->applyAnima()V

    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->postExecute()V

    goto/16 :goto_3

    :cond_8
    iput-boolean v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->isRunning:Z

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1200(Lnet/aihelp/core/util/viewer/PhotoView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1800(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1802(Lnet/aihelp/core/util/viewer/PhotoView;I)I

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1800(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v3

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v5}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1802(Lnet/aihelp/core/util/viewer/PhotoView;I)I

    :cond_a
    :goto_1
    move v3, v2

    :cond_b
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1300(Lnet/aihelp/core/util/viewer/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2200(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2202(Lnet/aihelp/core/util/viewer/PhotoView;I)I

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2200(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v1

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2202(Lnet/aihelp/core/util/viewer/PhotoView;I)I

    goto :goto_2

    :cond_d
    move v2, v3

    :cond_e
    :goto_2
    if-eqz v2, :cond_f

    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->applyAnima()V

    :cond_f
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-virtual {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->invalidate()V

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$3600(Lnet/aihelp/core/util/viewer/PhotoView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$3600(Lnet/aihelp/core/util/viewer/PhotoView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$3602(Lnet/aihelp/core/util/viewer/PhotoView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_10
    :goto_3
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mInterpolatorProxy:Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;->setTargetInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->isRunning:Z

    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->postExecute()V

    return-void
.end method

.method stop()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-virtual {v0, p0}, Lnet/aihelp/core/util/viewer/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->isRunning:Z

    return-void
.end method

.method withClip(FFFFILnet/aihelp/core/util/viewer/PhotoView$ClipCalculate;)V
    .locals 6

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mClipScroller:Landroid/widget/Scroller;

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    mul-float/2addr p2, v1

    float-to-int v2, p2

    mul-float/2addr p3, v1

    float-to-int v3, p3

    mul-float/2addr p4, v1

    float-to-int v4, p4

    move v1, p1

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iput-object p6, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->C:Lnet/aihelp/core/util/viewer/PhotoView$ClipCalculate;

    return-void
.end method

.method withFling(FF)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    const v5, 0x7fffffff

    const/4 v6, 0x0

    if-gez v4, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    iput v7, v0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mLastFlingX:I

    cmpl-float v7, v1, v3

    iget-object v8, v0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v8}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v8

    if-lez v7, :cond_1

    iget v8, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    goto :goto_1

    :cond_1
    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget-object v9, v0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v9}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v9

    :goto_1
    float-to-int v8, v8

    if-gez v4, :cond_2

    sub-int v8, v5, v8

    :cond_2
    if-gez v4, :cond_3

    move v9, v8

    goto :goto_2

    :cond_3
    move v9, v6

    :goto_2
    if-gez v4, :cond_4

    move v10, v5

    goto :goto_3

    :cond_4
    move v10, v8

    :goto_3
    if-gez v4, :cond_5

    sub-int v8, v5, v9

    :cond_5
    cmpg-float v4, v2, v3

    if-gez v4, :cond_6

    move v11, v5

    goto :goto_4

    :cond_6
    move v11, v6

    :goto_4
    iput v11, v0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mLastFlingY:I

    cmpl-float v3, v2, v3

    iget-object v11, v0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v11}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v11

    if-lez v3, :cond_7

    iget v11, v11, Landroid/graphics/RectF;->top:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    goto :goto_5

    :cond_7
    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    iget-object v12, v0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v12}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v11, v12

    :goto_5
    float-to-int v11, v11

    if-gez v4, :cond_8

    sub-int v11, v5, v11

    :cond_8
    if-gez v4, :cond_9

    move v12, v11

    goto :goto_6

    :cond_9
    move v12, v6

    :goto_6
    if-gez v4, :cond_a

    move v13, v5

    goto :goto_7

    :cond_a
    move v13, v11

    :goto_7
    if-gez v4, :cond_b

    sub-int v11, v5, v12

    :cond_b
    if-nez v7, :cond_c

    move/from16 v19, v6

    move/from16 v20, v19

    goto :goto_8

    :cond_c
    move/from16 v19, v9

    move/from16 v20, v10

    :goto_8
    if-nez v3, :cond_d

    move/from16 v21, v6

    move/from16 v22, v21

    goto :goto_9

    :cond_d
    move/from16 v21, v12

    move/from16 v22, v13

    :goto_9
    iget-object v14, v0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    iget v15, v0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mLastFlingX:I

    iget v3, v0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mLastFlingY:I

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v5, v0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v5}, Lnet/aihelp/core/util/viewer/PhotoView;->access$3400(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_e

    move/from16 v23, v6

    goto :goto_a

    :cond_e
    iget-object v4, v0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$3400(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v4

    move/from16 v23, v4

    :goto_a
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v5, v0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v5}, Lnet/aihelp/core/util/viewer/PhotoView;->access$3400(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_f

    goto :goto_b

    :cond_f
    iget-object v4, v0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$3400(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v6

    :goto_b
    move/from16 v24, v6

    move/from16 v16, v3

    move/from16 v17, v1

    move/from16 v18, v2

    invoke-virtual/range {v14 .. v24}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method withRotate(II)V
    .locals 6

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    sub-int v3, p2, p1

    iget-object p2, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$3300(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method withRotate(III)V
    .locals 6

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mRotateScroller:Landroid/widget/Scroller;

    sub-int v3, p2, p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method withScale(FF)V
    .locals 6

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mScaleScroller:Landroid/widget/Scroller;

    const v1, 0x461c4000    # 10000.0f

    mul-float v2, p1, v1

    float-to-int v2, v2

    sub-float/2addr p2, p1

    mul-float/2addr p2, v1

    float-to-int v3, p2

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$3300(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v5

    const/4 p1, 0x0

    const/4 v4, 0x0

    move v1, v2

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method withTranslate(IIII)V
    .locals 6

    const/4 p1, 0x0

    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mLastTranslateX:I

    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mLastTranslateY:I

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mTranslateScroller:Landroid/widget/OverScroller;

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$3300(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method
