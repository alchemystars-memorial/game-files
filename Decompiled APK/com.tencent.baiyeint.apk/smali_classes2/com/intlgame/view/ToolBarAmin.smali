.class public Lcom/intlgame/view/ToolBarAmin;
.super Ljava/lang/Object;
.source "ToolBarAmin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;,
        Lcom/intlgame/view/ToolBarAmin$WebViewAnimListener;
    }
.end annotation


# instance fields
.field private mAnimationTitlebarHide:Landroid/view/animation/Animation;

.field private mAnimationTitlebarShow:Landroid/view/animation/Animation;

.field private mAnimationToolbarHide:Landroid/view/animation/Animation;

.field private mAnimationToolbarShow:Landroid/view/animation/Animation;

.field private mBarHeight:I

.field private mColorHide:Landroid/animation/ValueAnimator;

.field private mColorShow:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mDetector:Landroid/view/GestureDetector;

.field private mFlingLimitX:I

.field private mFlingLimitY:I

.field private mIsShow:Z

.field private mTitleBar:Landroid/view/View;

.field private mTitleBarHide:Landroid/animation/ValueAnimator;

.field private mTitleBarShow:Landroid/animation/ValueAnimator;

.field private mToolBar:Landroid/view/View;

.field private mToolBarEnable:Z

.field private mToolBarHide:Landroid/animation/ValueAnimator;

.field private mToolBarShow:Landroid/animation/ValueAnimator;

.field private mWebView:Landroid/webkit/WebView;

.field private titlebarHideable:Z

.field private toolbarLandscapeHideable:Z

