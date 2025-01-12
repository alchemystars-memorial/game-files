.class public Lcom/intlgame/view/ToolBarWebView;
.super Ljava/lang/Object;
.source "ToolBarWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/view/ToolBarWebView$ComponentCallback;,
        Lcom/intlgame/view/ToolBarWebView$WebViewXClient;,
        Lcom/intlgame/view/ToolBarWebView$ToolBarListener;
    }
.end annotation


# static fields
.field private static final REQUESTCODE_FILECHOOSER:I = 0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackBtn:Landroid/widget/ImageButton;

.field private mBackUnclickableBtn:Landroid/widget/ImageButton;

.field private mComponentCallback:Lcom/intlgame/view/ToolBarWebView$ComponentCallback;

.field private mContainer:Landroid/widget/FrameLayout;

.field private mCustomView:Landroid/view/View;

.field private mForwardBtn:Landroid/widget/ImageButton;

.field private mForwardUnclickableBtn:Landroid/widget/ImageButton;

.field private mRefreshBtn:Landroid/widget/ImageButton;

.field private mReturnAppBtn:Landroid/widget/ImageButton;

.field private mShareChannels:Ljava/lang/String;

.field private mShareView:Lcom/intlgame/view/ShareView;

.field private mStopBtn:Landroid/widget/ImageButton;

.field private mToolBarListener:Lcom/intlgame/view/ToolBarWebView$ToolBarListener;

.field private mToolBarView:Lcom/intlgame/view/ToolBarAmin;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebTitle:Landroid/widget/TextView;

.field private mWebView:Lcom/intlgame/webview/WebViewProxy;

.field protected mWebViewFrameLayout:Landroid/widget/FrameLayout;

.field private mWindow:Landroid/view/Window;

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

.field private webViewDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    const-string v1, ""

    iput-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->mShareChannels:Ljava/lang/String;

    new-instance v1, Lcom/intlgame/view/ToolBarWebView$4;

    invoke-direct {v1, p0}, Lcom/intlgame/view/ToolBarWebView$4;-><init>(Lcom/intlgame/view/ToolBarWebView;)V

    iput-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    new-instance v1, Lcom/intlgame/view/ToolBarWebView$ComponentCallback;

    invoke-direct {v1, p0, v0}, Lcom/intlgame/view/ToolBarWebView$ComponentCallback;-><init>(Lcom/intlgame/view/ToolBarWebView;Lcom/intlgame/view/ToolBarWebView$1;)V

    iput-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->mComponentCallback:Lcom/intlgame/view/ToolBarWebView$ComponentCallback;

    iput-object p2, p0, Lcom/intlgame/view/ToolBarWebView;->mShareChannels:Ljava/lang/String;

    const-string p2, "ToolBar WebView start"

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mWindow:Landroid/view/Window;

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewResID;->init(Landroid/content/Context;)V

    sget p1, Lcom/intlgame/webview/WebViewResID;->layout_webview_activity:I

    if-nez p1, :cond_0

    const-string p1, "WebViewResID.layout_webview_activity == 0x00"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/intlgame/view/ToolBarWebView;->initView()V

    invoke-direct {p0}, Lcom/intlgame/view/ToolBarWebView;->initEvent()V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebViewSetting;->initWebViewSetting(Landroid/webkit/WebView;)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    iget-object p2, p0, Lcom/intlgame/view/ToolBarWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, p2}, Lcom/intlgame/webview/WebViewProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    new-instance p2, Lcom/intlgame/view/ToolBarWebView$WebViewXClient;

    invoke-direct {p2, p0}, Lcom/intlgame/view/ToolBarWebView$WebViewXClient;-><init>(Lcom/intlgame/view/ToolBarWebView;)V

    invoke-virtual {p1, p2}, Lcom/intlgame/webview/WebViewProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mToolBarView:Lcom/intlgame/view/ToolBarAmin;

    invoke-virtual {p1, p3}, Lcom/intlgame/view/ToolBarAmin;->setTitleBarHideable(Z)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mToolBarView:Lcom/intlgame/view/ToolBarAmin;

    invoke-virtual {p1, p3}, Lcom/intlgame/view/ToolBarAmin;->setToolBarPortraitHideable(Z)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mToolBarView:Lcom/intlgame/view/ToolBarAmin;

    invoke-virtual {p1, p4}, Lcom/intlgame/view/ToolBarAmin;->setToolBarLandscapeHideable(Z)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    iget-object p2, p0, Lcom/intlgame/view/ToolBarWebView;->mComponentCallback:Lcom/intlgame/view/ToolBarWebView$ComponentCallback;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/view/ToolBarWebView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarWebView;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$002(Lcom/intlgame/view/ToolBarWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/intlgame/view/ToolBarWebView;)Landroid/webkit/WebChromeClient;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/intlgame/view/ToolBarWebView;)Landroid/view/Window;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarWebView;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/intlgame/view/ToolBarWebView;)Lcom/intlgame/view/ToolBarAmin;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarWebView;->mToolBarView:Lcom/intlgame/view/ToolBarAmin;

    return-object p0
