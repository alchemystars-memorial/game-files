.class public final Lcom/dmm/android/lib/auth/view/AuthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AuthWebViewClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/view/AuthWebViewClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 +2\u00020\u0001:\u0001+B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u001a\u0010\u0014\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000e\u001a\u00020\rH\u0002J*\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\rH\u0002J\u001c\u0010\u001d\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J&\u0010\u001e\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J&\u0010!\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0017J.\u0010!\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\r2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\rH\u0016J&\u0010&\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010$\u001a\u0004\u0018\u00010)H\u0016J\u001c\u0010*\u001a\u00020\n2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0017J\u001c\u0010*\u001a\u00020\n2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/view/AuthWebViewClient;",
        "Landroid/webkit/WebViewClient;",
        "context",
        "Landroid/content/Context;",
        "config",
        "Lcom/dmm/android/lib/auth/Config;",
        "webViewListener",
        "Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;",
        "(Landroid/content/Context;Lcom/dmm/android/lib/auth/Config;Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;)V",
        "errorFlag",
        "",
        "hasSent",
        "getAuthCodeFromURL",
        "",
        "url",
        "handleLoginRegisterUrl",
        "webView",
        "Lcom/dmm/android/lib/auth/view/AuthWebView;",
        "urlViewType",
        "Lcom/dmm/android/lib/auth/AuthenticationType;",
        "handleUrl",
        "Landroid/webkit/WebView;",
        "hideErrorPage",
        "",
        "view",
        "errorCode",
        "",
        "description",
        "failingUrl",
        "onPageFinished",
        "onPageStarted",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "onReceivedError",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "error",
        "Landroid/webkit/WebResourceError;",
        "onReceivedSslError",
        "handler",
        "Landroid/webkit/SslErrorHandler;",
        "Landroid/net/http/SslError;",
        "shouldOverrideUrlLoading",
        "Companion",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final AUTH_CODE_KEY:Ljava/lang/String; = "code"

.field public static final Companion:Lcom/dmm/android/lib/auth/view/AuthWebViewClient$Companion;

.field private static final LOGIN_URL_PATTERN:Ljava/lang/String; = "^(https?)://(dev-|stg-)*accounts\\.dmm\\.(com|co\\.jp)/app/service/login/password(=/.*|\\?.*|$)$"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final REGISTER_URL_PATTERN:Ljava/lang/String; = "^(https?)://(dev-|stg-)*accounts\\.dmm\\.(com|co\\.jp)/app/welcome/signup/email(=/.*|\\?.*|$)$"

.field private static final SNS_LINK_LIST_PATTERN:Ljava/lang/String; = "^(https?)://.+\\.dmm\\.(com|co\\.jp)/my/-/social-login/link-list/*$"

.field private static final SNS_REDIRECT_PATTERN:Ljava/lang/String; = "^(https?)://.+\\.dmm\\.(com|co\\.jp)/service/login/oauth/app-redirect.*$"


# instance fields
.field private final config:Lcom/dmm/android/lib/auth/Config;

.field private final context:Landroid/content/Context;

.field private errorFlag:Z

.field private hasSent:Z

.field private final webViewListener:Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/view/AuthWebViewClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->Companion:Lcom/dmm/android/lib/auth/view/AuthWebViewClient$Companion;

    const-string v0, "AuthWebViewClient"

    const-string v1, "AuthWebViewClient::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dmm/android/lib/auth/Config;Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->config:Lcom/dmm/android/lib/auth/Config;

    iput-object p3, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->webViewListener:Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/dmm/android/lib/auth/Config;Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    move-object p4, p3

    check-cast p4, Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;-><init>(Landroid/content/Context;Lcom/dmm/android/lib/auth/Config;Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;)V

    return-void
.end method

