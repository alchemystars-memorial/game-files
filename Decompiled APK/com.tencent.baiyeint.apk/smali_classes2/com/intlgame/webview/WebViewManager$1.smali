.class Lcom/intlgame/webview/WebViewManager$1;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/webview/WebViewManager;->onShareCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/webview/WebViewManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$finalWebViewResult:Lcom/intlgame/api/INTLResult;


# direct methods
.method constructor <init>(Lcom/intlgame/webview/WebViewManager;Landroid/app/Activity;Lcom/intlgame/api/INTLResult;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewManager$1;->this$0:Lcom/intlgame/webview/WebViewManager;

    iput-object p2, p0, Lcom/intlgame/webview/WebViewManager$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/intlgame/webview/WebViewManager$1;->val$finalWebViewResult:Lcom/intlgame/api/INTLResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/intlgame/webview/WebViewManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/intlgame/webview/WebViewManager$1;->val$finalWebViewResult:Lcom/intlgame/api/INTLResult;

    iget v1, v1, Lcom/intlgame/api/INTLResult;->ret_code_:I

    invoke-static {v0, v1}, Lcom/intlgame/webview/ShareManager;->showToast(Landroid/content/Context;I)V

    return-void
.end method
