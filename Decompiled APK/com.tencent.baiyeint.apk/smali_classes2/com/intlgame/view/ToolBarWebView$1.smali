.class Lcom/intlgame/view/ToolBarWebView$1;
.super Landroid/app/Dialog;
.source "ToolBarWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/view/ToolBarWebView;->showWithDialog(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/view/ToolBarWebView;

.field final synthetic val$isFullscreen:Z


# direct methods
.method constructor <init>(Lcom/intlgame/view/ToolBarWebView;Landroid/content/Context;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/view/ToolBarWebView$1;->this$0:Lcom/intlgame/view/ToolBarWebView;

    iput-boolean p4, p0, Lcom/intlgame/view/ToolBarWebView$1;->val$isFullscreen:Z

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView$1;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarWebView;->access$000(Lcom/intlgame/view/ToolBarWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView$1;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarWebView;->access$100(Lcom/intlgame/view/ToolBarWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView$1;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarWebView;->access$100(Lcom/intlgame/view/ToolBarWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$1;->this$0:Lcom/intlgame/view/ToolBarWebView;

    iget-boolean v0, p0, Lcom/intlgame/view/ToolBarWebView$1;->val$isFullscreen:Z

    invoke-virtual {p1, v0}, Lcom/intlgame/view/ToolBarWebView;->setFullscreen(Z)V

    :cond_0
    return-void
.end method