.method private final getAuthCodeFromURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final handleLoginRegisterUrl(Lcom/dmm/android/lib/auth/view/AuthWebView;Lcom/dmm/android/lib/auth/AuthenticationType;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getViewType()Lcom/dmm/android/lib/auth/AuthenticationType;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/view/AuthWebView;->stopLoading()V

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/view/AuthWebView;->clearHistory()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->clearCache(Z)V

    sget-object v1, Lcom/dmm/android/lib/auth/view/AuthWebViewClient$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/dmm/android/lib/auth/AuthenticationType;->ordinal()I

    move-result p2

    aget p2, v1, p2

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/view/AuthWebView;->isGeneral()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/dmm/android/lib/auth/view/AuthWebView;->loadRegister(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/view/AuthWebView;->isGeneral()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/dmm/android/lib/auth/view/AuthWebView;->loadLogin(Z)V

    :goto_0
    return v0
.end method

.method private final handleUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    sget-object v0, Lcom/dmm/android/lib/auth/service/ConfigService;->INSTANCE:Lcom/dmm/android/lib/auth/service/ConfigService;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/service/ConfigService;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p1, Lcom/dmm/android/lib/auth/view/AuthWebView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object p1, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string p2, "No AuthWebView"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    sget-object p1, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Url is Blank"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    invoke-static {p2}, Landroid/net/MailTo;->isMailTo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p1, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v0, "URL is Mail"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    move v2, v4

    goto/16 :goto_2

    :cond_2
    new-instance v3, Lkotlin/text/Regex;

    const-string v5, "^(https?)://(dev-|stg-)*accounts\\.dmm\\.(com|co\\.jp)/app/service/login/password(=/.*|\\?.*|$)$"

    invoke-direct {v3, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object p2, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v0, "URL is Login"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/dmm/android/lib/auth/view/AuthWebView;

    sget-object p2, Lcom/dmm/android/lib/auth/AuthenticationType;->LOGIN:Lcom/dmm/android/lib/auth/AuthenticationType;

    invoke-direct {p0, p1, p2}, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->handleLoginRegisterUrl(Lcom/dmm/android/lib/auth/view/AuthWebView;Lcom/dmm/android/lib/auth/AuthenticationType;)Z

    move-result v2

    goto/16 :goto_2

    :cond_3
    new-instance v3, Lkotlin/text/Regex;

    const-string v5, "^(https?)://(dev-|stg-)*accounts\\.dmm\\.(com|co\\.jp)/app/welcome/signup/email(=/.*|\\?.*|$)$"

    invoke-direct {v3, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "android.intent.action.VIEW"

    if-eqz v3, :cond_5

    sget-object v0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v3, "URL is Register"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "client_id"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v2, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v7, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v4

    :cond_4
    check-cast p1, Lcom/dmm/android/lib/auth/view/AuthWebView;

    sget-object p2, Lcom/dmm/android/lib/auth/AuthenticationType;->REGISTER:Lcom/dmm/android/lib/auth/AuthenticationType;

    invoke-direct {p0, p1, p2}, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->handleLoginRegisterUrl(Lcom/dmm/android/lib/auth/view/AuthWebView;Lcom/dmm/android/lib/auth/AuthenticationType;)Z

    move-result v2

    goto/16 :goto_2

    :cond_5
    new-instance p1, Lkotlin/text/Regex;

    const-string v3, "^(https?)://.+\\.dmm\\.(com|co\\.jp)/service/login/oauth/app-redirect.*$"

    invoke-direct {p1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v0, "URL is SocialRedirect"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/dmm/android/lib/auth/CustomTabsResolver;->INSTANCE:Lcom/dmm/android/lib/auth/CustomTabsResolver;

    iget-object v0, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "context.packageManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/dmm/android/lib/auth/CustomTabsResolver;->findSupportedCustomTabsBrowser(Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    iget-object v1, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/dmm/android/lib/auth/ExtensionKt;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->config:Lcom/dmm/android/lib/auth/Config;

    invoke-virtual {v1}, Lcom/dmm/android/lib/auth/Config;->getColorStyle()Lcom/dmm/android/lib/auth/Config$ColorStyle;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/dmm/android/lib/auth/Config$ColorStyle;->getNight()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->config:Lcom/dmm/android/lib/auth/Config;

    invoke-virtual {v1}, Lcom/dmm/android/lib/auth/Config;->getColorStyle()Lcom/dmm/android/lib/auth/Config$ColorStyle;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/dmm/android/lib/auth/Config$ColorStyle;->getDay()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    :cond_7
    :goto_1
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    iget-object v1, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const-string v2, "intent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    if-eqz v0, :cond_8

    goto/16 :goto_0

    :cond_8
    move-object p1, p0

    check-cast p1, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;

    new-instance p1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v7, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object p2, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_0

    :cond_9
    new-instance p1, Lkotlin/text/Regex;

    const-string v3, "^(https?)://.+\\.dmm\\.(com|co\\.jp)/my/-/social-login/link-list/*$"

    invoke-direct {p1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v0, "URL is SocialLink."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v2, v6, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v0, "URL is Login Success"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->getAuthCodeFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_b

    const-string/jumbo p2, "\u8a8d\u53ef\u30b3\u30fc\u30c9\u306e\u53d6\u5f97\u306b\u5931\u6557\u3057\u307e\u3057\u305f"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_b
    iget-boolean p1, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->hasSent:Z

    if-eqz p1, :cond_c

    return v4

    :cond_c
    iput-boolean v4, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->hasSent:Z

    sget-object p1, Lcom/dmm/android/lib/auth/ServiceLocator;->INSTANCE:Lcom/dmm/android/lib/auth/ServiceLocator;

    iget-object v0, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/dmm/android/lib/auth/ServiceLocator;->provideTokenService(Landroid/content/Context;)Lcom/dmm/android/lib/auth/service/TokenService;

    move-result-object p1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->webViewListener:Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;

    check-cast v0, Lcom/dmm/android/lib/auth/listener/TokenEventListener;

    invoke-interface {p1, p2, v0}, Lcom/dmm/android/lib/auth/service/TokenService;->issueAccessToken(Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/TokenEventListener;)V

    goto/16 :goto_0

    :cond_d
    sget-object p1, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Do no process"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v2
.end method

.method private final hideErrorPage(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->errorFlag:Z

    sget-object v0, Lcom/dmm/android/lib/auth/service/ConfigService;->INSTANCE:Lcom/dmm/android/lib/auth/service/ConfigService;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/service/ConfigService;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    move-object v1, p4

    check-cast v1, Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->webViewListener:Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2, p3, p4}, Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;->onWebViewLoadFail(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->errorFlag:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->webViewListener:Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;->onWebViewLoadSuccess(Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lcom/dmm/android/lib/auth/ServiceLocator;->INSTANCE:Lcom/dmm/android/lib/auth/ServiceLocator;

    iget-object p2, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/dmm/android/lib/auth/ServiceLocator;->provideCookieService(Landroid/content/Context;)Lcom/dmm/android/lib/auth/service/CookieService;

    move-result-object p1

    invoke-interface {p1}, Lcom/dmm/android/lib/auth/service/CookieService;->showLog()V

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-boolean p1, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->errorFlag:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->webViewListener:Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/dmm/android/lib/auth/listener/AuthWebViewListener;->onWebViewLoadStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->hideErrorPage(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    nop

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "request.url.toString()"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->hideErrorPage(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    nop

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->handleUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    :goto_1
    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/dmm/android/lib/auth/view/AuthWebViewClient;->handleUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can not Handle URL because URL is Null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
