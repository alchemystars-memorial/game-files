.class Lcom/intlgame/webview/WebViewActivity$14;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/webview/WebViewActivity;->savePhotoFromUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/intlgame/webview/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity$14;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$14;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object p1

    const-string p2, "Positive button clicked, start to save photo"

    invoke-interface {p1, p2}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/intlgame/webview/WebViewActivity$14$1;

    invoke-direct {p2, p0}, Lcom/intlgame/webview/WebViewActivity$14$1;-><init>(Lcom/intlgame/webview/WebViewActivity$14;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
