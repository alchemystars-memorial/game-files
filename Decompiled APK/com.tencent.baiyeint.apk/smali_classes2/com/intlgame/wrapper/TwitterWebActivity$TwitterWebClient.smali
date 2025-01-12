.class Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebClient;
.super Landroid/webkit/WebViewClient;
.source "TwitterWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/wrapper/TwitterWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwitterWebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/wrapper/TwitterWebActivity;


# direct methods
.method private constructor <init>(Lcom/intlgame/wrapper/TwitterWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebClient;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intlgame/wrapper/TwitterWebActivity;Lcom/intlgame/wrapper/TwitterWebActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebClient;-><init>(Lcom/intlgame/wrapper/TwitterWebActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebClient;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-static {v0}, Lcom/intlgame/wrapper/TwitterWebActivity;->access$100(Lcom/intlgame/wrapper/TwitterWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebClient;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-static {p1}, Lcom/intlgame/wrapper/TwitterWebActivity;->access$200(Lcom/intlgame/wrapper/TwitterWebActivity;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebClient;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-static {p1}, Lcom/intlgame/wrapper/TwitterWebActivity;->access$200(Lcom/intlgame/wrapper/TwitterWebActivity;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_0

    const-string p1, "twitter://open"

    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebClient;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-static {p1}, Lcom/intlgame/wrapper/TwitterWebActivity;->access$000(Lcom/intlgame/wrapper/TwitterWebActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    const-wide/16 p3, 0x384

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "twitter://open"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebClient;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-static {p1}, Lcom/intlgame/wrapper/TwitterWebActivity;->access$000(Lcom/intlgame/wrapper/TwitterWebActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    const-wide/16 v0, 0x384

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
