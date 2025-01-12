.class public final Lcom/dmm/android/lib/auth/view/DMMWebView;
.super Landroid/webkit/WebView;
.source "DMMWebView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/view/DMMWebView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u001c\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/view/DMMWebView;",
        "Landroid/webkit/WebView;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "authSdk",
        "Lcom/dmm/android/lib/auth/DMMAuthSDK;",
        "loadUrlWithSession",
        "",
        "url",
        "",
        "sessionEventListener",
        "Lcom/dmm/android/lib/auth/listener/SessionEventListener;",
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
.field public static final Companion:Lcom/dmm/android/lib/auth/view/DMMWebView$Companion;

.field private static final HEADER_SMARTPHONE:Ljava/lang/String; = "SMARTPHONE_APP"

.field private static final HEADER_UNIQUE_ID:Ljava/lang/String; = "SMARTPHONE_REQ_INTS"

.field private static final TAG:Ljava/lang/String;

.field private static final VALUE_SMARTPHONE:Ljava/lang/String; = "DMM-APP"


# instance fields
.field private final authSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/view/DMMWebView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/view/DMMWebView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/view/DMMWebView;->Companion:Lcom/dmm/android/lib/auth/view/DMMWebView$Companion;

    const-string v0, "DMMWebView"

    const-string v1, "DMMWebView::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/dmm/android/lib/auth/view/DMMWebView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/DMMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string/jumbo v1, "settings"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/DMMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/DMMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "settings.userAgentString"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/dmm/android/lib/auth/view/DMMWebView;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/dmm/android/lib/auth/view/AuthWebViewKt;->overrideUserAgent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    new-instance p1, Lcom/dmm/android/lib/auth/DMMAuthSDK;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/DMMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/dmm/android/lib/auth/DMMAuthSDK;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/view/DMMWebView;->authSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attrs"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/DMMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string/jumbo p2, "settings"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/DMMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/DMMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "settings.userAgentString"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/dmm/android/lib/auth/view/DMMWebView;->TAG:Ljava/lang/String;

    invoke-static {v1, p2, v2}, Lcom/dmm/android/lib/auth/view/AuthWebViewKt;->overrideUserAgent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    new-instance p1, Lcom/dmm/android/lib/auth/DMMAuthSDK;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/DMMWebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/dmm/android/lib/auth/DMMAuthSDK;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/view/DMMWebView;->authSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attrs"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/DMMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string/jumbo p2, "settings"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/DMMWebView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/DMMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "settings.userAgentString"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/dmm/android/lib/auth/view/DMMWebView;->TAG:Ljava/lang/String;

    invoke-static {p3, p2, v1}, Lcom/dmm/android/lib/auth/view/AuthWebViewKt;->overrideUserAgent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    new-instance p1, Lcom/dmm/android/lib/auth/DMMAuthSDK;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/DMMWebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/dmm/android/lib/auth/DMMAuthSDK;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/view/DMMWebView;->authSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    return-void
.end method

.method public static final synthetic access$getAuthSdk$p(Lcom/dmm/android/lib/auth/view/DMMWebView;)Lcom/dmm/android/lib/auth/DMMAuthSDK;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/lib/auth/view/DMMWebView;->authSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    return-object p0
.end method

.method public static synthetic loadUrlWithSession$default(Lcom/dmm/android/lib/auth/view/DMMWebView;Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/SessionEventListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    move-object p3, p2

    check-cast p3, Lcom/dmm/android/lib/auth/listener/SessionEventListener;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dmm/android/lib/auth/view/DMMWebView;->loadUrlWithSession(Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/SessionEventListener;)V

    return-void
.end method


# virtual methods
.method public final loadUrlWithSession(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/dmm/android/lib/auth/view/DMMWebView;->loadUrlWithSession$default(Lcom/dmm/android/lib/auth/view/DMMWebView;Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/SessionEventListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final loadUrlWithSession(Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/SessionEventListener;)V
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dmm/android/lib/auth/view/DMMWebView$loadUrlWithSession$listener$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/dmm/android/lib/auth/view/DMMWebView$loadUrlWithSession$listener$1;-><init>(Lcom/dmm/android/lib/auth/view/DMMWebView;Lcom/dmm/android/lib/auth/listener/SessionEventListener;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dmm/android/lib/auth/view/DMMWebView;->authSdk:Lcom/dmm/android/lib/auth/DMMAuthSDK;

    check-cast v0, Lcom/dmm/android/lib/auth/listener/SessionEventListener;

    invoke-virtual {p1, v0}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->issueSessionID(Lcom/dmm/android/lib/auth/listener/SessionEventListener;)V

    return-void
.end method
