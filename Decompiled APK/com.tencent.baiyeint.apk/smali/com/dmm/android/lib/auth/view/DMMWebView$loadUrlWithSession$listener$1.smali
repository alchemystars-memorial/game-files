.class public final Lcom/dmm/android/lib/auth/view/DMMWebView$loadUrlWithSession$listener$1;
.super Ljava/lang/Object;
.source "DMMWebView.kt"

# interfaces
.implements Lcom/dmm/android/lib/auth/listener/SessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/lib/auth/view/DMMWebView;->loadUrlWithSession(Ljava/lang/String;Lcom/dmm/android/lib/auth/listener/SessionEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/dmm/android/lib/auth/view/DMMWebView$loadUrlWithSession$listener$1",
        "Lcom/dmm/android/lib/auth/listener/SessionEventListener;",
        "onCancelSessions",
        "",
        "reason",
        "Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;",
        "onCompleteSession",
        "result",
        "Lcom/dmm/android/lib/auth/model/SessionID;",
        "onFailedSession",
        "error",
        "Lcom/dmm/android/lib/auth/model/HttpError;",
        "onStartSession",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $sessionEventListener:Lcom/dmm/android/lib/auth/listener/SessionEventListener;

.field final synthetic $url:Ljava/lang/String;

.field final synthetic this$0:Lcom/dmm/android/lib/auth/view/DMMWebView;


# direct methods
.method constructor <init>(Lcom/dmm/android/lib/auth/view/DMMWebView;Lcom/dmm/android/lib/auth/listener/SessionEventListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/android/lib/auth/listener/SessionEventListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dmm/android/lib/auth/view/DMMWebView$loadUrlWithSession$listener$1;->this$0:Lcom/dmm/android/lib/auth/view/DMMWebView;

    iput-object p2, p0, Lcom/dmm/android/lib/auth/view/DMMWebView$loadUrlWithSession$listener$1;->$sessionEventListener:Lcom/dmm/android/lib/auth/listener/SessionEventListener;

    iput-object p3, p0, Lcom/dmm/android/lib/auth/view/DMMWebView$loadUrlWithSession$listener$1;->$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelSessions(Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/view/DMMWebView$loadUrlWithSession$listener$1;->$sessionEventListener:Lcom/dmm/android/lib/auth/listener/SessionEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/dmm/android/lib/auth/listener/SessionEventListener;->onCancelSessions(Lcom/dmm/android/lib/auth/listener/SessionEventCancelReason;)V

    :cond_0
    return-void
.end method

.method public onCompleteSession(Lcom/dmm/android/lib/auth/model/SessionID;)V
    .locals 5

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/view/DMMWebView$loadUrlWithSession$listener$1;->this$0:Lcom/dmm/android/lib/auth/view/DMMWebView;

    invoke-static {v0}, Lcom/dmm/android/lib/auth/view/DMMWebView;->access$getAuthSdk$p(Lcom/dmm/android/lib/auth/view/DMMWebView;)Lcom/dmm/android/lib/auth/DMMAuthSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dmm/android/lib/auth/DMMAuthSDK;->setDMMSession$app_prodRelease(Lcom/dmm/android/lib/auth/model/SessionID;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/view/DMMWebView$loadUrlWithSession$listener$1;->this$0:Lcom/dmm/android/lib/auth/view/DMMWebView;

    iget-object v1, p0, Lcom/dmm/android/lib/auth/view/DMMWebView$loadUrlWithSession$listener$1;->$url:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/model/SessionID;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SMARTPHONE_REQ_INTS"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "SMARTPHONE_APP"

    const-string v4, "DMM-APP"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dmm/android/lib/auth/view/DMMWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/view/DMMWebView$loadUrlWithSession$listener$1;->$sessionEventListener:Lcom/dmm/android/lib/auth/listener/SessionEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/dmm/android/lib/auth/listener/SessionEventListener;->onCompleteSession(Lcom/dmm/android/lib/auth/model/SessionID;)V

    :cond_0
    sget-object p1, Lcom/dmm/android/lib/auth/ServiceLocator;->INSTANCE:Lcom/dmm/android/lib/auth/ServiceLocator;

    iget-object v0, p0, Lcom/dmm/android/lib/auth/view/DMMWebView$loadUrlWithSession$listener$1;->this$0:Lcom/dmm/android/lib/auth/view/DMMWebView;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/view/DMMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/dmm/android/lib/auth/ServiceLocator;->provideCookieService(Landroid/content/Context;)Lcom/dmm/android/lib/auth/service/CookieService;

    move-result-object p1

    invoke-interface {p1}, Lcom/dmm/android/lib/auth/service/CookieService;->showLog()V

    return-void
.end method

.method public onFailedSession(Lcom/dmm/android/lib/auth/model/HttpError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/android/lib/auth/view/DMMWebView$loadUrlWithSession$listener$1;->$sessionEventListener:Lcom/dmm/android/lib/auth/listener/SessionEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/dmm/android/lib/auth/listener/SessionEventListener;->onFailedSession(Lcom/dmm/android/lib/auth/model/HttpError;)V

    :cond_0
    return-void
.end method

.method public onStartSession()V
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/lib/auth/view/DMMWebView$loadUrlWithSession$listener$1;->$sessionEventListener:Lcom/dmm/android/lib/auth/listener/SessionEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/dmm/android/lib/auth/listener/SessionEventListener;->onStartSession()V

    :cond_0
    return-void
.end method
