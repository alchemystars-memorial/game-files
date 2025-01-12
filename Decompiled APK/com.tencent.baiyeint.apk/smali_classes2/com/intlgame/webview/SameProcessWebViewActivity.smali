.class public Lcom/intlgame/webview/SameProcessWebViewActivity;
.super Lcom/intlgame/webview/WebViewActivity;
.source "SameProcessWebViewActivity.java"

# interfaces
.implements Lcom/intlgame/webview/ipc/WebViewLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/webview/SameProcessWebViewActivity$SameProcessConfig;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/webview/WebViewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;
    .locals 0

    return-object p0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method protected sendMessageToObserver(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/intlgame/webview/SameProcessWebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

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

    new-instance v0, Lcom/intlgame/webview/SameProcessWebViewActivity$1;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/intlgame/webview/SameProcessWebViewActivity$1;-><init>(Lcom/intlgame/webview/SameProcessWebViewActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/intlgame/webview/SameProcessWebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    return-void
.end method

.method protected webViewConfig()Lcom/intlgame/webview/ipc/WebViewConfig;
    .locals 1

    new-instance v0, Lcom/intlgame/webview/SameProcessWebViewActivity$SameProcessConfig;

    invoke-direct {v0}, Lcom/intlgame/webview/SameProcessWebViewActivity$SameProcessConfig;-><init>()V

    return-object v0
.end method
