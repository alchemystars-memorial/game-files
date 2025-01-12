.class Lnet/aihelp/ui/widget/AIHelpCircleImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "AIHelpCircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/widget/AIHelpCircleImageView$OvalShadow;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x50506

.field private static final FILL_SHADOW_COLOR:I = 0x3d000000

.field private static final KEY_SHADOW_COLOR:I = 0x1e000000

.field private static final SHADOW_ELEVATION:I = 0x4

.field private static final SHADOW_RADIUS:F = 3.5f

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 1.75f


# instance fields
.field private mBackgroundColor:I

.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mShadowRadius:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x3fe00000    # 1.75f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    const/4 v1, 0x0

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/high16 v2, 0x40600000    # 3.5f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, p0, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->mShadowRadius:I

    const-string v3, "aihelp_swipe_refresh_layout"

    invoke-static {v3}, Lnet/aihelp/utils/ResResolver;->getStyleable(Ljava/lang/String;)[I

    move-result-object v4

    const v5, -0x50506

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const-string v6, "aihelp_progress_spinner_background_color"

    invoke-static {v3, v6}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->mBackgroundColor:I

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    iput v5, p0, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->mBackgroundColor:I

    :goto_0
    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->elevationSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr p1, v1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Lnet/aihelp/ui/widget/AIHelpCircleImageView$OvalShadow;

    invoke-direct {v3, p0, v2}, Lnet/aihelp/ui/widget/AIHelpCircleImageView$OvalShadow;-><init>(Lnet/aihelp/ui/widget/AIHelpCircleImageView;I)V

    invoke-direct {p1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    int-to-float v4, v2

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v5, 0x1e000000

    invoke-virtual {v3, v4, v1, v0, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {p0, v2, v2, v2, v2}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setPadding(IIII)V

    move-object v0, p1

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->mBackgroundColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private elevationSupported()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->mBackgroundColor:I

    return v0
.end method

.method public onAnimationEnd()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAnimationEnd()V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAnimationStart()V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->elevationSupported()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->mShadowRadius:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->mShadowRadius:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->mBackgroundColor:I

    :cond_0
    return-void
.end method
