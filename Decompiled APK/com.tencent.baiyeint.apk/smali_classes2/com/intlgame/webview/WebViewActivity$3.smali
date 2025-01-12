.class Lcom/intlgame/webview/WebViewActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/webview/WebViewActivity;->initWebView()V
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

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity$3;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$3;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$3;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$200(Lcom/intlgame/webview/WebViewActivity;)V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$3;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$300(Lcom/intlgame/webview/WebViewActivity;)V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$3;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$400(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/intlgame/webview/WebViewActivity$3;->this$0:Lcom/intlgame/webview/WebViewActivity;

    iget-object p2, p2, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {p2}, Lcom/intlgame/webview/WebViewProxy;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$3;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$500(Lcom/intlgame/webview/WebViewActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$3;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$500(Lcom/intlgame/webview/WebViewActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$3;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$500(Lcom/intlgame/webview/WebViewActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_1
    iget-object p2, p0, Lcom/intlgame/webview/WebViewActivity$3;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {p2, p1}, Lcom/intlgame/webview/WebViewActivity;->setFullScreen(Z)V

    iget-object p2, p0, Lcom/intlgame/webview/WebViewActivity$3;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p2, p1}, Lcom/intlgame/webview/WebViewActivity;->access$602(Lcom/intlgame/webview/WebViewActivity;Z)Z

    :cond_2
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$3;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$700(Lcom/intlgame/webview/WebViewActivity;)V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$3;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$400(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/intlgame/webview/WebViewActivity$3;->this$0:Lcom/intlgame/webview/WebViewActivity;

    iget-object p2, p2, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {p2}, Lcom/intlgame/webview/WebViewProxy;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$3;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/intlgame/webview/WebViewCommonUtil;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
