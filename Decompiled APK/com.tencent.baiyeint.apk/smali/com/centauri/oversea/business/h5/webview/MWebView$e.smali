.class public final Lcom/centauri/oversea/business/h5/webview/MWebView$e;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/h5/webview/MWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final a:Lcom/centauri/oversea/business/h5/webview/MWebView;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/h5/webview/MWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$e;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageCommitVisible url: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MWebView"

    invoke-static {p2, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$e;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-boolean p1, p1, Lcom/centauri/oversea/business/h5/webview/MWebView;->f:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "webview_dom_load"

    invoke-static {p1}, Lo/q;->c(Ljava/lang/String;)J

    :cond_0
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MWebView"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$e;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-boolean p1, p1, Lcom/centauri/oversea/business/h5/webview/MWebView;->f:Z

    if-eqz p1, :cond_0

    sget-object p1, Lo/b$a;->a:Lo/b;

    const-string p2, "sdk.webview.onfinish"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$e;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->d(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    :cond_0
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageStarted url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MWebView"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MWebView"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$e;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-boolean p1, p1, Lcom/centauri/oversea/business/h5/webview/MWebView;->f:Z

    if-eqz p1, :cond_0

    sget-object p1, Lo/b$a;->a:Lo/b;

    const-string p2, "sdk.webview.err"

    const-string p4, ""

    invoke-virtual {p1, p2, p4}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$e;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->d(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    :cond_0
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$e;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object p1, p1, Lcom/centauri/oversea/business/h5/webview/MWebView;->d:Lcom/centauri/oversea/business/h5/webview/MWebView$g;

    if-eqz p1, :cond_1

    check-cast p1, Ll/a;

    invoke-virtual {p1, p3}, Ll/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceivedSslError:"

    invoke-static {v2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cert="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pageUrl="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MWebView"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$e;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object p1, p1, Lcom/centauri/oversea/business/h5/webview/MWebView;->d:Lcom/centauri/oversea/business/h5/webview/MWebView$g;

    if-eqz p1, :cond_1

    check-cast p1, Ll/a;

    const-string p2, "request error,https ssl error."

    invoke-virtual {p1, p2}, Ll/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2

    const-string/jumbo v0, "shouldInterceptRequest: "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MWebView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$e;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-boolean v1, v0, Lcom/centauri/oversea/business/h5/webview/MWebView;->a:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/centauri/oversea/business/h5/webview/MWebView;->b:Ln/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldOverrideUrlLoading url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MWebView"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payChannel = : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$e;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object v2, v2, Lcom/centauri/oversea/business/h5/webview/MWebView;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "centauri://sdk.os_mp.result.success"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "os_mp"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$e;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object v0, v0, Lcom/centauri/oversea/business/h5/webview/MWebView;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$e;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object p1, p1, Lcom/centauri/oversea/business/h5/webview/MWebView;->c:Lcom/centauri/oversea/business/h5/webview/MWebView$f;

    check-cast p1, Ll/b;

    invoke-virtual {p1, v1}, Ll/b;->a(I)V

    return v3

    :cond_0
    const-string v0, "centauri://sdk.os_mp.result.cancel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$e;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object v0, v0, Lcom/centauri/oversea/business/h5/webview/MWebView;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$e;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object p1, p1, Lcom/centauri/oversea/business/h5/webview/MWebView;->c:Lcom/centauri/oversea/business/h5/webview/MWebView$f;

    check-cast p1, Ll/b;

    invoke-virtual {p1, v3}, Ll/b;->a(I)V

    return v3

    :cond_1
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$e;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-boolean v2, v0, Lcom/centauri/oversea/business/h5/webview/MWebView;->a:Z

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/centauri/oversea/business/h5/webview/MWebView;->b:Ln/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$e;->a:Lcom/centauri/oversea/business/h5/webview/MWebView;

    iget-object v0, v0, Lcom/centauri/oversea/business/h5/webview/MWebView;->b:Ln/a;

    check-cast v0, Ln/c;

    invoke-virtual {v0, p1, p2}, Ln/c;->b(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    return v3

    :cond_2
    const-string v0, "referer="

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Referer"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v3
.end method
