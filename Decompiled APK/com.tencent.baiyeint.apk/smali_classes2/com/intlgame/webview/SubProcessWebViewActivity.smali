.class public Lcom/intlgame/webview/SubProcessWebViewActivity;
.super Lcom/intlgame/webview/WebViewActivity;
.source "SubProcessWebViewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;
    .locals 1

    invoke-static {}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->getInstance()Lcom/intlgame/webview/ipc/IPCWebViewPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->getInstance()Lcom/intlgame/webview/ipc/IPCWebViewPresenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intlgame/webview/SubProcessWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->bindService(Landroid/app/Application;)V

    invoke-super {p0, p1}, Lcom/intlgame/webview/WebViewActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/intlgame/webview/WebViewActivity;->onDestroy()V

    invoke-static {}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->getInstance()Lcom/intlgame/webview/ipc/IPCWebViewPresenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/intlgame/webview/SubProcessWebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->unbindService(Landroid/app/Application;)V

    return-void
.end method

.method protected sendMessageToObserver(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/intlgame/webview/SubProcessWebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", parasJsonMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extraJson="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/intlgame/webview/ipc/WebViewIPCActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ipc_webview_msg_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ipc_webview_msg"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "webview_key_extra_json"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "jsUrl"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/SubProcessWebViewActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected webViewConfig()Lcom/intlgame/webview/ipc/WebViewConfig;
    .locals 1

    invoke-static {}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->getInstance()Lcom/intlgame/webview/ipc/IPCWebViewPresenter;

    move-result-object v0

    return-object v0
.end method
