.class public Lnet/aihelp/ui/webkit/AIHelpWebView;
.super Landroid/webkit/WebView;
.source "AIHelpWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->configureWebView()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->configureWebView()V

    :cond_0
    return-void
.end method

.method private configureWebView()V
    .locals 6

    invoke-virtual {p0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    sget-object v4, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Rong/2.0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const-wide/32 v4, 0x800000

    invoke-virtual {v0, v4, v5}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object v2

    invoke-virtual {v2}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    return-void
.end method
