.class Lnet/aihelp/core/util/viewer/PhotoView$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


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

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$1;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$1;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$000(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result v3

    mul-float/2addr v3, v0

    invoke-static {v1, v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$002(Lnet/aihelp/core/util/viewer/PhotoView;F)F

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$1;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$000(Lnet/aihelp/core/util/viewer/PhotoView;)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    const/4 v3, 0x1

    if-lez v1, :cond_1

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$1;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1, v3}, Lnet/aihelp/core/util/viewer/PhotoView;->access$102(Lnet/aihelp/core/util/viewer/PhotoView;Z)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$1;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1, v2}, Lnet/aihelp/core/util/viewer/PhotoView;->access$102(Lnet/aihelp/core/util/viewer/PhotoView;Z)Z

    :goto_0
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$1;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$200(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v1, v0, v0, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$1;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$300(Lnet/aihelp/core/util/viewer/PhotoView;)V

    return v3

    :cond_2
    :goto_1
    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method
