.class public abstract Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "DmmOlgIdBaseWebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$DmmWebChromeClient;,
        Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$DmmWebViewClient;
    }
.end annotation


# static fields
.field private static final AUTH_URL_FORMAT_ADULT:Ljava/lang/String; = "https://www.dmm.co.jp/my/-/through/?path=%s"

.field private static final AUTH_URL_FORMAT_GENERAL:Ljava/lang/String; = "https://www.dmm.com/my/-/through/?path=%s"

.field private static final HOST_ADULT_SUFFIX:Ljava/lang/String; = "dmm.co.jp"

.field private static final HOST_GENERAL_SUFFIX:Ljava/lang/String; = "dmm.com"

.field public static final URL_LEGAL_COMMERCE_COM:Ljava/lang/String; = "http://sp.dmm.com/netgame/legalcommerce/index/app_id/"

.field public static final URL_LEGAL_COMMERCE_CO_JP:Ljava/lang/String; = "http://sp.dmm.co.jp/netgame/legalcommerce/index/app_id/"

.field public static final URL_ONLINEGAME_SERVICE:Ljava/lang/String; = "http://sp.dmm.com/rule/index/category/onlinegame_service"

.field public static final URL_PRIVACY:Ljava/lang/String; = "http://sp.dmm.com/rule/index/category/privacy"

.field public static final URL_SUPPORT:Ljava/lang/String; = "http://sp.dmm.com/help/support"


# instance fields
.field private javascriptInterface:Lcom/dmm/android/js/DmmJavascriptInterface;

.field protected mParent:Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/dmm/android/js/DmmJavascriptInterface;

    invoke-direct {v0}, Lcom/dmm/android/js/DmmJavascriptInterface;-><init>()V

    iput-object v0, p0, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->javascriptInterface:Lcom/dmm/android/js/DmmJavascriptInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->getCustomHeader()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private convertUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->isSandbox()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->getAuthUrlFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_2
    :goto_0
    return-object p1
.end method

.method private static getAuthUrlFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    const-string v1, "dmm.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "https://www.dmm.com/my/-/through/?path=%s"

    return-object p0

    :cond_3
    const-string v1, "dmm.co.jp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "https://www.dmm.co.jp/my/-/through/?path=%s"

    return-object p0

    :cond_4
    return-object v0
.end method

.method private getCustomHeader()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMMOLGIDSDK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "3.3.3"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Android"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dmm/android/util/Log;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OLGID_SDK_NATIVE_APP_TYPE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SMARTPHONE_APP"

    const-string v2, "DMM-APP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected abstract getUrl()Ljava/lang/String;
.end method

.method protected getUserAgentString(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->isEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PC BlueStacks Emulator for DMM GAME PLAYER; OS : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected loadUrl(Landroid/webkit/WebView;)V
    .locals 3

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->convertUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dmm/android/util/Log;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->getCustomHeader()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected abstract onCloseCommand(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    sget p3, Lcom/dmm/android/sdk/olgid/R$layout;->dmm_olgid_sdk_fragment_webview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    sget p2, Lcom/dmm/android/sdk/olgid/R$id;->dmm_olgid_sdk_webview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    new-instance p3, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$DmmWebViewClient;

    invoke-direct {p3, p0}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$DmmWebViewClient;-><init>(Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;)V

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p3, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$DmmWebChromeClient;

    invoke-direct {p3, p0}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$DmmWebChromeClient;-><init>(Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;)V

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p3, p0, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->javascriptInterface:Lcom/dmm/android/js/DmmJavascriptInterface;

    const-string v0, "dmm"

    invoke-virtual {p2, p3, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->javascriptInterface:Lcom/dmm/android/js/DmmJavascriptInterface;

    invoke-virtual {p3}, Lcom/dmm/android/js/DmmJavascriptInterface;->getCommandMap()Ljava/util/Map;

    move-result-object p3

    new-instance v0, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$1;

    invoke-direct {v0, p0}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$1;-><init>(Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;)V

    const-string v1, "close"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->javascriptInterface:Lcom/dmm/android/js/DmmJavascriptInterface;

    invoke-virtual {p3}, Lcom/dmm/android/js/DmmJavascriptInterface;->getCommandMap()Ljava/util/Map;

    move-result-object p3

    new-instance v0, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2;

    invoke-direct {v0, p0}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment$2;-><init>(Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;)V

    const-string v1, "error"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->setCookieAuthInfo()V

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->getUserAgentString(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->loadUrl(Landroid/webkit/WebView;)V

    return-object p1
.end method

.method protected onErrorCommand(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected setCookieAuthInfo()V
    .locals 4

    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->isSandbox()Z

    move-result v2

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getUniqueID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getSecureID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/dmm/android/sdk/olgid/net/cookie/DmmOlgIdCookieUtil;->setCookie(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setParent(Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/sdk/olgid/app/fragment/DmmOlgIdBaseWebViewFragment;->mParent:Lcom/dmm/android/sdk/olgid/app/DmmOlgIdBaseFragmentActivity;

    return-void
.end method
