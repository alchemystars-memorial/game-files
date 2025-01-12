.class public final Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$chromeClient$1;
.super Landroid/webkit/WebChromeClient;
.source "AuthActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/lib/auth/AuthActivity;->launchWebView(Ljava/lang/String;)V
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dmm/android/lib/auth/AuthActivity$launchWebView$chromeClient$1",
        "Landroid/webkit/WebChromeClient;",
        "onProgressChanged",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "newProgress",
        "",
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
.field final synthetic this$0:Lcom/dmm/android/lib/auth/AuthActivity;


# direct methods
.method constructor <init>(Lcom/dmm/android/lib/auth/AuthActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$chromeClient$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$chromeClient$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-static {p1}, Lcom/dmm/android/lib/auth/AuthActivity;->access$dismissProgress(Lcom/dmm/android/lib/auth/AuthActivity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/dmm/android/lib/auth/AuthActivity$launchWebView$chromeClient$1;->this$0:Lcom/dmm/android/lib/auth/AuthActivity;

    invoke-static {p1}, Lcom/dmm/android/lib/auth/AuthActivity;->access$showProgress(Lcom/dmm/android/lib/auth/AuthActivity;)V

    :goto_0
    return-void
.end method
