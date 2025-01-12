.class public Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;
.super Ljava/lang/Object;
.source "BallSpinFadeLoaderIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$Point;
    }
.end annotation


# static fields
.field public static final ALPHA:I = 0xff

.field public static final SCALE:F = 1.0f


# instance fields
.field alphas:[I

.field private mTarget:Landroid/view/View;

.field scaleFloats:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->scaleFloats:[F

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->alphas:[I

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
    .end array-data
.end method


# virtual methods
.method circleAt(IIFD)Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$Point;
    .locals 6

    div-int/lit8 p1, p1, 0x2

    int-to-double v0, p1

    float-to-double v2, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    double-to-float p1, v0

    div-int/lit8 p2, p2, 0x2

    int-to-double p2, p2

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    mul-double/2addr v2, p4

    add-double/2addr p2, v2

    double-to-float p2, p2

    new-instance p3, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$Point;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$Point;-><init>(FFLnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$1;)V

    return-object p3
.end method

.method public createAnimation()V
    .locals 9

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    aget v7, v0, v1

    int-to-long v7, v7

    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v7, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$1;

    invoke-direct {v7, p0, v1}, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$1;-><init>(Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;I)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    aget v3, v0, v1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v3, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$2;

    invoke-direct {v3, p0, v1}, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$2;-><init>(Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x78
        0xf0
        0x168
        0x1e0
        0x258
        0x2d0
        0x30c
        0x348
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0xff
        0x4d
        0xff
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v6, v2, v0

    int-to-double v2, v1

    const-wide v7, 0x3fe921fb54442d18L    # 0.7853981633974483

    mul-double/2addr v7, v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->circleAt(IIFD)Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$Point;

    move-result-object v2

    invoke-static {v2}, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$Point;->access$000(Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$Point;)F

    move-result v3

    invoke-static {v2}, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$Point;->access$100(Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$Point;)F

    move-result v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->scaleFloats:[F

    aget v2, v2, v1

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v2, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->alphas:[I

    aget v2, v2, v1

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public postInvalidate()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->mTarget:Landroid/view/View;

    return-void
.end method
