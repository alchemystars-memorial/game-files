.class Lcom/intlgame/webview/WebViewActivity$2;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/webview/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/intlgame/webview/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity$2;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$2;->this$0:Lcom/intlgame/webview/WebViewActivity;

    iget-object p1, p1, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewProxy;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$2;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get image url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$2;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0, p1}, Lcom/intlgame/webview/WebViewActivity;->access$100(Lcom/intlgame/webview/WebViewActivity;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$2;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object p1

    const-string v0, "Image url is null"

    invoke-interface {p1, v0}, Lcom/intlgame/webview/ipc/WebViewLogger;->e(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
