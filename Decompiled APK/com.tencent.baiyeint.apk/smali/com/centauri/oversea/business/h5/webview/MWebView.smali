.class public Lcom/centauri/oversea/business/h5/webview/MWebView;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/business/h5/webview/MWebView$f;,
        Lcom/centauri/oversea/business/h5/webview/MWebView$g;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ln/a;

.field public c:Lcom/centauri/oversea/business/h5/webview/MWebView$f;

.field public d:Lcom/centauri/oversea/business/h5/webview/MWebView$g;

.field public e:Landroid/os/Handler;

.field public f:Z

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Lcom/centauri/oversea/business/h5/webview/MWebView$d;

.field public j:Lcom/centauri/oversea/business/h5/webview/MWebView$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->b:Ln/a;

    iput-object v1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->c:Lcom/centauri/oversea/business/h5/webview/MWebView$f;

    iput-object v1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->d:Lcom/centauri/oversea/business/h5/webview/MWebView$g;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->f:Z

    iput v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->h:Ljava/lang/String;

    new-instance v0, Lcom/centauri/oversea/business/h5/webview/MWebView$d;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/h5/webview/MWebView$d;-><init>(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->i:Lcom/centauri/oversea/business/h5/webview/MWebView$d;

    new-instance v0, Lcom/centauri/oversea/business/h5/webview/MWebView$e;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/h5/webview/MWebView$e;-><init>(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->j:Lcom/centauri/oversea/business/h5/webview/MWebView$e;

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->b:Ln/a;

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->c:Lcom/centauri/oversea/business/h5/webview/MWebView$f;

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->d:Lcom/centauri/oversea/business/h5/webview/MWebView$g;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->e:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->f:Z

    iput p2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->g:I

    const-string p2, ""

    iput-object p2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->h:Ljava/lang/String;

    new-instance p2, Lcom/centauri/oversea/business/h5/webview/MWebView$d;

    invoke-direct {p2, p0}, Lcom/centauri/oversea/business/h5/webview/MWebView$d;-><init>(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    iput-object p2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->i:Lcom/centauri/oversea/business/h5/webview/MWebView$d;

    new-instance p2, Lcom/centauri/oversea/business/h5/webview/MWebView$e;

    invoke-direct {p2, p0}, Lcom/centauri/oversea/business/h5/webview/MWebView$e;-><init>(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    iput-object p2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->j:Lcom/centauri/oversea/business/h5/webview/MWebView$e;

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/centauri/oversea/business/h5/webview/MWebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/centauri/oversea/business/h5/webview/MWebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic c(Lcom/centauri/oversea/business/h5/webview/MWebView;)V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public static d(Lcom/centauri/oversea/business/h5/webview/MWebView;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lp/n$a;->a:Lp/n;

    new-instance v0, Lb/a;

    invoke-direct {v0}, Lb/a;-><init>()V

    invoke-virtual {p0, v0}, Lp/n;->b(Lg/s;)V

    return-void
.end method

.method private setCacheTime(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    const-string v1, "cachetime"

    invoke-static {p1, v1, v0}, Lo/e;->c(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCacheTime:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MWebView"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e(Landroid/content/Context;)V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->f:Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "cachetime"

    invoke-static {p1, v3}, Lo/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUseCache CacheTime lastTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MWebView"

    invoke-static {v4, v3}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v3, v5

    sub-int/2addr v3, p1

    const/16 p1, 0xe10

    if-gt v3, p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_2

    iput v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->g:I

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_2

    :cond_2
    iput v2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->g:I

    const/4 p1, -0x1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->setCacheTime(Landroid/content/Context;)V

    :goto_2
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->j:Lcom/centauri/oversea/business/h5/webview/MWebView$e;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->i:Lcom/centauri/oversea/business/h5/webview/MWebView$d;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p1, v3, :cond_3

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/g;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x13

    if-lt p1, v1, :cond_4

    const-string p1, "!!!WebContentsDebuggingEnabled == true  in debug mode"

    invoke-static {v4, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_4
    :try_start_0
    const-string p1, "searchBoxJavaBridge_"

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p1, "accessibility"

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p1, "accessibilityTraversal"

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/centauri/oversea/business/h5/webview/MWebView$a;

    invoke-direct {v0, p0, p1}, Lcom/centauri/oversea/business/h5/webview/MWebView$a;-><init>(Lcom/centauri/oversea/business/h5/webview/MWebView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/centauri/oversea/business/h5/webview/MWebView$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/centauri/oversea/business/h5/webview/MWebView$b;-><init>(Lcom/centauri/oversea/business/h5/webview/MWebView;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reload()V
    .locals 1

    new-instance v0, Lcom/centauri/oversea/business/h5/webview/MWebView$c;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/h5/webview/MWebView$c;-><init>(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    invoke-virtual {p0, v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIntercept(Ln/a;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->a:Z

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->b:Ln/a;

    return-void
.end method

.method public setInterceptFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->a:Z

    return-void
.end method

.method public setPayChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->h:Ljava/lang/String;

    return-void
.end method

.method public setWebChromeClientListener(Lcom/centauri/oversea/business/h5/webview/MWebView$f;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->c:Lcom/centauri/oversea/business/h5/webview/MWebView$f;

    return-void
.end method

.method public setWebViewClientListener(Lcom/centauri/oversea/business/h5/webview/MWebView$g;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView;->d:Lcom/centauri/oversea/business/h5/webview/MWebView$g;

    return-void
.end method
