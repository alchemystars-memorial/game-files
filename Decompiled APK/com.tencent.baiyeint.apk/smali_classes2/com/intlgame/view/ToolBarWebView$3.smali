.class Lcom/intlgame/view/ToolBarWebView$3;
.super Ljava/lang/Object;
.source "ToolBarWebView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/view/ToolBarWebView;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/view/ToolBarWebView;


# direct methods
.method constructor <init>(Lcom/intlgame/view/ToolBarWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/view/ToolBarWebView$3;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$3;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$300(Lcom/intlgame/view/ToolBarWebView;)Lcom/intlgame/webview/WebViewProxy;

    move-result-object p1

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

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView$3;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarWebView;->access$400(Lcom/intlgame/view/ToolBarWebView;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/intlgame/view/ToolBarWebViewSetting;->downloadUrlImage(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
