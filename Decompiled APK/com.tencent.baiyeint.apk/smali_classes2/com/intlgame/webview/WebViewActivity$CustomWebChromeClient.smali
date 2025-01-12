.class Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/webview/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/intlgame/webview/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method private endLoadingAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$3600(Lcom/intlgame/webview/WebViewActivity;)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$3500(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$3600(Lcom/intlgame/webview/WebViewActivity;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$3700(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$3700(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$3700(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_1
    return-void
.end method

.method private startLoadingAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$3600(Lcom/intlgame/webview/WebViewActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$3500(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$3600(Lcom/intlgame/webview/WebViewActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$3700(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$3700(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v1}, Lcom/intlgame/webview/WebViewActivity;->access$3800(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onHideCustomView()V
    .locals 3

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    const-string v1, "onHideCustomView"

    invoke-interface {v0, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v1}, Lcom/intlgame/webview/WebViewActivity;->access$4400(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intlgame/webview/WebViewActivity;->access$4402(Lcom/intlgame/webview/WebViewActivity;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v2}, Lcom/intlgame/webview/WebViewActivity;->access$4500(Lcom/intlgame/webview/WebViewActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$4600(Lcom/intlgame/webview/WebViewActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/intlgame/webview/WebViewActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$4700(Lcom/intlgame/webview/WebViewActivity;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0, v1}, Lcom/intlgame/webview/WebViewActivity;->access$4702(Lcom/intlgame/webview/WebViewActivity;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    invoke-static {}, Lcom/intlgame/webview/JsProcessor;->getInstance()Lcom/intlgame/webview/JsProcessor;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/intlgame/webview/JsProcessor;->canResolved(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p4}, Lcom/intlgame/webview/WebViewActivity;->access$3900(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p4}, Lcom/intlgame/webview/WebViewActivity;->access$3900(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p4}, Lcom/intlgame/webview/WebViewActivity;->access$4000(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$4100(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/intlgame/webview/JsProcessor;->getInstance()Lcom/intlgame/webview/JsProcessor;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/intlgame/webview/JsProcessor;->parseMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, ""

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    goto :goto_1

    :cond_1
    invoke-virtual {p5, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {p2}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "parse jsonMessage error : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/intlgame/webview/ipc/WebViewLogger;->e(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$3500(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p1, 0x64

    if-lt p2, p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$200(Lcom/intlgame/webview/WebViewActivity;)V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$300(Lcom/intlgame/webview/WebViewActivity;)V

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->endLoadingAnimation()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->startLoadingAnimation()V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1, p2}, Lcom/intlgame/webview/WebViewActivity;->access$3402(Lcom/intlgame/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$400(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    const-string v1, "onShowCustomView"

    invoke-interface {v0, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$4400(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->onHideCustomView()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0, p1}, Lcom/intlgame/webview/WebViewActivity;->access$4402(Lcom/intlgame/webview/WebViewActivity;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-static {v0, v1}, Lcom/intlgame/webview/WebViewActivity;->access$4502(Lcom/intlgame/webview/WebViewActivity;I)I

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewActivity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/intlgame/webview/WebViewActivity;->access$4602(Lcom/intlgame/webview/WebViewActivity;I)I

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1, p2}, Lcom/intlgame/webview/WebViewActivity;->access$4702(Lcom/intlgame/webview/WebViewActivity;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p2}, Lcom/intlgame/webview/WebViewActivity;->access$4400(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0xf06

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/intlgame/webview/WebViewActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object p1

    const-string p3, "onShowFileChooser"

    invoke-interface {p1, p3}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$4200(Lcom/intlgame/webview/WebViewActivity;)Landroid/webkit/ValueCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$4200(Lcom/intlgame/webview/WebViewActivity;)Landroid/webkit/ValueCallback;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1, p2}, Lcom/intlgame/webview/WebViewActivity;->access$4202(Lcom/intlgame/webview/WebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.OPENABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "*/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    :try_start_0
    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {p3}, Lcom/intlgame/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/intlgame/webview/WebViewResID;->str_upload_file_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/intlgame/webview/WebViewActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return p2
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFileChooser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p2}, Lcom/intlgame/webview/WebViewActivity;->access$4300(Lcom/intlgame/webview/WebViewActivity;)Landroid/webkit/ValueCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p2}, Lcom/intlgame/webview/WebViewActivity;->access$4300(Lcom/intlgame/webview/WebViewActivity;)Landroid/webkit/ValueCallback;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p2, p1}, Lcom/intlgame/webview/WebViewActivity;->access$4302(Lcom/intlgame/webview/WebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.OPENABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "*/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p2, p0, Lcom/intlgame/webview/WebViewActivity$CustomWebChromeClient;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {p2}, Lcom/intlgame/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/intlgame/webview/WebViewResID;->str_upload_file_title:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/intlgame/webview/WebViewActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
