.class Lnet/aihelp/core/util/viewer/PhotoView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/viewer/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/util/viewer/PhotoView;


# direct methods
.method constructor <init>(Lnet/aihelp/core/util/viewer/PhotoView;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$600(Lnet/aihelp/core/util/viewer/PhotoView;)Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->stop()V

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1802(Lnet/aihelp/core/util/viewer/PhotoView;I)I

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0, v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2202(Lnet/aihelp/core/util/viewer/PhotoView;I)I

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$100(Lnet/aihelp/core/util/viewer/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$000(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$000(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result v0

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2600(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result v2

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v3, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    move p1, v0

    move v0, v2

    :goto_0
    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2700(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2700(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2800(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2800(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2700(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2700(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2900(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result v3

    neg-float v3, v3

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$3000(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2700(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1600(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result v3

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v5}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2700(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2700(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1800(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2200(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2700(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$3100(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2800(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$3100(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1700(Lnet/aihelp/core/util/viewer/PhotoView;Landroid/graphics/RectF;)V

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$100(Lnet/aihelp/core/util/viewer/PhotoView;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$102(Lnet/aihelp/core/util/viewer/PhotoView;Z)Z

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$600(Lnet/aihelp/core/util/viewer/PhotoView;)Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->withScale(FF)V

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$600(Lnet/aihelp/core/util/viewer/PhotoView;)Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->start()V

    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$600(Lnet/aihelp/core/util/viewer/PhotoView;)Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    move-result-object p1

    iget-object p1, p1, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$702(Lnet/aihelp/core/util/viewer/PhotoView;Z)Z

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$600(Lnet/aihelp/core/util/viewer/PhotoView;)Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    move-result-object p1

    iget-object p1, p1, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_0
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$802(Lnet/aihelp/core/util/viewer/PhotoView;Z)Z

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1, v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$902(Lnet/aihelp/core/util/viewer/PhotoView;Z)Z

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1, v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1002(Lnet/aihelp/core/util/viewer/PhotoView;Z)Z

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1100(Lnet/aihelp/core/util/viewer/PhotoView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/aihelp/core/util/viewer/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$900(Lnet/aihelp/core/util/viewer/PhotoView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1200(Lnet/aihelp/core/util/viewer/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1300(Lnet/aihelp/core/util/viewer/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$600(Lnet/aihelp/core/util/viewer/PhotoView;)Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    move-result-object v0

    iget-boolean v0, v0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->isRunning:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_4

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, p3

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-gez v2, :cond_6

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    goto :goto_2

    :cond_5
    move v2, p4

    goto :goto_3

    :cond_6
    :goto_2
    move v2, v1

    :goto_3
    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1000(Lnet/aihelp/core/util/viewer/PhotoView;)Z

    move-result v3

    const/high16 v4, 0x42b40000    # 90.0f

    if-nez v3, :cond_7

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1600(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result v3

    rem-float/2addr v3, v4

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_a

    :cond_7
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1600(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result v1

    div-float/2addr v1, v4

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1600(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result v3

    rem-float/2addr v3, v4

    const/high16 v5, 0x42340000    # 45.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_8

    add-float/2addr v1, v4

    goto :goto_4

    :cond_8
    const/high16 v5, -0x3dcc0000    # -45.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_9

    sub-float/2addr v1, v4

    :cond_9
    :goto_4
    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$600(Lnet/aihelp/core/util/viewer/PhotoView;)Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    move-result-object v3

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1600(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result v4

    float-to-int v4, v4

    float-to-int v5, v1

    invoke-virtual {v3, v4, v5}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->withRotate(II)V

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v3, v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1602(Lnet/aihelp/core/util/viewer/PhotoView;F)F

    :cond_a
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1700(Lnet/aihelp/core/util/viewer/PhotoView;Landroid/graphics/RectF;)V

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$600(Lnet/aihelp/core/util/viewer/PhotoView;)Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->withFling(FF)V

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$600(Lnet/aihelp/core/util/viewer/PhotoView;)Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->start()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$600(Lnet/aihelp/core/util/viewer/PhotoView;)Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    move-result-object p1

    iget-boolean p1, p1, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->isRunning:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$600(Lnet/aihelp/core/util/viewer/PhotoView;)Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->stop()V

    :cond_0
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-virtual {p1, p3}, Lnet/aihelp/core/util/viewer/PhotoView;->canScrollHorizontallySelf(F)Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    cmpg-float p1, p3, v0

    if-gez p1, :cond_1

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p3

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p3, p1, Landroid/graphics/RectF;->left:F

    :cond_1
    cmpl-float p1, p3, v0

    if-lez p1, :cond_2

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p3

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object p3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->right:F

    sub-float p3, p1, p3

    :cond_2
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$200(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object p1

    neg-float v1, p3

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1800(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p3

    float-to-int p3, v1

    invoke-static {p1, p3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1802(Lnet/aihelp/core/util/viewer/PhotoView;I)I

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1200(Lnet/aihelp/core/util/viewer/PhotoView;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$900(Lnet/aihelp/core/util/viewer/PhotoView;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$800(Lnet/aihelp/core/util/viewer/PhotoView;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_4
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1900(Lnet/aihelp/core/util/viewer/PhotoView;)V

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$900(Lnet/aihelp/core/util/viewer/PhotoView;)Z

    move-result p1

    if-nez p1, :cond_6

    cmpg-float p1, p3, v0

    if-gez p1, :cond_5

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p3

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2000(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2000(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {p1, v1, p3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2100(Lnet/aihelp/core/util/viewer/PhotoView;FF)F

    move-result p3

    :cond_5
    cmpl-float p1, p3, v0

    if-lez p1, :cond_6

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p3

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2000(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_6

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2000(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {p1, v1, p3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2100(Lnet/aihelp/core/util/viewer/PhotoView;FF)F

    move-result p3

    :cond_6
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1800(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p3

    float-to-int v1, v1

    invoke-static {p1, v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1802(Lnet/aihelp/core/util/viewer/PhotoView;I)I

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$200(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object p1

    neg-float p3, p3

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1, p2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$802(Lnet/aihelp/core/util/viewer/PhotoView;Z)Z

    :cond_7
    :goto_0
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-virtual {p1, p4}, Lnet/aihelp/core/util/viewer/PhotoView;->canScrollVerticallySelf(F)Z

    move-result p1

    if-eqz p1, :cond_a

    cmpg-float p1, p4, v0

    if-gez p1, :cond_8

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p4

    iget-object p3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, p3

    if-lez p1, :cond_8

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p4, p1, Landroid/graphics/RectF;->top:F

    :cond_8
    cmpl-float p1, p4, v0

    if-lez p1, :cond_9

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p4

    iget-object p3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, p3

    if-gez p1, :cond_9

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    sub-float p4, p1, p3

    :cond_9
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$200(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object p1

    neg-float p3, p4

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2200(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, p4

    float-to-int p3, p3

    invoke-static {p1, p3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2202(Lnet/aihelp/core/util/viewer/PhotoView;I)I

    goto/16 :goto_1

    :cond_a
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1300(Lnet/aihelp/core/util/viewer/PhotoView;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$800(Lnet/aihelp/core/util/viewer/PhotoView;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$900(Lnet/aihelp/core/util/viewer/PhotoView;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_b
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1900(Lnet/aihelp/core/util/viewer/PhotoView;)V

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$900(Lnet/aihelp/core/util/viewer/PhotoView;)Z

    move-result p1

    if-nez p1, :cond_d

    cmpg-float p1, p4, v0

    if-gez p1, :cond_c

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p4

    iget-object p3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2000(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, p3

    if-lez p1, :cond_c

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2000(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, v1

    invoke-static {p1, p3, p4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2300(Lnet/aihelp/core/util/viewer/PhotoView;FF)F

    move-result p4

    :cond_c
    cmpl-float p1, p4, v0

    if-lez p1, :cond_d

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p4

    iget-object p3, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2000(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, p3

    if-gez p1, :cond_d

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2000(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p3, v1

    invoke-static {p1, p3, p4}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2300(Lnet/aihelp/core/util/viewer/PhotoView;FF)F

    move-result p4

    :cond_d
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$200(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object p1

    neg-float p3, p4

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2200(Lnet/aihelp/core/util/viewer/PhotoView;)I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, p4

    float-to-int p3, p3

    invoke-static {p1, p3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$2202(Lnet/aihelp/core/util/viewer/PhotoView;I)I

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1, p2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$802(Lnet/aihelp/core/util/viewer/PhotoView;Z)Z

    :cond_e
    :goto_1
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$300(Lnet/aihelp/core/util/viewer/PhotoView;)V

    return p2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$700(Lnet/aihelp/core/util/viewer/PhotoView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1100(Lnet/aihelp/core/util/viewer/PhotoView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Lnet/aihelp/core/util/viewer/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$3;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$702(Lnet/aihelp/core/util/viewer/PhotoView;Z)Z

    return v0
.end method
