.class public Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;
.super Landroid/view/View;
.source "LoadingIndicatorView.java"


# static fields
.field public static final DEFAULT_SIZE:I = 0x2d


# instance fields
.field private mHasAnimation:Z

.field mIndicatorColor:I

.field mIndicatorController:Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;

.field mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->mIndicatorColor:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->mIndicatorColor:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->mIndicatorColor:I

    invoke-direct {p0, p2, p3}, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    iput p1, p0, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->mIndicatorColor:I

    invoke-direct {p0, p2, p3}, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private dp2px(I)I
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/2addr v0, p1

    return v0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 2

    const-string p2, "aihelp_loading_indicator_view"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getStyleable(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "aihelp_loading_color"

    invoke-static {p2, v0}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->mIndicatorColor:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->mIndicatorColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;

    invoke-direct {p1}, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->mIndicatorController:Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;

    invoke-virtual {p1, p0}, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->setTarget(Landroid/view/View;)V

    return-void
.end method

.method private measureDimension(II)I
    .locals 2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method applyAnimation()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->mIndicatorController:Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->createAnimation()V

    return-void
.end method

.method drawIndicator(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->mIndicatorController:Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;

    iget-object v1, p0, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->drawIndicator(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->mHasAnimation:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->mHasAnimation:Z

    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->applyAnimation()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->dp2px(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->measureDimension(II)I

    move-result p1

    invoke-direct {p0, v0}, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->dp2px(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->measureDimension(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    iput p1, p0, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->mIndicatorColor:I

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->invalidate()V

    return-void
.end method
