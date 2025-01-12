.class Lcom/intlgame/webview/WebViewActivity$5;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/webview/WebViewActivity;->initLayout()V
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

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity$5;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$5;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$800(Lcom/intlgame/webview/WebViewActivity;)Lcom/intlgame/webview/ShareAnimMenu;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/intlgame/webview/ShareAnimMenu;->dismiss(Lcom/intlgame/webview/ShareAnimMenu$IDismissListener;)V

    return-void
.end method
