.class Lcom/intlgame/webview/ipc/IPCWebViewPresenter$1;
.super Ljava/lang/Object;
.source "IPCWebViewPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->bindService(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/webview/ipc/IPCWebViewPresenter;


# direct methods
.method constructor <init>(Lcom/intlgame/webview/ipc/IPCWebViewPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$1;->this$0:Lcom/intlgame/webview/ipc/IPCWebViewPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$1;->this$0:Lcom/intlgame/webview/ipc/IPCWebViewPresenter;

    invoke-static {p2}, Lcom/intlgame/webview/WebViewAIDL$Stub;->asInterface(Landroid/os/IBinder;)Lcom/intlgame/webview/WebViewAIDL;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->access$202(Lcom/intlgame/webview/ipc/IPCWebViewPresenter;Lcom/intlgame/webview/WebViewAIDL;)Lcom/intlgame/webview/WebViewAIDL;

    iget-object p1, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$1;->this$0:Lcom/intlgame/webview/ipc/IPCWebViewPresenter;

    invoke-static {p1}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->access$300(Lcom/intlgame/webview/ipc/IPCWebViewPresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$1;->this$0:Lcom/intlgame/webview/ipc/IPCWebViewPresenter;

    invoke-static {p1}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->access$400(Lcom/intlgame/webview/ipc/IPCWebViewPresenter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/intlgame/webview/ipc/IPCWebViewPresenter$1;->this$0:Lcom/intlgame/webview/ipc/IPCWebViewPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/intlgame/webview/ipc/IPCWebViewPresenter;->access$202(Lcom/intlgame/webview/ipc/IPCWebViewPresenter;Lcom/intlgame/webview/WebViewAIDL;)Lcom/intlgame/webview/WebViewAIDL;

    return-void
.end method
