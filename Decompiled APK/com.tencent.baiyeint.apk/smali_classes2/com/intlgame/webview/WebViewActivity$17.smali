.class Lcom/intlgame/webview/WebViewActivity$17;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/webview/WebViewActivity;->onSaveSuccess(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/webview/WebViewActivity;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/intlgame/webview/WebViewActivity;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity$17;->this$0:Lcom/intlgame/webview/WebViewActivity;

    iput-object p2, p0, Lcom/intlgame/webview/WebViewActivity$17;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$17;->this$0:Lcom/intlgame/webview/WebViewActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/intlgame/webview/WebViewActivity$17;->val$file:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/intlgame/webview/WebViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$17;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object v0

    const-string v1, "Send broadcast done"

    invoke-interface {v0, v1}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    return-void
.end method
