.class public abstract Lcom/intlgame/webview/WebViewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;,
        Lcom/intlgame/webview/WebViewActivity$MsgHandler;,
        Lcom/intlgame/webview/WebViewActivity$ColorEvaluator;,
        Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;,
        Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;
    }
.end annotation


# static fields
.field private static final CREATE_FILE:I = 0xa

.field private static final PERMISSIONS_STORAGE:[Ljava/lang/String;

.field private static final PERMISSIONS_STORAGE_ANDROID_TIRAMISU:[Ljava/lang/String;

.field private static final REQUESTCODE_FILECHOOSER:I = 0x1

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1


# instance fields
.field private CAPTURE_LOCATION:Ljava/lang/String;

.field private INTLMETHOD:Ljava/lang/String;

.field private WXGAMELINE_METHOD:Ljava/lang/String;

.field private backDisableUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapDownloaded:Landroid/graphics/Bitmap;

.field private extraJson:Ljava/lang/String;

.field private fileUtils:Lcom/intlgame/tools/FileUtils;

.field private guestId:Ljava/lang/String;

.field private isBackDisable:Z

.field private isExitDisable:Z

.field private isFullScreen:Z

.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private mAnimationProgressLoading:Landroid/view/animation/Animation;

.field private mAnimationTitlebarHide:Landroid/view/animation/Animation;

.field private mAnimationTitlebarShow:Landroid/view/animation/Animation;

.field private mAnimationToolbarHide:Landroid/view/animation/Animation;

.field private mAnimationToolbarShow:Landroid/view/animation/Animation;

.field private mBackBtn:Landroid/widget/ImageButton;

.field private mBackUnclickableBtn:Landroid/widget/ImageButton;

.field private mBarHeight:I

.field private mBgColor:I

.field private mColorHide:Landroid/animation/ValueAnimator;

.field private mColorShow:Landroid/animation/ValueAnimator;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mDensity:F

.field private mDetector:Landroid/view/GestureDetector;

.field private mDownloadDlg:Landroid/app/Dialog;

.field private mEncryptEnable:Z

.field private mFlingLimitX:I

.field private mFlingLimitY:I

.field private mForwardBtn:Landroid/widget/ImageButton;

.field private mForwardUnclickableBtn:Landroid/widget/ImageButton;

.field private mGameId:Ljava/lang/String;

.field private mIsShow:Ljava/lang/Boolean;

.field private mIsWebViewInstanced:Z

.field private mLandMoreBtn:Landroid/view/View;

.field private mMoreBtn:Landroid/widget/ImageButton;

.field private mMoreDlg:Landroid/app/Dialog;

.field private mOpenSystenBrowserBtn:Landroid/widget/ImageButton;

.field private mOrientation:I

.field private mOriginalOrientation:I

.field private mOriginalSystemUiVisibility:I

.field private mOriginalUrl:Ljava/lang/String;

.field private mParentLayout:Landroid/view/ViewGroup;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressImgView:Landroid/view/View;

.field private mProgressLoading:Landroid/animation/ValueAnimator;

.field private mProgressType:I

.field private mRefreshBtn:Landroid/widget/ImageButton;

.field private mReturnAppBtn:Landroid/widget/ImageButton;

.field private mReturnAppUnclickableBtn:Landroid/widget/ImageButton;

.field private mShareAnimMenu:Lcom/intlgame/webview/ShareAnimMenu;

.field private mShareChannel:Ljava/lang/String;

.field mShareDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intlgame/webview/ShareAdapter$ItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mShareEnable:Z

.field private mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mStopBtn:Landroid/widget/ImageButton;

.field private mTitleBar:Landroid/widget/RelativeLayout;

.field private mTitleBarHide:Landroid/animation/ValueAnimator;

.field private mTitleBarShow:Landroid/animation/ValueAnimator;

.field private mTitleStr:Ljava/lang/String;

.field private mToolBar:Landroid/widget/LinearLayout;

.field private mToolBarHide:Landroid/animation/ValueAnimator;

.field private mToolBarShow:Landroid/animation/ValueAnimator;

.field private mUserAgent:Ljava/lang/String;

.field private mVersionName:Ljava/lang/String;

.field private mWebChromeClient:Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;

.field private mWebTitle:Landroid/widget/TextView;

.field protected mWebView:Lcom/intlgame/webview/WebViewProxy;

.field protected mWebViewFrameLayout:Landroid/widget/FrameLayout;

.field private mWebViewOrientation:I

.field private reloadUrlOnNewIntent:Z

.field private titlebarHideable:Ljava/lang/Boolean;

.field private toSaveUrlStr:Ljava/lang/String;

.field private toolbarLandscapeHideable:Ljava/lang/Boolean;

.field private toolbarPortraitHideable:Ljava/lang/Boolean;

.field private uploadFile:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private uploadFileArray:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intlgame/webview/WebViewActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intlgame/webview/WebViewActivity;->PERMISSIONS_STORAGE_ANDROID_TIRAMISU:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intlgame/webview/WebViewActivity;->mShareEnable:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mUserAgent:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/intlgame/webview/WebViewActivity;->titlebarHideable:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/intlgame/webview/WebViewActivity;->toolbarPortraitHideable:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/intlgame/webview/WebViewActivity;->toolbarLandscapeHideable:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/intlgame/webview/WebViewActivity;->mIsShow:Ljava/lang/Boolean;

    const/4 v3, -0x1

    iput v3, p0, Lcom/intlgame/webview/WebViewActivity;->mOrientation:I

    iput-boolean v2, p0, Lcom/intlgame/webview/WebViewActivity;->isFullScreen:Z

    iput-boolean v2, p0, Lcom/intlgame/webview/WebViewActivity;->isBackDisable:Z

    iput-boolean v2, p0, Lcom/intlgame/webview/WebViewActivity;->isExitDisable:Z

    iput-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mShareAnimMenu:Lcom/intlgame/webview/ShareAnimMenu;

    iput-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mShareDataList:Ljava/util/List;

    const-string v1, ""

    iput-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->extraJson:Ljava/lang/String;

    const-string v2, "webview_capture"

    iput-object v2, p0, Lcom/intlgame/webview/WebViewActivity;->CAPTURE_LOCATION:Ljava/lang/String;

    const-string v2, "IntlMethod"

    iput-object v2, p0, Lcom/intlgame/webview/WebViewActivity;->INTLMETHOD:Ljava/lang/String;

    const-string v2, "WGGetWXGameLinePicture"

    iput-object v2, p0, Lcom/intlgame/webview/WebViewActivity;->WXGAMELINE_METHOD:Ljava/lang/String;

    new-instance v2, Lcom/intlgame/tools/FileUtils;

    invoke-direct {v2}, Lcom/intlgame/tools/FileUtils;-><init>()V

    iput-object v2, p0, Lcom/intlgame/webview/WebViewActivity;->fileUtils:Lcom/intlgame/tools/FileUtils;

    iput-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mGameId:Ljava/lang/String;

    iput-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mVersionName:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/intlgame/webview/WebViewActivity;->mEncryptEnable:Z

    iput-boolean v0, p0, Lcom/intlgame/webview/WebViewActivity;->mIsWebViewInstanced:Z

    iput-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->guestId:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/intlgame/webview/WebViewActivity;->reloadUrlOnNewIntent:Z

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/intlgame/webview/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intlgame/webview/WebViewActivity;->savePhotoFromUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mIsShow:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/intlgame/webview/WebViewActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mIsShow:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/intlgame/webview/WebViewActivity;)I
    .locals 0

    iget p0, p0, Lcom/intlgame/webview/WebViewActivity;->mFlingLimitX:I

    return p0
.end method

.method static synthetic access$1300(Lcom/intlgame/webview/WebViewActivity;)I
    .locals 0

    iget p0, p0, Lcom/intlgame/webview/WebViewActivity;->mFlingLimitY:I

    return p0
.end method

.method static synthetic access$1400(Lcom/intlgame/webview/WebViewActivity;)I
    .locals 0

    iget p0, p0, Lcom/intlgame/webview/WebViewActivity;->mBarHeight:I

    return p0
.end method

.method static synthetic access$1500(Lcom/intlgame/webview/WebViewActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intlgame/webview/WebViewActivity;->setAnimationDuration(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->titlebarHideable:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/intlgame/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBarHide:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/intlgame/webview/WebViewActivity;)I
    .locals 0

    iget p0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebViewOrientation:I

    return p0
.end method

.method static synthetic access$1900(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->toolbarLandscapeHideable:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/intlgame/webview/WebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->checkBackForwardBtnState()V

    return-void
.end method

.method static synthetic access$2000(Lcom/intlgame/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mToolBarHide:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/intlgame/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mColorHide:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->toolbarPortraitHideable:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mAnimationTitlebarHide:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mAnimationToolbarHide:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/intlgame/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBarShow:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/intlgame/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mToolBarShow:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/intlgame/webview/WebViewActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mColorShow:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mAnimationTitlebarShow:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mAnimationToolbarShow:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$300(Lcom/intlgame/webview/WebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->refreshUIAfterStop()V

    return-void
.end method

.method static synthetic access$3000(Lcom/intlgame/webview/WebViewActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intlgame/webview/WebViewActivity;->handleShareEvent(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/intlgame/webview/WebViewActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/intlgame/webview/WebViewActivity;->sendMessageToObserver(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/intlgame/webview/WebViewActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/intlgame/webview/WebViewActivity;->sendMessageToObserver(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->guestId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/intlgame/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/intlgame/webview/WebViewActivity;)I
    .locals 0

    iget p0, p0, Lcom/intlgame/webview/WebViewActivity;->mProgressType:I

    return p0
.end method

.method static synthetic access$3700(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mProgressImgView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mAnimationProgressLoading:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->INTLMETHOD:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->WXGAMELINE_METHOD:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->getWXGameLinePicture()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/intlgame/webview/WebViewActivity;)Landroid/webkit/ValueCallback;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->uploadFileArray:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/intlgame/webview/WebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->uploadFileArray:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/intlgame/webview/WebViewActivity;)Landroid/webkit/ValueCallback;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->uploadFile:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$4302(Lcom/intlgame/webview/WebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->uploadFile:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4402(Lcom/intlgame/webview/WebViewActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/intlgame/webview/WebViewActivity;)I
    .locals 0

    iget p0, p0, Lcom/intlgame/webview/WebViewActivity;->mOriginalSystemUiVisibility:I

    return p0
.end method

.method static synthetic access$4502(Lcom/intlgame/webview/WebViewActivity;I)I
    .locals 0

    iput p1, p0, Lcom/intlgame/webview/WebViewActivity;->mOriginalSystemUiVisibility:I

    return p1
.end method

.method static synthetic access$4600(Lcom/intlgame/webview/WebViewActivity;)I
    .locals 0

    iget p0, p0, Lcom/intlgame/webview/WebViewActivity;->mOriginalOrientation:I

    return p0
.end method

.method static synthetic access$4602(Lcom/intlgame/webview/WebViewActivity;I)I
    .locals 0

    iput p1, p0, Lcom/intlgame/webview/WebViewActivity;->mOriginalOrientation:I

    return p1
.end method

.method static synthetic access$4700(Lcom/intlgame/webview/WebViewActivity;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p0
.end method

.method static synthetic access$4702(Lcom/intlgame/webview/WebViewActivity;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/intlgame/webview/WebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->saveToAlbum()V

    return-void
.end method

.method static synthetic access$500(Lcom/intlgame/webview/WebViewActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->backDisableUrls:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/intlgame/webview/WebViewActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/intlgame/webview/WebViewActivity;->isBackDisable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/intlgame/webview/WebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->refreshUIAfterStartLoading()V

    return-void
.end method

.method static synthetic access$800(Lcom/intlgame/webview/WebViewActivity;)Lcom/intlgame/webview/ShareAnimMenu;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mShareAnimMenu:Lcom/intlgame/webview/ShareAnimMenu;

    return-object p0
.end method

.method static synthetic access$900(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private adaptSpecialFullScreen()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    const/16 v0, 0x1706

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :goto_0
    return-void
.end method

.method private checkBackForwardBtnState()V
    .locals 3

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->canGoForward()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private checkToolbarStatus()V
    .locals 4

    iget v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebViewOrientation:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mLandMoreBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-boolean v3, p0, Lcom/intlgame/webview/WebViewActivity;->mShareEnable:Z

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/intlgame/webview/WebViewActivity;->isFullScreen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mLandMoreBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mMoreBtn:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/intlgame/webview/WebViewActivity;->mShareEnable:Z

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private convertDip2Px(I)I
    .locals 1

    iget v0, p0, Lcom/intlgame/webview/WebViewActivity;->mDensity:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private deleteWxGamelinePicture()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->fileUtils:Lcom/intlgame/tools/FileUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/intlgame/tools/FileUtils;->filePathForINTL(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "wxgameline.jpg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private downloadPhotoFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download photo from url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v2

    const-string v4, "Download photo success"

    invoke-interface {v2, v4}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :goto_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v3, v0

    :goto_2
    move-object v0, v1

    goto :goto_8

    :catch_2
    move-exception v2

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v3, v0

    goto :goto_8

    :catch_3
    move-exception v2

    move-object v1, v0

    move-object v3, v1

    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download photo failed! url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/intlgame/webview/ipc/WebViewLogger;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catch_4
    move-exception p1

    goto :goto_5

    :cond_1
    :goto_4
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :goto_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_6
    move-object v0, v1

    :goto_7
    return-object v0

    :catchall_3
    move-exception p1

    :goto_8
    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_a

    :cond_3
    :goto_9
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_b

    :goto_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_b
    throw p1
.end method

.method private getCurrentUrl()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/intlgame/webview/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v1

    const-string v2, "getCurrentUrl state:true"

    invoke-interface {v1, v2}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v1

    const-string v2, "getCurrentUrl = null"

    invoke-interface {v1, v2}, Lcom/intlgame/webview/ipc/WebViewLogger;->e(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private getPermissionResult(Landroid/app/Activity;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/intlgame/webview/WebViewActivity;->PERMISSIONS_STORAGE_ANDROID_TIRAMISU:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/intlgame/webview/WebViewActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getWXGameLinePicture()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->fileUtils:Lcom/intlgame/tools/FileUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/intlgame/tools/FileUtils;->filePathForINTL(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v3, "wxgameline.jpg"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getWebViewImagePath()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/intlgame/webview/WebViewProxy;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/intlgame/webview/WebViewActivity;->CAPTURE_LOCATION:Ljava/lang/String;

    const-string v3, "capture"

    invoke-static {p0, v0, v2, v3, v1}, Lcom/intlgame/tools/IT;->saveBitmapToLocal(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/intlgame/webview/WebViewProxy;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the path of capture image : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    return-object v1
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 10

    const-string v0, "visibleShareMore"

    const-string v1, "PROGRESS_TYPE"

    const-string v2, "BG_COLOR"

    if-eqz p1, :cond_d

    const-string v3, "game_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/intlgame/webview/WebViewActivity;->mGameId:Ljava/lang/String;

    :cond_0
    const-string v3, "version_name"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/intlgame/webview/WebViewActivity;->mVersionName:Ljava/lang/String;

    :cond_1
    const-string v3, "encrypt_enable"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/intlgame/webview/WebViewActivity;->mEncryptEnable:Z

    :cond_3
    const-string v3, "webview_url"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    const-string v7, "webview_key_extra_json"

    if-eqz v4, :cond_9

    const-string v4, "webview_config"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/intlgame/webview/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "webview config = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "WEBVIEW_SHARE_CHANNEL"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/intlgame/webview/WebViewActivity;->mShareChannel:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/intlgame/webview/WebViewActivity;->mShareEnable:Z

    :cond_4
    const-string v0, "NONE"

    iget-object v3, p0, Lcom/intlgame/webview/WebViewActivity;->mShareChannel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v5, p0, Lcom/intlgame/webview/WebViewActivity;->mShareEnable:Z

    :cond_5
    const-string v0, "WEBVIEW_X5_CLOSE_ANDROID"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    const-string v0, "WEBVIEW_X5_UPLOAD_ANDROID"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    const-string v0, "WEBVIEW_PORTRAIT_HIDE_MENU_BAR_ENABLE"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->toolbarPortraitHideable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->titlebarHideable:Ljava/lang/Boolean;

    const-string v0, "WEBVIEW_LANDSCAPE_HIDE_MENU_BAR_ENABLE"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->toolbarLandscapeHideable:Ljava/lang/Boolean;

    const-string v0, "WEBVIEW_FULLSCREEN_ENABLE"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/intlgame/webview/WebViewActivity;->isFullScreen:Z

    const-string v0, "CONFIG_KEY_BACK_DISABLE"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/intlgame/webview/WebViewActivity;->isBackDisable:Z

    const-string v0, "CONFIG_KEY_EXIT_DISABLE"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/intlgame/webview/WebViewActivity;->isExitDisable:Z

    const-string v0, "CONFIG_KEY_BACK_DISABLE_URLS"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->backDisableUrls:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/intlgame/webview/ipc/WebViewLogger;->e(Ljava/lang/String;)V

    :goto_1
    const-string v0, "webview_screen"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/intlgame/webview/WebViewActivity;->mOrientation:I

    if-eq v0, v6, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOrientation is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/intlgame/webview/WebViewActivity;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", type error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_7
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_8
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_9
    const-string v0, "webview_calljs"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->callJs(Ljava/lang/String;)V

    :cond_a
    :goto_2
    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->extraJson:Ljava/lang/String;

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/intlgame/webview/WebViewActivity;->extraJson:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/intlgame/webview/WebViewActivity;->mBgColor:I

    :cond_b
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/intlgame/webview/WebViewActivity;->mProgressType:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/intlgame/webview/ipc/WebViewLogger;->e(Ljava/lang/String;)V

    :cond_c
    :goto_3
    const-string v0, "guest_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->guestId:Ljava/lang/String;

    goto :goto_4

    :cond_d
    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object p1

    const-string v0, "Start WebViewActivity error, without intent data"

    invoke-interface {p1, v0}, Lcom/intlgame/webview/ipc/WebViewLogger;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->finish()V

    :cond_e
    :goto_4
    return-void
.end method

.method private handleShareEvent(I)V
    .locals 11

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mShareDataList:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mShareDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intlgame/webview/ShareAdapter$ItemData;

    iget-object p1, p1, Lcom/intlgame/webview/ShareAdapter$ItemData;->channel:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "Garena"

    const-string v3, "Facebook"

    const-string v4, "Line"

    const/4 v5, 0x2

    const-string v6, "VK"

    const/4 v7, 0x1

    const-string v8, "Discord"

    const-string v9, "System"

    const/4 v10, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "Browser"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v5

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v0, v7

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v0, v10

    :goto_0
    const/16 p1, 0x66

    packed-switch v0, :pswitch_data_0

    const-string v2, ""

    goto :goto_1

    :pswitch_0
    move v10, p1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/intlgame/webview/WebViewActivity;->mEncryptEnable:Z

    invoke-static {p1, v0, v1}, Lcom/intlgame/webview/ShareManager;->shareToBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :pswitch_2
    move v10, p1

    move-object v2, v3

    goto :goto_1

    :pswitch_3
    move v10, p1

    move-object v2, v4

    goto :goto_1

    :pswitch_4
    move v10, p1

    move-object v2, v6

    goto :goto_1

    :pswitch_5
    move v10, p1

    move-object v2, v8

    goto :goto_1

    :pswitch_6
    move v10, p1

    move-object v2, v9

    :goto_1
    if-eqz v10, :cond_a

    invoke-static {v2}, Lcom/intlgame/foundation/EmptyUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "channel"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "title"

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v1}, Lcom/intlgame/webview/WebViewProxy;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object p1

    const-string v0, "not allow to share illegal URL begins with \"file://\""

    invoke-interface {p1, v0}, Lcom/intlgame/webview/ipc/WebViewLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_9
    const-string v1, "link"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    const/16 v1, 0x2711

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "thumbPath"

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->getWebViewImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "isToastShow"

    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "from_key"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v10, p1}, Lcom/intlgame/webview/WebViewActivity;->sendMessageToObserver(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void

    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object p1

    const-string v0, "handleShareEvent data error"

    invoke-interface {p1, v0}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    return-void

    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object p1

    const-string v0, "handleShareEvent mShareDataList null/size = 0!"

    invoke-interface {p1, v0}, Lcom/intlgame/webview/ipc/WebViewLogger;->e(Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b7ea1b1 -> :sswitch_6
        -0x39282af4 -> :sswitch_5
        0xab5 -> :sswitch_4
        0x242414 -> :sswitch_3
        0x217bfee6 -> :sswitch_2
        0x6c37c308 -> :sswitch_1
        0x7eb45720 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initAnimation()V
    .locals 10

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/intlgame/webview/WebViewResID;->dimen_fling_limit_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/intlgame/webview/WebViewActivity;->mFlingLimitX:I

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/intlgame/webview/WebViewResID;->dimen_fling_limit_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/intlgame/webview/WebViewActivity;->mFlingLimitY:I

    sget v0, Lcom/intlgame/webview/WebViewResID;->anim_progress_loading:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mAnimationProgressLoading:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0xb

    if-ge v0, v3, :cond_0

    sget v0, Lcom/intlgame/webview/WebViewResID;->anim_toolbar_hide:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mAnimationToolbarHide:Landroid/view/animation/Animation;

    new-instance v3, Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;

    invoke-direct {v3, p0, v2}, Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;-><init>(Lcom/intlgame/webview/WebViewActivity;I)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    sget v0, Lcom/intlgame/webview/WebViewResID;->anim_toolbar_show:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mAnimationToolbarShow:Landroid/view/animation/Animation;

    new-instance v2, Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;

    invoke-direct {v2, p0, v1}, Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;-><init>(Lcom/intlgame/webview/WebViewActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    sget v0, Lcom/intlgame/webview/WebViewResID;->anim_titlebar_hide:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mAnimationTitlebarHide:Landroid/view/animation/Animation;

    sget v0, Lcom/intlgame/webview/WebViewResID;->anim_titlebar_show:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mAnimationTitlebarShow:Landroid/view/animation/Animation;

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x78

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/intlgame/webview/WebViewResID;->dimen_titlebar_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/intlgame/webview/WebViewActivity;->mBarHeight:I

    new-array v4, v2, [I

    const/4 v5, 0x0

    aput v5, v4, v5

    neg-int v3, v3

    aput v3, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBarHide:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/intlgame/webview/WebViewActivity$6;

    invoke-direct {v4, p0}, Lcom/intlgame/webview/WebViewActivity$6;-><init>(Lcom/intlgame/webview/WebViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBarHide:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBarHide:Landroid/animation/ValueAnimator;

    int-to-long v6, v0

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v0, v2, [I

    iget v3, p0, Lcom/intlgame/webview/WebViewActivity;->mBarHeight:I

    neg-int v3, v3

    aput v3, v0, v5

    aput v5, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBarShow:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/intlgame/webview/WebViewActivity$7;

    invoke-direct {v3, p0}, Lcom/intlgame/webview/WebViewActivity$7;-><init>(Lcom/intlgame/webview/WebViewActivity;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBarShow:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBarShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v0, v2, [I

    aput v5, v0, v5

    iget v3, p0, Lcom/intlgame/webview/WebViewActivity;->mBarHeight:I

    neg-int v3, v3

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mToolBarHide:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/intlgame/webview/WebViewActivity$8;

    invoke-direct {v3, p0}, Lcom/intlgame/webview/WebViewActivity$8;-><init>(Lcom/intlgame/webview/WebViewActivity;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mToolBarHide:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mToolBarHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v0, v2, [I

    iget v3, p0, Lcom/intlgame/webview/WebViewActivity;->mBarHeight:I

    neg-int v3, v3

    aput v3, v0, v5

    aput v5, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mToolBarShow:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/intlgame/webview/WebViewActivity$9;

    invoke-direct {v3, p0}, Lcom/intlgame/webview/WebViewActivity$9;-><init>(Lcom/intlgame/webview/WebViewActivity;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mToolBarShow:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mToolBarShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/intlgame/webview/WebViewResID;->color_toolbar_visible:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/intlgame/webview/WebViewResID;->color_toolbar_invisible:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    new-instance v4, Lcom/intlgame/webview/WebViewActivity$ColorEvaluator;

    invoke-direct {v4}, Lcom/intlgame/webview/WebViewActivity$ColorEvaluator;-><init>()V

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v4, v8}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/intlgame/webview/WebViewActivity;->mColorHide:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/intlgame/webview/WebViewActivity$10;

    invoke-direct {v8, p0}, Lcom/intlgame/webview/WebViewActivity$10;-><init>(Lcom/intlgame/webview/WebViewActivity;)V

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/intlgame/webview/WebViewActivity;->mColorHide:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/intlgame/webview/WebViewActivity$ColorEvaluator;

    invoke-direct {v4}, Lcom/intlgame/webview/WebViewActivity$ColorEvaluator;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v4, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mColorShow:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/intlgame/webview/WebViewActivity$11;

    invoke-direct {v1, p0}, Lcom/intlgame/webview/WebViewActivity$11;-><init>(Lcom/intlgame/webview/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mColorShow:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_0
    return-void
.end method

.method private initLayout()V
    .locals 4

    sget v0, Lcom/intlgame/webview/WebViewResID;->playout:I

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mParentLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/intlgame/webview/WebViewResID;->webTitle:I

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebTitle:Landroid/widget/TextView;

    sget v0, Lcom/intlgame/webview/WebViewResID;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    sget v0, Lcom/intlgame/webview/WebViewResID;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    sget v0, Lcom/intlgame/webview/WebViewResID;->refresh:I

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/intlgame/webview/WebViewResID;->stop:I

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/intlgame/webview/WebViewResID;->back:I

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/intlgame/webview/WebViewResID;->backUnclickable:I

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    sget v0, Lcom/intlgame/webview/WebViewResID;->forward:I

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/intlgame/webview/WebViewResID;->forwardUnclickable:I

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    sget v0, Lcom/intlgame/webview/WebViewResID;->land_more:I

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mLandMoreBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mLandMoreBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/intlgame/webview/WebViewResID;->return_app:I

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mReturnAppBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/intlgame/webview/WebViewResID;->return_app_unclickable:I

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mReturnAppUnclickableBtn:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/intlgame/webview/WebViewActivity;->isExitDisable:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mReturnAppBtn:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/intlgame/webview/WebViewActivity;->isExitDisable:Z

    if-eqz v2, :cond_1

    move v3, v1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mReturnAppBtn:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/intlgame/webview/WebViewActivity;->isExitDisable:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    sget v0, Lcom/intlgame/webview/WebViewResID;->more:I

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mMoreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mMoreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance v0, Lcom/intlgame/webview/ShareAnimMenu;

    sget v1, Lcom/intlgame/webview/R$layout;->intl_webview_share_dlg:I

    invoke-direct {v0, p0, v1}, Lcom/intlgame/webview/ShareAnimMenu;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mShareAnimMenu:Lcom/intlgame/webview/ShareAnimMenu;

    sget v1, Lcom/intlgame/webview/R$id;->share_cancel:I

    invoke-virtual {v0, v1}, Lcom/intlgame/webview/ShareAnimMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/intlgame/webview/WebViewActivity$5;

    invoke-direct {v1, p0}, Lcom/intlgame/webview/WebViewActivity$5;-><init>(Lcom/intlgame/webview/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mShareAnimMenu:Lcom/intlgame/webview/ShareAnimMenu;

    sget v1, Lcom/intlgame/webview/R$id;->share_recyclerView:I

    invoke-virtual {v0, v1}, Lcom/intlgame/webview/ShareAnimMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private initLoadingView()V
    .locals 3

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/intlgame/webview/WebViewActivity;->mDensity:F

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/intlgame/webview/WebViewActivity;->mProgressType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget v0, p0, Lcom/intlgame/webview/WebViewActivity;->mProgressType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mProgressImgView:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mProgressImgView:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/intlgame/webview/WebViewActivity;->convertDip2Px(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/intlgame/webview/WebViewActivity;->convertDip2Px(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebViewFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/intlgame/webview/WebViewActivity;->mProgressImgView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mProgressImgView:Landroid/view/View;

    sget v1, Lcom/intlgame/webview/R$drawable;->intl_webview_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method private initShareLayoutData()V
    .locals 2

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mShareChannel:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/intlgame/webview/ShareManager;->getShareListData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mShareDataList:Ljava/util/List;

    new-instance v0, Lcom/intlgame/webview/ShareAdapter;

    invoke-direct {v0, p0}, Lcom/intlgame/webview/ShareAdapter;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mShareDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/intlgame/webview/ShareAdapter;->setShareData(Ljava/util/List;)V

    new-instance v1, Lcom/intlgame/webview/WebViewActivity$12;

    invoke-direct {v1, p0}, Lcom/intlgame/webview/WebViewActivity$12;-><init>(Lcom/intlgame/webview/WebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/intlgame/webview/ShareAdapter;->setOnItemClickListener(Lcom/intlgame/webview/ShareAdapter$OnItemClickListener;)V

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method private initWebView()V
    .locals 5

    new-instance v0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;

    invoke-direct {v0, p0}, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;-><init>(Lcom/intlgame/webview/WebViewActivity;)V

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebChromeClient:Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v1, v0}, Lcom/intlgame/webview/WebViewProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    new-instance v1, Lcom/intlgame/webview/WebViewActivity$3;

    invoke-direct {v1, p0}, Lcom/intlgame/webview/WebViewActivity$3;-><init>(Lcom/intlgame/webview/WebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/intlgame/webview/WebViewProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    new-instance v1, Lcom/intlgame/webview/WebViewActivity$4;

    invoke-direct {v1, p0}, Lcom/intlgame/webview/WebViewActivity$4;-><init>(Lcom/intlgame/webview/WebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/intlgame/webview/WebViewProxy;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    const-string v2, "searchBoxJavaBridge_"

    invoke-virtual {v0, v2}, Lcom/intlgame/webview/WebViewProxy;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Lcom/intlgame/webview/WebViewProxy;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    const-string v2, "accessibilityTraversal"

    invoke-virtual {v0, v2}, Lcom/intlgame/webview/WebViewProxy;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_2
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    const-string v1, "databases"

    invoke-virtual {p0, v1, v3}, Lcom/intlgame/webview/WebViewActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    const-string v1, "geolocation"

    invoke-virtual {p0, v1, v3}, Lcom/intlgame/webview/WebViewActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mUserAgent:Ljava/lang/String;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " INTLBrowser/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/webview/WebViewActivity;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (Android; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/webview/WebViewActivity;->mGameId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mUserAgent:Ljava/lang/String;

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/intlgame/webview/WebViewActivity;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useragent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v3}, Lcom/intlgame/webview/WebViewProxy;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method private loadUrl()V
    .locals 2

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    const-string v1, "mOriginalUrl is empty!"

    invoke-interface {v0, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/intlgame/webview/WebViewProxy;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private onSaveSuccess(Ljava/io/File;)V
    .locals 1

    new-instance v0, Lcom/intlgame/webview/WebViewActivity$17;

    invoke-direct {v0, p0, p1}, Lcom/intlgame/webview/WebViewActivity$17;-><init>(Lcom/intlgame/webview/WebViewActivity;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshUIAfterStartLoading()V
    .locals 2

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mStopBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private refreshUIAfterStop()V
    .locals 2

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mRefreshBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private savePhotoFromUrl(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save photo from urlStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->toSaveUrlStr:Ljava/lang/String;

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/intlgame/webview/R$string;->intl_webview_save_photo:I

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/intlgame/webview/R$string;->intl_webview_sure:I

    invoke-virtual {p0, v1}, Lcom/intlgame/webview/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/intlgame/webview/R$string;->intl_webview_cancel:I

    invoke-virtual {p0, v2}, Lcom/intlgame/webview/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/intlgame/webview/WebViewActivity$14;

    invoke-direct {v0, p0}, Lcom/intlgame/webview/WebViewActivity$14;-><init>(Lcom/intlgame/webview/WebViewActivity;)V

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/intlgame/webview/WebViewActivity$15;

    invoke-direct {v0, p0}, Lcom/intlgame/webview/WebViewActivity$15;-><init>(Lcom/intlgame/webview/WebViewActivity;)V

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private saveToAlbum()V
    .locals 6

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->toSaveUrlStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->downloadPhotoFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->bitmapDownloaded:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->toSaveUrlStr:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save photo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-le v1, v2, :cond_1

    const-string v1, "content://com.android.externalstorage.documents/document/primary:Download"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "*/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.provider.extra.INITIAL_URI"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v0, 0xa

    invoke-virtual {p0, v2, v0}, Lcom/intlgame/webview/WebViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->e(Ljava/lang/String;)V

    const-string v1, "INTL"

    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Save photo to path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/intlgame/webview/WebViewActivity;->bitmapDownloaded:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v2

    const-string v4, "Save photo success"

    invoke-interface {v2, v4}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/intlgame/webview/WebViewActivity;->onSaveSuccess(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Save photo failed! fileName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/intlgame/webview/ipc/WebViewLogger;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_2
    return-void

    :goto_3
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    throw v0

    :cond_5
    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    const-string v1, "Photo bitmap is null"

    invoke-interface {v0, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method private sendMessageToObserver(ILjava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/intlgame/webview/WebViewActivity;->sendMessageToObserver(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendMessageToObserver(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->extraJson:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/intlgame/webview/WebViewActivity;->sendMessageToObserver(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAnimationDuration(I)V
    .locals 3

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBarHide:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBarShow:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mToolBarHide:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mToolBarShow:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mColorHide:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mColorShow:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public callJs(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callJs parasJson : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intlgame/webview/WebViewActivity;->reloadUrlOnNewIntent:Z

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object p1

    const-string v0, "webView instance is null"

    invoke-interface {p1, v0}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/intlgame/webview/WebViewActivity$13;

    invoke-direct {v0, p0, p1}, Lcom/intlgame/webview/WebViewActivity$13;-><init>(Lcom/intlgame/webview/WebViewActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewActivity onActivityResult, requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_a

    const/4 p2, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->uploadFileArray:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    new-array p1, v0, [Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    aput-object p3, p1, p2

    :goto_0
    iget-object p2, p0, Lcom/intlgame/webview/WebViewActivity;->uploadFileArray:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->uploadFileArray:Landroid/webkit/ValueCallback;

    goto/16 :goto_a

    :cond_1
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->uploadFile:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_c

    if-nez p3, :cond_2

    move-object p1, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    :goto_1
    iget-object p2, p0, Lcom/intlgame/webview/WebViewActivity;->uploadFile:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->uploadFile:Landroid/webkit/ValueCallback;

    goto/16 :goto_a

    :cond_3
    const/16 v2, 0xa

    if-ne p1, v2, :cond_c

    if-nez p3, :cond_4

    return-void

    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity;->bitmapDownloaded:Landroid/graphics/Bitmap;

    if-nez p3, :cond_5

    goto/16 :goto_9

    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v2, "w"

    invoke-virtual {p3, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {p3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->bitmapDownloaded:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v1, "File Saved"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object p3, v1

    :goto_2
    move-object v1, p1

    goto :goto_3

    :catchall_2
    move-exception p2

    move-object p1, v1

    goto :goto_5

    :catch_3
    move-exception v0

    move-object p3, v1

    :goto_3
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Something went wrong"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not save file:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/intlgame/webview/ipc/WebViewLogger;->w(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p3, :cond_6

    :try_start_5
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_a

    :catchall_3
    move-exception p2

    move-object p1, v1

    :goto_4
    move-object v1, p3

    :goto_5
    if-eqz v1, :cond_7

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_6

    :catch_4
    move-exception p1

    goto :goto_7

    :cond_7
    :goto_6
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :goto_7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_8
    throw p2

    :cond_9
    :goto_9
    return-void

    :cond_a
    if-nez p2, :cond_c

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->uploadFileArray:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_b

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->uploadFileArray:Landroid/webkit/ValueCallback;

    :cond_b
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->uploadFile:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_c

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->uploadFile:Landroid/webkit/ValueCallback;

    :cond_c
    :goto_a
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/intlgame/webview/WebViewActivity;->isBackDisable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    const-string v1, "onBackPressed disable"

    invoke-interface {v0, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->goBack()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/intlgame/webview/WebViewResID;->back:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebChromeClient:Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->onHideCustomView()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewProxy;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewProxy;->goBack()V

    goto :goto_0

    :cond_1
    sget v0, Lcom/intlgame/webview/WebViewResID;->forward:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewProxy;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewProxy;->goForward()V

    goto :goto_0

    :cond_2
    sget v0, Lcom/intlgame/webview/WebViewResID;->refresh:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewProxy;->reload()V

    goto :goto_0

    :cond_3
    sget v0, Lcom/intlgame/webview/WebViewResID;->stop:I

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewProxy;->stopLoading()V

    goto :goto_0

    :cond_4
    sget v0, Lcom/intlgame/webview/WebViewResID;->return_app:I

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->finish()V

    goto :goto_0

    :cond_5
    sget v0, Lcom/intlgame/webview/WebViewResID;->more:I

    if-eq p1, v0, :cond_6

    sget v0, Lcom/intlgame/webview/WebViewResID;->land_more:I

    if-ne p1, v0, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->initShareLayoutData()V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mShareAnimMenu:Lcom/intlgame/webview/ShareAnimMenu;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/intlgame/webview/ShareAnimMenu;->show()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    iput v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebViewOrientation:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebViewOrientation:I

    :goto_0
    iget-boolean p1, p0, Lcom/intlgame/webview/WebViewActivity;->isFullScreen:Z

    invoke-virtual {p0, p1}, Lcom/intlgame/webview/WebViewActivity;->setFullScreen(Z)V

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->checkToolbarStatus()V

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->initShareLayoutData()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/intlgame/webview/WebViewActivity;->requestWindowFeature(I)Z

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->adaptSpecialFullScreen()V

    invoke-static {p0}, Lcom/intlgame/api/INTLSDK;->setActivityCur(Landroid/app/Activity;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intl_inner_webview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v1}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    const-string v1, "BEGIN"

    invoke-interface {v0, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-static {p0}, Lcom/intlgame/webview/WebViewResID;->init(Landroid/content/Context;)V

    sget v0, Lcom/intlgame/webview/WebViewResID;->layout_webview_activity:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object p1

    const-string v0, "WebViewResID.layout_webview_activity == 0x00"

    invoke-interface {p1, v0}, Lcom/intlgame/webview/ipc/WebViewLogger;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    iput v1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebViewOrientation:I

    goto :goto_1

    :cond_2
    iput p1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebViewOrientation:I

    :goto_1
    new-instance p1, Landroid/view/GestureDetector;

    new-instance v0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;

    invoke-direct {v0, p0}, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;-><init>(Lcom/intlgame/webview/WebViewActivity;)V

    invoke-direct {p1, p0, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/intlgame/webview/WebViewActivity;->handleIntent(Landroid/content/Intent;)V

    sget p1, Lcom/intlgame/webview/WebViewResID;->layout_webview_activity:I

    invoke-virtual {p0, p1}, Lcom/intlgame/webview/WebViewActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/intlgame/webview/WebViewCommonUtil;->isSystemFullScreenSupport(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_3
    sget p1, Lcom/intlgame/webview/WebViewResID;->webViewFrameLayout:I

    invoke-virtual {p0, p1}, Lcom/intlgame/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebViewFrameLayout:Landroid/widget/FrameLayout;

    sget p1, Lcom/intlgame/webview/WebViewResID;->viewProgressBar:I

    invoke-virtual {p0, p1}, Lcom/intlgame/webview/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    :try_start_1
    new-instance p1, Lcom/intlgame/webview/WebViewProxy;

    invoke-direct {p1, p0}, Lcom/intlgame/webview/WebViewProxy;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {}, Lcom/intlgame/webview/WebViewManager;->getInstance()Lcom/intlgame/webview/WebViewManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->webViewConfig()Lcom/intlgame/webview/ipc/WebViewConfig;

    move-result-object v0

    iput-object v0, p1, Lcom/intlgame/webview/WebViewManager;->webViewConfig:Lcom/intlgame/webview/ipc/WebViewConfig;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebViewFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    iget v0, p0, Lcom/intlgame/webview/WebViewActivity;->mBgColor:I

    invoke-virtual {p1, v0}, Lcom/intlgame/webview/WebViewProxy;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->initLoadingView()V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    new-instance v0, Lcom/intlgame/webview/WebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/intlgame/webview/WebViewActivity$1;-><init>(Lcom/intlgame/webview/WebViewActivity;)V

    invoke-virtual {p1, v0}, Lcom/intlgame/webview/WebViewProxy;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    new-instance v0, Lcom/intlgame/webview/WebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/intlgame/webview/WebViewActivity$2;-><init>(Lcom/intlgame/webview/WebViewActivity;)V

    invoke-virtual {p1, v0}, Lcom/intlgame/webview/WebViewProxy;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->initWebView()V

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->loadUrl()V

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->initLayout()V

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->checkToolbarStatus()V

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->checkBackForwardBtnState()V

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->initAnimation()V

    iget-boolean p1, p0, Lcom/intlgame/webview/WebViewActivity;->isFullScreen:Z

    invoke-virtual {p0, p1}, Lcom/intlgame/webview/WebViewActivity;->setFullScreen(Z)V

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "handler-thread-activity"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/intlgame/webview/WebViewActivity$MsgHandler;-><init>(Lcom/intlgame/webview/WebViewActivity;Landroid/os/Looper;)V

    invoke-static {}, Lcom/intlgame/webview/JsProcessor;->getInstance()Lcom/intlgame/webview/JsProcessor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/intlgame/webview/JsProcessor;->init(Landroid/os/Handler;)V

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intlgame/webview/WebViewActivity;->mIsWebViewInstanced:Z

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/intlgame/webview/ipc/WebViewLogger;->e(Ljava/lang/String;)V

    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lcom/intlgame/webview/WebViewActivity;->sendMessageToObserver(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    const-string v1, "END"

    invoke-interface {v0, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/intlgame/webview/WebViewActivity;->mIsWebViewInstanced:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/intlgame/webview/WebViewActivity;->sendMessageToObserver(ILjava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/intlgame/webview/JsProcessor;->getInstance()Lcom/intlgame/webview/JsProcessor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/intlgame/webview/JsProcessor;->init(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->removeAllViews()V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mMoreDlg:Landroid/app/Dialog;

    :cond_3
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mDownloadDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mDownloadDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/intlgame/webview/WebViewActivity;->mDownloadDlg:Landroid/app/Dialog;

    :cond_4
    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->deleteWxGamelinePicture()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    const-string v1, "onNewIntent invoked"

    invoke-interface {v0, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/intlgame/webview/WebViewActivity;->handleIntent(Landroid/content/Intent;)V

    iget-boolean p1, p0, Lcom/intlgame/webview/WebViewActivity;->reloadUrlOnNewIntent:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->loadUrl()V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/intlgame/webview/WebViewActivity;->reloadUrlOnNewIntent:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->onPause()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/intlgame/webview/WebViewActivity$16;

    invoke-direct {p2, p0}, Lcom/intlgame/webview/WebViewActivity$16;-><init>(Lcom/intlgame/webview/WebViewActivity;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const-string p1, "need external storage permission"

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->onResume()V

    :cond_0
    return-void
.end method

.method protected abstract sendMessageToObserver(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setFullScreen(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity;->mToolBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->checkToolbarStatus()V

    :goto_0
    iput-boolean p1, p0, Lcom/intlgame/webview/WebViewActivity;->isFullScreen:Z

    return-void
.end method

.method public verifyStoragePermissions(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/intlgame/webview/WebViewActivity;->getPermissionResult(Landroid/app/Activity;)I

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/intlgame/webview/WebViewActivity;->PERMISSIONS_STORAGE_ANDROID_TIRAMISU:[Ljava/lang/String;

    invoke-static {p1, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/intlgame/webview/WebViewActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {p1, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;->saveToAlbum()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected abstract webViewConfig()Lcom/intlgame/webview/ipc/WebViewConfig;
.end method
