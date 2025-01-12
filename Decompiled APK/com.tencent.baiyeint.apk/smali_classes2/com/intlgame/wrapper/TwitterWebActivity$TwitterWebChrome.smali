.class Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebChrome;
.super Landroid/webkit/WebChromeClient;
.source "TwitterWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/wrapper/TwitterWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwitterWebChrome"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/wrapper/TwitterWebActivity;


# direct methods
.method private constructor <init>(Lcom/intlgame/wrapper/TwitterWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebChrome;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intlgame/wrapper/TwitterWebActivity;Lcom/intlgame/wrapper/TwitterWebActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebChrome;-><init>(Lcom/intlgame/wrapper/TwitterWebActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 p1, 0x64

    if-ge p2, p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebChrome;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-static {p1}, Lcom/intlgame/wrapper/TwitterWebActivity;->access$300(Lcom/intlgame/wrapper/TwitterWebActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebChrome;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-static {p1}, Lcom/intlgame/wrapper/TwitterWebActivity;->access$300(Lcom/intlgame/wrapper/TwitterWebActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/intlgame/wrapper/TwitterWebActivity$TwitterWebChrome;->this$0:Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-static {p1}, Lcom/intlgame/wrapper/TwitterWebActivity;->access$300(Lcom/intlgame/wrapper/TwitterWebActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
