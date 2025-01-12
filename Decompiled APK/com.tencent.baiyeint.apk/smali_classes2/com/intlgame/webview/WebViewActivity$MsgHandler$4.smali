.class Lcom/intlgame/webview/WebViewActivity$MsgHandler$4;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/webview/WebViewActivity$MsgHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/intlgame/webview/WebViewActivity$MsgHandler;


# direct methods
.method constructor <init>(Lcom/intlgame/webview/WebViewActivity$MsgHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler$4;->this$1:Lcom/intlgame/webview/WebViewActivity$MsgHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler$4;->this$1:Lcom/intlgame/webview/WebViewActivity$MsgHandler;

    iget-object v0, v0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    iget-object v0, v0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$MsgHandler$4;->this$1:Lcom/intlgame/webview/WebViewActivity$MsgHandler;

    iget-object v0, v0, Lcom/intlgame/webview/WebViewActivity$MsgHandler;->this$0:Lcom/intlgame/webview/WebViewActivity;

    iget-object v0, v0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->clearFocus()V

    :cond_0
    return-void
.end method
