.class Lcom/intlgame/webview/WebViewActivity$13$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/webview/WebViewActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/intlgame/webview/WebViewActivity$13;


# direct methods
.method constructor <init>(Lcom/intlgame/webview/WebViewActivity$13;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity$13$1;->this$1:Lcom/intlgame/webview/WebViewActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/intlgame/webview/WebViewActivity$13$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$13$1;->this$1:Lcom/intlgame/webview/WebViewActivity$13;

    iget-object v0, v0, Lcom/intlgame/webview/WebViewActivity$13;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    return-void
.end method
