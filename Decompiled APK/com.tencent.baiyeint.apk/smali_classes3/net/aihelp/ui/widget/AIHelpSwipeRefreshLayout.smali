.class public Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "AIHelpSwipeRefreshLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/core/view/NestedScrollingParent2;
.implements Landroidx/core/view/NestedScrollingChild3;
.implements Landroidx/core/view/NestedScrollingChild2;
.implements Landroidx/core/view/NestedScrollingParent;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$OnChildScrollUpCallback;,
        Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$OnRefreshListener;,
        Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field static final CIRCLE_DIAMETER:I = 0x28

.field static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field public static final DEFAULT_SLINGSHOT_DISTANCE:I = -0x1

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String; = "AIHelpSwipeRefreshLayout"

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mChildScrollUpCallback:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$OnChildScrollUpCallback;

.field private mCircleDiameter:I

.field mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

.field private mCircleViewIndex:I

.field mCurrentTargetOffsetTop:I

.field mCustomSlingshotDistance:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mEnableLegacyRequestDisallowInterceptTouch:Z

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field mListener:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private final mNestedScrollingV2ConsumedCompat:[I

.field mNotify:Z

.field protected mOriginalOffsetTop:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field mRefreshing:Z

.field private mReturningToStart:Z

.field mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field mSpinnerOffsetEnd:I

.field mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    sput-object v0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mRefreshing:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalDragDistance:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mParentScrollConsumed:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mParentOffsetInWindow:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingV2ConsumedCompat:[I

    const/4 v1, -0x1

    iput v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mActivePointerId:I

    iput v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleViewIndex:I

    new-instance v1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$1;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$1;-><init>(Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;)V

    iput-object v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$6;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$6;-><init>(Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;)V

    iput-object v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    new-instance v1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$7;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$7;-><init>(Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;)V

    iput-object v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTouchSlop:I

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mMediumAnimationDuration:I

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setWillNotDraw(Z)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleDiameter:I

    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->createProgressView()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setChildrenDrawingOrderEnabled(Z)V

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42800000    # 64.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    int-to-float v1, v1

    iput v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalDragDistance:F

    new-instance v1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    new-instance v1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, v2}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleDiameter:I

    neg-int v1, v1

    iput v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iput v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mOriginalOffsetTop:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->moveToStart(F)V

    sget-object v1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mFrom:I

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->clearAnimation()V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iget-boolean v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mFrom:I

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->clearAnimation()V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method private createProgressView()V
    .locals 2

    new-instance v0, Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    new-instance v0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setStyle(I)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setVisibility(I)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private ensureTarget()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTarget:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private finishSpinner(F)V
    .locals 2

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mRefreshing:Z

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setStartEndTrim(FF)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mScale:Z

    if-nez v1, :cond_1

    new-instance v0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$5;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$5;-><init>(Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;)V

    :cond_1
    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    invoke-direct {p0, v1, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setArrowEnabled(Z)V

    :goto_0
    return-void
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private moveSpinner(F)V
    .locals 11

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setArrowEnabled(Z)V

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalDragDistance:F

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalDragDistance:F

    sub-float/2addr v3, v4

    iget v4, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCustomSlingshotDistance:I

    if-lez v4, :cond_0

    :goto_0
    int-to-float v4, v4

    goto :goto_1

    :cond_0
    iget-boolean v4, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget v5, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mOriginalOffsetTop:I

    sub-int/2addr v4, v5

    goto :goto_0

    :cond_1
    iget v4, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    goto :goto_0

    :goto_1
    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v4, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v4

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v3, v7

    float-to-double v7, v3

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    sub-double/2addr v7, v9

    double-to-float v3, v7

    mul-float/2addr v3, v5

    mul-float v7, v4, v3

    mul-float/2addr v7, v5

    iget v8, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mOriginalOffsetTop:I

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v0, v4

    add-int/2addr v8, v0

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setVisibility(I)V

    :cond_2
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mScale:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setScaleX(F)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setScaleY(F)V

    :cond_3
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalDragDistance:F

    div-float v0, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setAnimationProgress(F)V

    :cond_4
    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalDragDistance:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->getAlpha()I

    move-result p1

    const/16 v0, 0x4c

    if-le p1, v0, :cond_6

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->getAlpha()I

    move-result p1

    const/16 v0, 0xff

    if-ge p1, v0, :cond_6

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    :cond_6
    :goto_2
    const p1, 0x3f4ccccd    # 0.8f

    mul-float v0, v2, p1

    iget-object v4, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v4, v6, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setStartEndTrim(FF)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setArrowScale(F)V

    const/high16 p1, -0x41800000    # -0.25f

    const v0, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v0

    add-float/2addr v2, p1

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr v2, p1

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    invoke-virtual {p1, v2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setProgressRotation(F)V

    iget p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v8, p1

    invoke-virtual {p0, v8}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mActivePointerId:I

    :cond_1
    return-void
.end method

.method private setColorViewAlpha(I)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setAlpha(I)V

    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_1

    iput-boolean p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNotify:Z

    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->ensureTarget()V

    iput-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mRefreshing:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 1

    new-instance v0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$4;

    invoke-direct {v0, p0, p1, p2}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$4;-><init>(Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;II)V

    const-wide/16 p1, 0x12c

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->clearAnimation()V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method private startDragging(F)V
    .locals 3

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mInitialDownY:F

    sub-float/2addr p1, v0

    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTouchSlop:I

    int-to-float v2, v1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez p1, :cond_0

    int-to-float p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mInitialMotionY:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mIsBeingDragged:Z

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mFrom:I

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getScaleX()F

    move-result p1

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mStartingScale:F

    new-instance p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$8;

    invoke-direct {p1, p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$8;-><init>(Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;)V

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->clearAnimation()V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setVisibility(I)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setAlpha(I)V

    new-instance v0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$2;-><init>(Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;)V

    iput-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->clearAnimation()V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 3

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mChildScrollUpCallback:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$OnChildScrollUpCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$OnChildScrollUpCallback;->canChildScrollUp(Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ListView;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/ListView;

    invoke-static {v0, v2}, Landroidx/core/widget/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 0

    if-nez p5, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 8

    if-nez p6, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    :cond_0
    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7

    if-nez p6, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleViewIndex:I

    if-gez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    return p2
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleDiameter:I

    return v0
.end method

.method public getProgressViewEndOffset()I
    .locals 1

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    return v0
.end method

.method public getProgressViewStartOffset()I
    .locals 1

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mOriginalOffsetTop:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->hasNestedScrollingParent()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method moveToStart(F)V
    .locals 2

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mFrom:I

    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mOriginalOffsetTop:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->reset()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->ensureTarget()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mReturningToStart:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mReturningToStart:Z

    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mRefreshing:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_7

    const/4 v1, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mActivePointerId:I

    if-ne v0, v3, :cond_4

    sget-object p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    return v2

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->startDragging(F)V

    goto :goto_0

    :cond_6
    iput-boolean v2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mIsBeingDragged:Z

    iput v3, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mActivePointerId:I

    goto :goto_0

    :cond_7
    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {v1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mActivePointerId:I

    iput-boolean v2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mIsBeingDragged:Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_8

    return v2

    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mInitialDownY:F

    :goto_0
    iget-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mIsBeingDragged:Z

    return p1

    :cond_9
    :goto_1
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p3, :cond_1

    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->ensureTarget()V

    :cond_1
    iget-object p3, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getPaddingTop()I

    move-result p5

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr v0, p4

    add-int/2addr p2, p5

    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/view/View;->layout(IIII)V

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p2}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p3}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x2

    sub-int p5, p1, p2

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    add-int/2addr p1, p2

    add-int/2addr p3, v0

    invoke-virtual {p4, p5, v0, p1, p3}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->ensureTarget()V

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    iget p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleDiameter:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleDiameter:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->measure(II)V

    const/4 p1, -0x1

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleViewIndex:I

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    if-ne p2, v0, :cond_2

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-lez p3, :cond_1

    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v2, v1, p1

    if-lez v2, :cond_1

    int-to-float v2, p3

    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    float-to-int v1, v1

    aput v1, p4, v0

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalUnconsumed:F

    goto :goto_0

    :cond_0
    sub-float/2addr v1, v2

    iput v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalUnconsumed:F

    aput p3, p4, v0

    :goto_0
    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->moveSpinner(F)V

    :cond_1
    iget-boolean v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v1, :cond_2

    if-lez p3, :cond_2

    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    aget p1, p4, v0

    sub-int p1, p3, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mParentScrollConsumed:[I

    const/4 v1, 0x0

    aget v2, p4, v1

    sub-int/2addr p2, v2

    aget v2, p4, v0

    sub-int/2addr p3, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p2, p3, p1, v2}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result p2

    if-eqz p2, :cond_3

    aget p2, p4, v1

    aget p3, p1, v1

    add-int/2addr p2, p3

    aput p2, p4, v1

    aget p2, p4, v0

    aget p1, p1, v0

    add-int/2addr p2, p1

    aput p2, p4, v0

    :cond_3
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 0

    if-nez p5, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->onNestedPreScroll(Landroid/view/View;II[I)V

    :cond_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 8

    iget-object v7, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingV2ConsumedCompat:[I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 8

    iget-object v7, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingV2ConsumedCompat:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 11

    move-object v8, p0

    if-eqz p6, :cond_0

    return-void

    :cond_0
    const/4 v9, 0x1

    aget v10, p7, v9

    iget-object v5, v8, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->dispatchNestedScroll(IIII[II[I)V

    aget v0, p7, v9

    sub-int/2addr v0, v10

    sub-int v0, p5, v0

    if-nez v0, :cond_1

    iget-object v1, v8, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mParentOffsetInWindow:[I

    aget v1, v1, v9

    add-int v1, p5, v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-gez v1, :cond_2

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, v8, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    iput v2, v8, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v2}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->moveSpinner(F)V

    aget v1, p7, v9

    add-int/2addr v1, v0

    aput v1, p7, v9

    :cond_2
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    and-int/lit8 p1, p3, 0x2

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->startNestedScroll(I)Z

    const/4 p1, 0x0

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollInProgress:Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    if-nez p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState;->mRefreshing:Z

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState;

    iget-boolean v2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mRefreshing:Z

    invoke-direct {v1, v0, v2}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$SavedState;-><init>(Landroid/os/Parcelable;Z)V

    return-object v1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mReturningToStart:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mRefreshing:Z

    if-nez p1, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    if-nez p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollInProgress:Z

    iget p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalUnconsumed:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->finishSpinner(F)V

    iput v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalUnconsumed:F

    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->stopNestedScroll()V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->onStopNestedScroll(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mReturningToStart:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mReturningToStart:Z

    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_e

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mRefreshing:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollInProgress:Z

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x1

    if-eqz v0, :cond_c

    const/high16 v3, 0x3f000000    # 0.5f

    if-eq v0, v1, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-gez v0, :cond_4

    sget-object p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mActivePointerId:I

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_7

    sget-object p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->startDragging(F)V

    iget-boolean v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr p1, v0

    mul-float/2addr p1, v3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->moveSpinner(F)V

    goto :goto_0

    :cond_8
    return v2

    :cond_9
    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_a

    sget-object p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_a
    iget-boolean v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_b

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr p1, v0

    mul-float/2addr p1, v3

    iput-boolean v2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mIsBeingDragged:Z

    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->finishSpinner(F)V

    :cond_b
    const/4 p1, -0x1

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mActivePointerId:I

    return v2

    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mActivePointerId:I

    iput-boolean v2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mIsBeingDragged:Z

    :cond_d
    :goto_0
    return v1

    :cond_e
    :goto_1
    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mEnableLegacyRequestDisallowInterceptTouch:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method reset()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->clearAnimation()V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->stop()V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setVisibility(I)V

    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setColorViewAlpha(I)V

    iget-boolean v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setAnimationProgress(F)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    :goto_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getTop()I

    move-result v0

    iput v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return-void
.end method

.method setAnimationProgress(F)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setScaleX(F)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setScaleY(F)V

    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setColorSchemeResources([I)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->ensureTarget()V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setColorSchemeColors([I)V

    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget v3, p1, v2

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mTotalDragDistance:F

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->reset()V

    :cond_0
    return-void
.end method

.method public setLegacyRequestDisallowInterceptTouchEventEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mEnableLegacyRequestDisallowInterceptTouch:Z

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnChildScrollUpCallback(Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$OnChildScrollUpCallback;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mChildScrollUpCallback:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$OnChildScrollUpCallback;

    return-void
.end method

.method public setOnRefreshListener(Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$OnRefreshListener;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mListener:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$OnRefreshListener;

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setBackgroundColor(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 0

    iput p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iput-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mScale:Z

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->invalidate()V

    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mScale:Z

    iput p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mOriginalOffsetTop:I

    iput p3, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mUsingCustomStart:Z

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->reset()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mRefreshing:Z

    return-void
.end method

.method public setRefreshing(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mRefreshing:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mRefreshing:Z

    iget-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez p1, :cond_0

    iget p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mOriginalOffsetTop:I

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    iget p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    :goto_0
    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    iput-boolean v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNotify:Z

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setRefreshing(ZZ)V

    :goto_1
    return-void
.end method

.method public setSize(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez p1, :cond_1

    const/high16 v1, 0x42600000    # 56.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleDiameter:I

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleDiameter:I

    :goto_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setStyle(I)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSlingshotDistance(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCustomSlingshotDistance:I

    return-void
.end method

.method setTargetOffsetTopAndBottom(I)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->bringToFront()V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getTop()I

    move-result p1

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->startNestedScroll(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    new-instance v0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$3;-><init>(Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;)V

    iput-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->clearAnimation()V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public stopNestedScroll()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->stopNestedScroll()V

    :cond_0
    return-void
.end method
