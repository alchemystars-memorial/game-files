.class Lcom/intlgame/webview/WebViewActivity$14$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/webview/WebViewActivity$14;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/intlgame/webview/WebViewActivity$14;


# direct methods
.method constructor <init>(Lcom/intlgame/webview/WebViewActivity$14;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity$14$1;->this$1:Lcom/intlgame/webview/WebViewActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$14$1;->this$1:Lcom/intlgame/webview/WebViewActivity$14;

    iget-object v0, v0, Lcom/intlgame/webview/WebViewActivity$14;->this$0:Lcom/intlgame/webview/WebViewActivity;

    iget-object v1, p0, Lcom/intlgame/webview/WebViewActivity$14$1;->this$1:Lcom/intlgame/webview/WebViewActivity$14;

    iget-object v1, v1, Lcom/intlgame/webview/WebViewActivity$14;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {v0, v1}, Lcom/intlgame/webview/WebViewActivity;->verifyStoragePermissions(Landroid/app/Activity;)V

    return-void
.end method
