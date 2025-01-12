.class public final Lcom/dmm/android/lib/auth/view/AuthWebView;
.super Landroid/webkit/WebView;
.source "AuthWebView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/lib/auth/view/AuthWebView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nB\'\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000cJ\u0014\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u0016H\u0002J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u000eJ\u0018\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0010\r\u001a\u0004\u0018\u00010\u0011@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/view/AuthWebView;",
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
        "devStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "<set-?>",
        "",
        "isGeneral",
        "()Z",
        "Lcom/dmm/android/lib/auth/AuthenticationType;",
        "viewType",
        "getViewType",
        "()Lcom/dmm/android/lib/auth/AuthenticationType;",
        "getExtraHeaders",
        "",
        "",
        "loadLogin",
        "",
        "loadRegister",
        "onKeyDown",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
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
.field public static final Companion:Lcom/dmm/android/lib/auth/view/AuthWebView$Companion;

.field private static final DMM_APP_HEADER_KEY:Ljava/lang/String; = "SMARTPHONE_APP"

.field private static final DMM_APP_HEADER_VALUE:Ljava/lang/String; = "DMM-APP"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isGeneral:Z

.field private viewType:Lcom/dmm/android/lib/auth/AuthenticationType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dmm/android/lib/auth/view/AuthWebView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/lib/auth/view/AuthWebView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dmm/android/lib/auth/view/AuthWebView;->Companion:Lcom/dmm/android/lib/auth/view/AuthWebView$Companion;

    const-string v0, "AuthWebView"

    const-string v1, "AuthWebView::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/dmm/android/lib/auth/view/AuthWebView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string/jumbo v1, "settings"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "settings.userAgentString"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/dmm/android/lib/auth/view/AuthWebView;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/dmm/android/lib/auth/view/AuthWebViewKt;->overrideUserAgent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dmm/android/lib/auth/view/AuthWebView;->isGeneral:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attrs"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string/jumbo p2, "settings"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "settings.userAgentString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/view/AuthWebView;->TAG:Ljava/lang/String;

    invoke-static {v1, p2, v0}, Lcom/dmm/android/lib/auth/view/AuthWebViewKt;->overrideUserAgent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dmm/android/lib/auth/view/AuthWebView;->isGeneral:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attrs"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string/jumbo p2, "settings"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "settings.userAgentString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/dmm/android/lib/auth/view/AuthWebView;->TAG:Ljava/lang/String;

    invoke-static {p3, p2, v0}, Lcom/dmm/android/lib/auth/view/AuthWebViewKt;->overrideUserAgent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dmm/android/lib/auth/view/AuthWebView;->isGeneral:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attrs"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string/jumbo p2, "settings"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p4, "settings.userAgentString"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Lcom/dmm/android/lib/auth/view/AuthWebView;->TAG:Ljava/lang/String;

    invoke-static {p3, p2, p4}, Lcom/dmm/android/lib/auth/view/AuthWebViewKt;->overrideUserAgent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dmm/android/lib/auth/view/AuthWebView;->isGeneral:Z

    return-void
.end method

.method private final getExtraHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SMARTPHONE_APP"

    const-string v1, "DMM-APP"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getViewType()Lcom/dmm/android/lib/auth/AuthenticationType;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/view/AuthWebView;->viewType:Lcom/dmm/android/lib/auth/AuthenticationType;

    return-object v0
.end method

.method public final isGeneral()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dmm/android/lib/auth/view/AuthWebView;->isGeneral:Z

    return v0
.end method

.method public final loadLogin(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/dmm/android/lib/auth/view/AuthWebView;->isGeneral:Z

    sget-object v0, Lcom/dmm/android/lib/auth/AuthenticationType;->LOGIN:Lcom/dmm/android/lib/auth/AuthenticationType;

    iput-object v0, p0, Lcom/dmm/android/lib/auth/view/AuthWebView;->viewType:Lcom/dmm/android/lib/auth/AuthenticationType;

    sget-object v0, Lcom/dmm/android/lib/auth/AuthenticationType;->LOGIN:Lcom/dmm/android/lib/auth/AuthenticationType;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/dmm/android/lib/auth/ExtensionKt;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/dmm/android/lib/auth/AuthActivityKt;->generateUrl(Lcom/dmm/android/lib/auth/AuthenticationType;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getExtraHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final loadRegister(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/dmm/android/lib/auth/view/AuthWebView;->isGeneral:Z

    sget-object v0, Lcom/dmm/android/lib/auth/AuthenticationType;->REGISTER:Lcom/dmm/android/lib/auth/AuthenticationType;

    iput-object v0, p0, Lcom/dmm/android/lib/auth/view/AuthWebView;->viewType:Lcom/dmm/android/lib/auth/AuthenticationType;

    sget-object v0, Lcom/dmm/android/lib/auth/AuthenticationType;->REGISTER:Lcom/dmm/android/lib/auth/AuthenticationType;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/dmm/android/lib/auth/ExtensionKt;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/dmm/android/lib/auth/AuthActivityKt;->generateUrl(Lcom/dmm/android/lib/auth/AuthenticationType;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getExtraHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/view/AuthWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