.field private toolbarPortraitHideable:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/webkit/WebView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intlgame/view/ToolBarAmin;->mIsShow:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/intlgame/view/ToolBarAmin;->titlebarHideable:Z

    iput-boolean v1, p0, Lcom/intlgame/view/ToolBarAmin;->toolbarPortraitHideable:Z

    iput-boolean v1, p0, Lcom/intlgame/view/ToolBarAmin;->toolbarLandscapeHideable:Z

    iput-boolean v0, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBarEnable:Z

    const-string v0, "Construct tool bar amin"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBar:Landroid/view/View;

    iput-object p2, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBar:Landroid/view/View;

    iput-object p3, p0, Lcom/intlgame/view/ToolBarAmin;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/view/ToolBarAmin;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/view/GestureDetector;

    iget-object p2, p0, Lcom/intlgame/view/ToolBarAmin;->mContext:Landroid/content/Context;

    new-instance p3, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;

    invoke-direct {p3, p0}, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;-><init>(Lcom/intlgame/view/ToolBarAmin;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/intlgame/view/ToolBarAmin;->mDetector:Landroid/view/GestureDetector;

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin;->mWebView:Landroid/webkit/WebView;

    new-instance p2, Lcom/intlgame/view/ToolBarAmin$1;

    invoke-direct {p2, p0}, Lcom/intlgame/view/ToolBarAmin$1;-><init>(Lcom/intlgame/view/ToolBarAmin;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/intlgame/view/ToolBarAmin;->initAnimation()V

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarAmin;->mDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/intlgame/view/ToolBarAmin;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intlgame/view/ToolBarAmin;->setAnimationDuration(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/intlgame/view/ToolBarAmin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/intlgame/view/ToolBarAmin;->titlebarHideable:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/intlgame/view/ToolBarAmin;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBarHide:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/intlgame/view/ToolBarAmin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/intlgame/view/ToolBarAmin;->toolbarLandscapeHideable:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/intlgame/view/ToolBarAmin;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBarHide:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/intlgame/view/ToolBarAmin;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarAmin;->mColorHide:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/intlgame/view/ToolBarAmin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/intlgame/view/ToolBarAmin;->toolbarPortraitHideable:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarAmin;->mAnimationTitlebarHide:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarAmin;->mAnimationToolbarHide:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/intlgame/view/ToolBarAmin;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBarShow:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/intlgame/view/ToolBarAmin;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBarShow:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/intlgame/view/ToolBarAmin;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarAmin;->mColorShow:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarAmin;->mAnimationTitlebarShow:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarAmin;->mAnimationToolbarShow:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$300(Lcom/intlgame/view/ToolBarAmin;)I
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/view/ToolBarAmin;->getOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/intlgame/view/ToolBarAmin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBarEnable:Z

    return p0
.end method

.method static synthetic access$500(Lcom/intlgame/view/ToolBarAmin;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarAmin;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/intlgame/view/ToolBarAmin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/intlgame/view/ToolBarAmin;->mIsShow:Z

    return p0
.end method

.method static synthetic access$602(Lcom/intlgame/view/ToolBarAmin;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/intlgame/view/ToolBarAmin;->mIsShow:Z

    return p1
.end method

.method static synthetic access$700(Lcom/intlgame/view/ToolBarAmin;)I
    .locals 0

    iget p0, p0, Lcom/intlgame/view/ToolBarAmin;->mFlingLimitX:I

    return p0
.end method

.method static synthetic access$800(Lcom/intlgame/view/ToolBarAmin;)I
    .locals 0

    iget p0, p0, Lcom/intlgame/view/ToolBarAmin;->mFlingLimitY:I

    return p0
.end method

.method static synthetic access$900(Lcom/intlgame/view/ToolBarAmin;)I
    .locals 0

    iget p0, p0, Lcom/intlgame/view/ToolBarAmin;->mBarHeight:I

    return p0
.end method

.method private getOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBar:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private initAnimation()V
    .locals 10

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBar:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "title bar can not be null"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/intlgame/view/ToolBarAmin;->showToolBar()V

    iget-boolean v0, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBarEnable:Z

    if-nez v0, :cond_1

    const-string v0, "tool bar not enable, return"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/intlgame/webview/WebViewResID;->dimen_fling_limit_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/intlgame/view/ToolBarAmin;->mFlingLimitX:I

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/intlgame/webview/WebViewResID;->dimen_fling_limit_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/intlgame/view/ToolBarAmin;->mFlingLimitY:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mContext:Landroid/content/Context;

    sget v1, Lcom/intlgame/webview/WebViewResID;->anim_toolbar_hide:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mAnimationToolbarHide:Landroid/view/animation/Animation;

    new-instance v1, Lcom/intlgame/view/ToolBarAmin$WebViewAnimListener;

    invoke-direct {v1, p0, v3}, Lcom/intlgame/view/ToolBarAmin$WebViewAnimListener;-><init>(Lcom/intlgame/view/ToolBarAmin;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mContext:Landroid/content/Context;

    sget v1, Lcom/intlgame/webview/WebViewResID;->anim_toolbar_show:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mAnimationToolbarShow:Landroid/view/animation/Animation;

    new-instance v1, Lcom/intlgame/view/ToolBarAmin$WebViewAnimListener;

    invoke-direct {v1, p0, v2}, Lcom/intlgame/view/ToolBarAmin$WebViewAnimListener;-><init>(Lcom/intlgame/view/ToolBarAmin;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mContext:Landroid/content/Context;

    sget v1, Lcom/intlgame/webview/WebViewResID;->anim_titlebar_hide:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mAnimationTitlebarHide:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mContext:Landroid/content/Context;

    sget v1, Lcom/intlgame/webview/WebViewResID;->anim_titlebar_show:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mAnimationTitlebarShow:Landroid/view/animation/Animation;

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x78

    iget-object v1, p0, Lcom/intlgame/view/ToolBarAmin;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/intlgame/webview/WebViewResID;->dimen_titlebar_height:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/intlgame/view/ToolBarAmin;->mBarHeight:I

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v5, v4, v5

    neg-int v1, v1

    aput v1, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBarHide:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/intlgame/view/ToolBarAmin$2;

    invoke-direct {v4, p0}, Lcom/intlgame/view/ToolBarAmin$2;-><init>(Lcom/intlgame/view/ToolBarAmin;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBarHide:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBarHide:Landroid/animation/ValueAnimator;

    int-to-long v6, v0

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v0, v3, [I

    iget v1, p0, Lcom/intlgame/view/ToolBarAmin;->mBarHeight:I

    neg-int v1, v1

    aput v1, v0, v5

    aput v5, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBarShow:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/intlgame/view/ToolBarAmin$3;

    invoke-direct {v1, p0}, Lcom/intlgame/view/ToolBarAmin$3;-><init>(Lcom/intlgame/view/ToolBarAmin;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBarShow:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBarShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v0, v3, [I

    aput v5, v0, v5

    iget v1, p0, Lcom/intlgame/view/ToolBarAmin;->mBarHeight:I

    neg-int v1, v1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBarHide:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/intlgame/view/ToolBarAmin$4;

    invoke-direct {v1, p0}, Lcom/intlgame/view/ToolBarAmin$4;-><init>(Lcom/intlgame/view/ToolBarAmin;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBarHide:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBarHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v0, v3, [I

    iget v1, p0, Lcom/intlgame/view/ToolBarAmin;->mBarHeight:I

    neg-int v1, v1

    aput v1, v0, v5

    aput v5, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBarShow:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/intlgame/view/ToolBarAmin$5;

    invoke-direct {v1, p0}, Lcom/intlgame/view/ToolBarAmin$5;-><init>(Lcom/intlgame/view/ToolBarAmin;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBarShow:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBarShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/intlgame/webview/WebViewResID;->color_toolbar_visible:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/intlgame/view/ToolBarAmin;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/intlgame/webview/WebViewResID;->color_toolbar_invisible:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    new-instance v4, Lcom/intlgame/view/ColorEvaluator;

    invoke-direct {v4}, Lcom/intlgame/view/ColorEvaluator;-><init>()V

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v4, v8}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/intlgame/view/ToolBarAmin;->mColorHide:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/intlgame/view/ToolBarAmin$6;

    invoke-direct {v8, p0}, Lcom/intlgame/view/ToolBarAmin$6;-><init>(Lcom/intlgame/view/ToolBarAmin;)V

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/intlgame/view/ToolBarAmin;->mColorHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/intlgame/view/ColorEvaluator;

    invoke-direct {v4}, Lcom/intlgame/view/ColorEvaluator;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mColorShow:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/intlgame/view/ToolBarAmin$7;

    invoke-direct {v1, p0}, Lcom/intlgame/view/ToolBarAmin$7;-><init>(Lcom/intlgame/view/ToolBarAmin;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mColorShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_0
    return-void
.end method

.method private setAnimationDuration(I)V
    .locals 3

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBarHide:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBarShow:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBarHide:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBarShow:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin;->mColorHide:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin;->mColorShow:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method private showToolBar()V
    .locals 3

    iget-boolean v0, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBarEnable:Z

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/intlgame/view/ToolBarAmin;->getOrientation()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public setTitleBarHideable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/intlgame/view/ToolBarAmin;->titlebarHideable:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebView ToolBar titlebarHideable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public setToolBarEnable(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setToolBarEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBarEnable:Z

    invoke-direct {p0}, Lcom/intlgame/view/ToolBarAmin;->showToolBar()V

    return-void
.end method

.method public setToolBarLandscapeHideable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/intlgame/view/ToolBarAmin;->toolbarLandscapeHideable:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebView ToolBar toolbarLandscapeHideable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public setToolBarPortraitHideable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/intlgame/view/ToolBarAmin;->toolbarPortraitHideable:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebView ToolBar toolbarPortraitHideable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public showTitleBar(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/intlgame/view/ToolBarAmin;->mToolBarEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showTitleBar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin;->mTitleBar:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
