.class public Lcom/intlgame/wrapper/TwitterWebActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TwitterWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/wrapper/TwitterWebActivity$TwitterJavascript;,
        Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebChrome;,
        Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebClient;
    }
.end annotation


# static fields
.field private static final SWITCH_APP_ERROR_KEEP_TIME:J = 0x384L

.field private static final SWITCH_APP_ERROR_WHAT:I = 0x1


# instance fields
.field private ID_BACK_NAME:Ljava/lang/String;

.field private ID_CLOSE_NAME:Ljava/lang/String;

.field private ID_LAYOUT_NAME:Ljava/lang/String;

.field private ID_PROGRESS_NAME:Ljava/lang/String;

.field private ID_TITLE_NAME:Ljava/lang/String;

.field private ID_WEBVIEW_LAYOUT_NAME:Ljava/lang/String;

.field private ID_WEBVIEW_NAME:Ljava/lang/String;

.field private mBtnBack:Landroid/view/View;

.field private mBtnClose:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSwitchAppHandle:Landroid/os/Handler;

.field private mTvTitle:Landroid/widget/TextView;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "activity_twitter_web"

    iput-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->ID_LAYOUT_NAME:Ljava/lang/String;

    const-string v0, "twitter_web_view"

    iput-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->ID_WEBVIEW_NAME:Ljava/lang/String;

    const-string v0, "twitter_web_view_layout"

    iput-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->ID_WEBVIEW_LAYOUT_NAME:Ljava/lang/String;

    const-string v0, "twitter_btn_close"

    iput-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->ID_CLOSE_NAME:Ljava/lang/String;

    const-string v0, "twitter_btn_back"

    iput-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->ID_BACK_NAME:Ljava/lang/String;

    const-string v0, "twitter_tv_title"

    iput-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->ID_TITLE_NAME:Ljava/lang/String;

    const-string v0, "twitter_bar_progress"

    iput-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->ID_PROGRESS_NAME:Ljava/lang/String;

    new-instance v0, Lcom/intlgame/wrapper/TwitterWebActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/intlgame/wrapper/TwitterWebActivity$1;-><init>(Lcom/intlgame/wrapper/TwitterWebActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mSwitchAppHandle:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/wrapper/TwitterWebActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mSwitchAppHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/intlgame/wrapper/TwitterWebActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mTvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/intlgame/wrapper/TwitterWebActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mBtnBack:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/intlgame/wrapper/TwitterWebActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/intlgame/wrapper/TwitterWebActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method private setWebSetting(Landroid/webkit/WebSettings;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    return-void
.end method


# virtual methods
.method public getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "msg"

    const-string v2, "user click back"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/intlgame/wrapper/TwitterWebActivity;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->ID_LAYOUT_NAME:Ljava/lang/String;

    const-string v0, "layout"

    invoke-virtual {p0, p0, v0, p1}, Lcom/intlgame/wrapper/TwitterWebActivity;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/intlgame/wrapper/TwitterWebActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/intlgame/wrapper/TwitterWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/intlgame/wrapper/TwitterWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/intlgame/wrapper/TwitterWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/intlgame/wrapper/TwitterWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->ID_WEBVIEW_LAYOUT_NAME:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p0, p0, v1, v0}, Lcom/intlgame/wrapper/TwitterWebActivity;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/intlgame/wrapper/TwitterWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mWebViewLayout:Landroid/widget/FrameLayout;

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mWebView:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mWebViewLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/intlgame/wrapper/TwitterWebActivity;->setWebSetting(Landroid/webkit/WebSettings;)V

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->ID_TITLE_NAME:Ljava/lang/String;

    invoke-virtual {p0, p0, v1, v0}, Lcom/intlgame/wrapper/TwitterWebActivity;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/intlgame/wrapper/TwitterWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mTvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->ID_BACK_NAME:Ljava/lang/String;

    invoke-virtual {p0, p0, v1, v0}, Lcom/intlgame/wrapper/TwitterWebActivity;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/intlgame/wrapper/TwitterWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mBtnBack:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mBtnBack:Landroid/view/View;

    new-instance v2, Lcom/intlgame/wrapper/TwitterWebActivity$2;

    invoke-direct {v2, p0}, Lcom/intlgame/wrapper/TwitterWebActivity$2;-><init>(Lcom/intlgame/wrapper/TwitterWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebClient;-><init>(Lcom/intlgame/wrapper/TwitterWebActivity;Lcom/intlgame/wrapper/TwitterWebActivity$1;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->ID_PROGRESS_NAME:Ljava/lang/String;

    invoke-virtual {p0, p0, v1, v0}, Lcom/intlgame/wrapper/TwitterWebActivity;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/intlgame/wrapper/TwitterWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebChrome;

    invoke-direct {v2, p0, v3}, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebChrome;-><init>(Lcom/intlgame/wrapper/TwitterWebActivity;Lcom/intlgame/wrapper/TwitterWebActivity$1;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->ID_CLOSE_NAME:Ljava/lang/String;

    invoke-virtual {p0, p0, v1, v0}, Lcom/intlgame/wrapper/TwitterWebActivity;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/intlgame/wrapper/TwitterWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mBtnClose:Landroid/view/View;

    new-instance v1, Lcom/intlgame/wrapper/TwitterWebActivity$3;

    invoke-direct {v1, p0}, Lcom/intlgame/wrapper/TwitterWebActivity$3;-><init>(Lcom/intlgame/wrapper/TwitterWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/intlgame/wrapper/TwitterWebActivity$4;

    invoke-direct {v1, p0}, Lcom/intlgame/wrapper/TwitterWebActivity$4;-><init>(Lcom/intlgame/wrapper/TwitterWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x5dd

    invoke-virtual {p0, v1, v0}, Lcom/intlgame/wrapper/TwitterWebActivity;->setResult(ILandroid/content/Intent;)V

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/intlgame/wrapper/TwitterWebActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mSwitchAppHandle:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mSwitchAppHandle:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method
