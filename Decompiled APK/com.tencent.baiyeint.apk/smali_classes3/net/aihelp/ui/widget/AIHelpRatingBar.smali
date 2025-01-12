.class public Lnet/aihelp/ui/widget/AIHelpRatingBar;
.super Landroid/view/View;
.source "AIHelpRatingBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/widget/AIHelpRatingBar$OnStatusChangedListener;
    }
.end annotation


# instance fields
.field private mCurrGrade:I

.field private mFocusedDrawable:Landroid/graphics/Bitmap;

.field private mGradeLevel:I

.field private mListener:Lnet/aihelp/ui/widget/AIHelpRatingBar$OnStatusChangedListener;

.field private mSpacing:I

.field private mStarHeight:I

.field private mStarWidth:I

.field private mUnfocusedDrawable:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/widget/AIHelpRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/widget/AIHelpRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "aihelp_rating_bar"

    invoke-static {p3}, Lnet/aihelp/utils/ResResolver;->getStyleable(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v0, "aihelp_rating_bar_focused"

    invoke-static {p3, v0}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const-string v2, "aihelp_rating_bar_unfocused"

    invoke-static {p3, v2}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const-string v3, "aihelp_rating_bar_horizontal_spacing"

    invoke-static {p3, v3}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lnet/aihelp/ui/widget/AIHelpRatingBar;->dp2px(I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mSpacing:I

    const-string v3, "aihelp_rating_bar_grade_level"

    invoke-static {p3, v3}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mGradeLevel:I

    const-string v1, "aihelp_rating_bar_default_grade"

    invoke-static {p3, v1}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mGradeLevel:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mCurrGrade:I

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    iget p3, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mGradeLevel:I

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p2, Lnet/aihelp/common/CustomConfig$CommonSetting;->highlightedColor:Ljava/lang/String;

    invoke-static {p2}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, v0, p2}, Lnet/aihelp/ui/widget/AIHelpRatingBar;->getDrawableBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mFocusedDrawable:Landroid/graphics/Bitmap;

    sget-object p2, Lnet/aihelp/common/CustomConfig$CommonSetting;->highlightedColor:Ljava/lang/String;

    const-wide v0, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-static {p2, v0, v1}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result p2

    invoke-static {p1, v2, p2}, Lnet/aihelp/ui/widget/AIHelpRatingBar;->getDrawableBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mUnfocusedDrawable:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mFocusedDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mStarWidth:I

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mFocusedDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mStarHeight:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please checkout your xml!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private dp2px(I)I
    .locals 2

    int-to-float p1, p1

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpRatingBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public static getDrawableBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getIntrinsicHeight()I

    move-result p2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setBounds(IIII)V

    invoke-virtual {p0, p2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method


# virtual methods
.method public getSelectGrade()I
    .locals 1

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mCurrGrade:I

    return v0
.end method

.method public isFullStar()Z
    .locals 2

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mCurrGrade:I

    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mGradeLevel:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mFocusedDrawable:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mUnfocusedDrawable:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mGradeLevel:I

    if-ge v0, v1, :cond_3

    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mStarWidth:I

    mul-int v2, v1, v0

    if-lez v0, :cond_1

    mul-int/2addr v1, v0

    iget v2, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mSpacing:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    :cond_1
    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mCurrGrade:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-le v1, v0, :cond_2

    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mFocusedDrawable:Landroid/graphics/Bitmap;

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mUnfocusedDrawable:Landroid/graphics/Bitmap;

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget p1, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mStarWidth:I

    iget p2, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mGradeLevel:I

    mul-int/2addr p1, p2

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mSpacing:I

    add-int/lit8 p2, p2, -0x1

    mul-int/2addr v0, p2

    add-int/2addr p1, v0

    iget p2, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mStarHeight:I

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/widget/AIHelpRatingBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    :cond_1
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mFocusedDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mSpacing:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    add-int/2addr p1, v1

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mGradeLevel:I

    if-le p1, v0, :cond_3

    move p1, v0

    :cond_3
    :goto_0
    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mCurrGrade:I

    if-ne v0, p1, :cond_4

    return v1

    :cond_4
    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mCurrGrade:I

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mListener:Lnet/aihelp/ui/widget/AIHelpRatingBar$OnStatusChangedListener;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lnet/aihelp/ui/widget/AIHelpRatingBar$OnStatusChangedListener;->onRateStatusChanged(I)V

    :cond_5
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpRatingBar;->invalidate()V

    :goto_1
    return v1
.end method

.method public setOnStatusChangedListener(Lnet/aihelp/ui/widget/AIHelpRatingBar$OnStatusChangedListener;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpRatingBar;->mListener:Lnet/aihelp/ui/widget/AIHelpRatingBar$OnStatusChangedListener;

    return-void
.end method