.end method

.method static synthetic access$200(Lcom/intlgame/view/ToolBarWebView;)Lcom/intlgame/view/ToolBarWebView$ToolBarListener;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarWebView;->mToolBarListener:Lcom/intlgame/view/ToolBarWebView$ToolBarListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/intlgame/view/ToolBarWebView;)Lcom/intlgame/webview/WebViewProxy;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    return-object p0
.end method

.method static synthetic access$400(Lcom/intlgame/view/ToolBarWebView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/intlgame/view/ToolBarWebView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/intlgame/view/ToolBarWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/view/ToolBarWebView;->checkBackForwardBtnState()V

    return-void
.end method

.method static synthetic access$700(Lcom/intlgame/view/ToolBarWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/view/ToolBarWebView;->refreshUIAfterStop()V

    return-void
.end method

.method static synthetic access$800(Lcom/intlgame/view/ToolBarWebView;)Landroid/webkit/ValueCallback;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarWebView;->uploadFileArray:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$802(Lcom/intlgame/view/ToolBarWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    iput-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->uploadFileArray:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$900(Lcom/intlgame/view/ToolBarWebView;)Landroid/webkit/ValueCallback;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/view/ToolBarWebView;->uploadFile:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$902(Lcom/intlgame/view/ToolBarWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    iput-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->uploadFile:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method private checkBackForwardBtnState()V
    .locals 3

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->canGoForward()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private initEvent()V
    .locals 2

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mReturnAppBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mShareView:Lcom/intlgame/view/ShareView;

    iget-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->mToolBarListener:Lcom/intlgame/view/ToolBarWebView$ToolBarListener;

    invoke-virtual {v0, v1}, Lcom/intlgame/view/ShareView;->setShareListener(Lcom/intlgame/view/ShareView$ShareListener;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    new-instance v1, Lcom/intlgame/view/ToolBarWebView$3;

    invoke-direct {v1, p0}, Lcom/intlgame/view/ToolBarWebView$3;-><init>(Lcom/intlgame/view/ToolBarWebView;)V

    invoke-virtual {v0, v1}, Lcom/intlgame/webview/WebViewProxy;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 4

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/intlgame/webview/WebViewResID;->layout_webview_activity:I

    iget-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v1, Lcom/intlgame/webview/WebViewResID;->webViewFrameLayout:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebViewFrameLayout:Landroid/widget/FrameLayout;

    :try_start_0
    new-instance v0, Lcom/intlgame/webview/WebViewProxy;

    iget-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/intlgame/webview/WebViewProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebViewFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mWebViewFrameLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0, v1}, Lcom/intlgame/webview/WebViewProxy;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v1, Lcom/intlgame/webview/WebViewResID;->webTitle:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v1, Lcom/intlgame/webview/WebViewResID;->titleBar:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v2, Lcom/intlgame/webview/WebViewResID;->toolbar:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/intlgame/webview/WebViewResID;->refresh:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mRefreshBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/intlgame/webview/WebViewResID;->stop:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mStopBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/intlgame/webview/WebViewResID;->back:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mBackBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/intlgame/webview/WebViewResID;->backUnclickable:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mBackUnclickableBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/intlgame/webview/WebViewResID;->forward:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mForwardBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/intlgame/webview/WebViewResID;->forwardUnclickable:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mForwardUnclickableBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/intlgame/webview/WebViewResID;->return_app:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mReturnAppBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/intlgame/view/ToolBarAmin;

    iget-object v3, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-direct {v2, v0, v1, v3}, Lcom/intlgame/view/ToolBarAmin;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/webkit/WebView;)V

    iput-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mToolBarView:Lcom/intlgame/view/ToolBarAmin;

    new-instance v0, Lcom/intlgame/view/ShareView;

    iget-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mShareChannels:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/intlgame/view/ShareView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mShareView:Lcom/intlgame/view/ShareView;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->getInstance()Lcom/intlgame/webview/ipc/IPCWebViewPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->e(Ljava/lang/String;)V

    const/16 v1, 0x18

    invoke-direct {p0, v1, v0}, Lcom/intlgame/view/ToolBarWebView;->sendMessageToObserver(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private refreshUIAfterStop()V
    .locals 2

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mRefreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mRefreshBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private sendMessageToObserver(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->getInstance()Lcom/intlgame/webview/ipc/IPCWebViewPresenter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", parasJsonMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->i(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/intlgame/webview/ipc/WebViewIPCActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ipc_webview_msg_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ipc_webview_msg"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setConfigCallback(Landroid/view/WindowManager;)V
    .locals 4

    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "mWebViewCore"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mBrowserFrame"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sConfigCallback"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mWindowManager"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/intlgame/view/ToolBarWebView;->setConfigCallback(Landroid/view/WindowManager;)V

    iget-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v1}, Lcom/intlgame/webview/WebViewProxy;->clearHistory()V

    iget-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v1}, Lcom/intlgame/webview/WebViewProxy;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v1}, Lcom/intlgame/webview/WebViewProxy;->stopLoading()V

    iget-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v1}, Lcom/intlgame/webview/WebViewProxy;->destroy()V

    iget-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iput-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mToolBarListener:Lcom/intlgame/view/ToolBarWebView$ToolBarListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/intlgame/view/ToolBarWebView$ToolBarListener;->onClose()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->mComponentCallback:Lcom/intlgame/view/ToolBarWebView$ComponentCallback;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewImagePath()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/intlgame/webview/WebViewProxy;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    const-string v3, "webview_capture"

    const-string v4, "capture"

    invoke-static {v2, v0, v3, v4, v1}, Lcom/intlgame/tools/IT;->saveBitmapToLocal(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/intlgame/webview/WebViewProxy;->setDrawingCacheEnabled(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the path of capture image : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-object v1
.end method

.method public goBack()V
    .locals 1

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->goBack()V

    goto :goto_0

    :cond_0
    const-string v0, "There is no back page"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public goForward()V
    .locals 1

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->goForward()V

    goto :goto_0

    :cond_0
    const-string v0, "There is no forward page"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isShown()Z
    .locals 1

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "url should not empty"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebView load url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0, p1}, Lcom/intlgame/webview/WebViewProxy;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewActivity onActivityResult, requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->uploadFileArray:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    new-array p1, p2, [Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    aput-object p3, p1, p2

    :goto_0
    iget-object p2, p0, Lcom/intlgame/view/ToolBarWebView;->uploadFileArray:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->uploadFileArray:Landroid/webkit/ValueCallback;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->uploadFile:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_6

    if-nez p3, :cond_3

    move-object p1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    :goto_1
    iget-object p2, p0, Lcom/intlgame/view/ToolBarWebView;->uploadFile:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->uploadFile:Landroid/webkit/ValueCallback;

    goto :goto_2

    :cond_4
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->uploadFileArray:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_5

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->uploadFileArray:Landroid/webkit/ValueCallback;

    :cond_5
    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->uploadFile:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_6

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->uploadFile:Landroid/webkit/ValueCallback;

    :cond_6
    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/intlgame/webview/WebViewResID;->back:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/intlgame/view/ToolBarWebView;->goBack()V

    goto :goto_0

    :cond_1
    sget v0, Lcom/intlgame/webview/WebViewResID;->forward:I

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/intlgame/view/ToolBarWebView;->goForward()V

    goto :goto_0

    :cond_2
    sget v0, Lcom/intlgame/webview/WebViewResID;->refresh:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewProxy;->reload()V

    goto :goto_0

    :cond_3
    sget v0, Lcom/intlgame/webview/WebViewResID;->stop:I

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewProxy;->stopLoading()V

    goto :goto_0

    :cond_4
    sget v0, Lcom/intlgame/webview/WebViewResID;->return_app:I

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/intlgame/view/ToolBarWebView;->close()V

    goto :goto_0

    :cond_5
    sget v0, Lcom/intlgame/webview/WebViewResID;->more:I

    if-eq p1, v0, :cond_6

    sget v0, Lcom/intlgame/webview/WebViewResID;->land_more:I

    if-ne p1, v0, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mShareView:Lcom/intlgame/view/ShareView;

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/intlgame/view/ShareView;->show(Landroid/widget/FrameLayout;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->onResume()V

    return-void
.end method

.method public setFullscreen(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set fullscreen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    const-string p1, "fullscreen failed"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x400

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewCommonUtil;->isSystemFullScreenSupport(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mWindow:Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewCommonUtil;->isSystemFullScreenSupport(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mWindow:Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setToolBarEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mToolBarView:Lcom/intlgame/view/ToolBarAmin;

    invoke-virtual {v0, p1}, Lcom/intlgame/view/ToolBarAmin;->setToolBarEnable(Z)V

    return-void
.end method

.method public setToolBarListener(Lcom/intlgame/view/ToolBarWebView$ToolBarListener;)V
    .locals 1

    iput-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mToolBarListener:Lcom/intlgame/view/ToolBarWebView$ToolBarListener;

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mShareView:Lcom/intlgame/view/ShareView;

    invoke-virtual {v0, p1}, Lcom/intlgame/view/ShareView;->setShareListener(Lcom/intlgame/view/ShareView$ShareListener;)V

    return-void
.end method

.method public setWebViewBackground(Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/intlgame/webview/WebViewProxy;->setBackgroundColor(I)V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/intlgame/webview/WebViewProxy;->setBackgroundColor(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-lt p1, v1, :cond_1

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {p1, v2}, Lcom/intlgame/webview/WebViewProxy;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "mBitmapDrawable isnot null, set background"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {p1, v0}, Lcom/intlgame/webview/WebViewProxy;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {p1, v2}, Lcom/intlgame/webview/WebViewProxy;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {p1, v0}, Lcom/intlgame/webview/WebViewProxy;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public showWithActivity(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show ToolBarWebView with Activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intlgame/view/ToolBarWebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "already shown"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    const-string p1, "can not find content: android.R.id.content"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const-string p1, "Tool Bar WebView already has parent!"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showWithDialog(ZZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show with dialog\uff1acanPressedBack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isFullscreen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intlgame/view/ToolBarWebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "already shown"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    if-nez v0, :cond_3

    const v0, 0x1030010

    if-eqz p2, :cond_1

    const v0, 0x1030011

    :cond_1
    new-instance v1, Lcom/intlgame/view/ToolBarWebView$1;

    iget-object v2, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2, v0, p2}, Lcom/intlgame/view/ToolBarWebView$1;-><init>(Lcom/intlgame/view/ToolBarWebView;Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/intlgame/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_2
    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p2}, Lcom/intlgame/view/ToolBarWebView;->setFullscreen(Z)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    new-instance p2, Lcom/intlgame/view/ToolBarWebView$2;

    invoke-direct {p2, p0}, Lcom/intlgame/view/ToolBarWebView$2;-><init>(Lcom/intlgame/view/ToolBarWebView;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_3
    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Dialog show"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView;->webViewDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_4
    return-void
.end method
