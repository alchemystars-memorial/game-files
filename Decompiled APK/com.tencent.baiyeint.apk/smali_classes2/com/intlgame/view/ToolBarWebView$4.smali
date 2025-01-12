.class Lcom/intlgame/view/ToolBarWebView$4;
.super Landroid/webkit/WebChromeClient;
.source "ToolBarWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/view/ToolBarWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mOriginalOrientation:I

.field private mOriginalSystemUiVisibility:I

.field final synthetic this$0:Lcom/intlgame/view/ToolBarWebView;


# direct methods
.method constructor <init>(Lcom/intlgame/view/ToolBarWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->mOriginalSystemUiVisibility:I

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 3

    const-string v0, "onHideCustomView"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarWebView;->access$1000(Lcom/intlgame/view/ToolBarWebView;)Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarWebView;->access$1000(Lcom/intlgame/view/ToolBarWebView;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/intlgame/view/ToolBarWebView$4;->mOriginalSystemUiVisibility:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarWebView;->access$1000(Lcom/intlgame/view/ToolBarWebView;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {v2}, Lcom/intlgame/view/ToolBarWebView;->access$000(Lcom/intlgame/view/ToolBarWebView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {v0, v1}, Lcom/intlgame/view/ToolBarWebView;->access$002(Lcom/intlgame/view/ToolBarWebView;Landroid/view/View;)Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarWebView;->access$400(Lcom/intlgame/view/ToolBarWebView;)Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/intlgame/view/ToolBarWebView$4;->mOriginalOrientation:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView$4;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v1, p0, Lcom/intlgame/view/ToolBarWebView$4;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarWebView;->access$200(Lcom/intlgame/view/ToolBarWebView;)Lcom/intlgame/view/ToolBarWebView$ToolBarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarWebView;->access$200(Lcom/intlgame/view/ToolBarWebView;)Lcom/intlgame/view/ToolBarWebView$ToolBarListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/intlgame/view/ToolBarWebView$ToolBarListener;->onJsPrompt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " url:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$200(Lcom/intlgame/view/ToolBarWebView;)Lcom/intlgame/view/ToolBarWebView$ToolBarListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$200(Lcom/intlgame/view/ToolBarWebView;)Lcom/intlgame/view/ToolBarWebView$ToolBarListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/intlgame/view/ToolBarWebView$ToolBarListener;->onProgress(I)V

    :cond_2
    const/16 p1, 0x64

    if-lt p2, p1, :cond_3

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$600(Lcom/intlgame/view/ToolBarWebView;)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$700(Lcom/intlgame/view/ToolBarWebView;)V

    :cond_3
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$500(Lcom/intlgame/view/ToolBarWebView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    const-string v0, "onShowCustomView"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarWebView;->access$000(Lcom/intlgame/view/ToolBarWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/intlgame/view/ToolBarWebView$4;->onHideCustomView()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {v0, p1}, Lcom/intlgame/view/ToolBarWebView;->access$002(Lcom/intlgame/view/ToolBarWebView;Landroid/view/View;)Landroid/view/View;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iput-object p2, p0, Lcom/intlgame/view/ToolBarWebView$4;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$1000(Lcom/intlgame/view/ToolBarWebView;)Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$1000(Lcom/intlgame/view/ToolBarWebView;)Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    iput p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->mOriginalSystemUiVisibility:I

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$1000(Lcom/intlgame/view/ToolBarWebView;)Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p2}, Lcom/intlgame/view/ToolBarWebView;->access$000(Lcom/intlgame/view/ToolBarWebView;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$1000(Lcom/intlgame/view/ToolBarWebView;)Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0xf06

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$400(Lcom/intlgame/view/ToolBarWebView;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->mOriginalOrientation:I

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$400(Lcom/intlgame/view/ToolBarWebView;)Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

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

    const-string p1, "onShowFileChooser"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$800(Lcom/intlgame/view/ToolBarWebView;)Landroid/webkit/ValueCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$800(Lcom/intlgame/view/ToolBarWebView;)Landroid/webkit/ValueCallback;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1, p2}, Lcom/intlgame/view/ToolBarWebView;->access$802(Lcom/intlgame/view/ToolBarWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.OPENABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "*/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    :try_start_0
    iget-object p3, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarWebView;->access$400(Lcom/intlgame/view/ToolBarWebView;)Landroid/app/Activity;

    move-result-object p3

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarWebView;->access$400(Lcom/intlgame/view/ToolBarWebView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/intlgame/webview/WebViewResID;->str_upload_file_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
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
    .locals 2
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openFileChooser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p2}, Lcom/intlgame/view/ToolBarWebView;->access$900(Lcom/intlgame/view/ToolBarWebView;)Landroid/webkit/ValueCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p2}, Lcom/intlgame/view/ToolBarWebView;->access$900(Lcom/intlgame/view/ToolBarWebView;)Landroid/webkit/ValueCallback;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p2, p1}, Lcom/intlgame/view/ToolBarWebView;->access$902(Lcom/intlgame/view/ToolBarWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.OPENABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "*/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p2, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p2}, Lcom/intlgame/view/ToolBarWebView;->access$400(Lcom/intlgame/view/ToolBarWebView;)Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lcom/intlgame/view/ToolBarWebView$4;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarWebView;->access$400(Lcom/intlgame/view/ToolBarWebView;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/intlgame/webview/WebViewResID;->str_upload_file_title:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
