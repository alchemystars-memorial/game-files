.class Lcom/intlgame/webview/WebViewMsgUtils$1;
.super Ljava/lang/Object;
.source "WebViewMsgUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/webview/WebViewMsgUtils;->onJniNotify(Ljava/lang/String;ZLcom/intlgame/api/webview/INTLWebViewRet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$webViewRet:Lcom/intlgame/api/webview/INTLWebViewRet;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/intlgame/api/webview/INTLWebViewRet;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewMsgUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/intlgame/webview/WebViewMsgUtils$1;->val$webViewRet:Lcom/intlgame/api/webview/INTLWebViewRet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/intlgame/webview/WebViewMsgUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/intlgame/webview/WebViewMsgUtils$1;->val$webViewRet:Lcom/intlgame/api/webview/INTLWebViewRet;

    iget v1, v1, Lcom/intlgame/api/webview/INTLWebViewRet;->ret_code_:I

    invoke-static {v0, v1}, Lcom/intlgame/webview/ShareManager;->showToast(Landroid/content/Context;I)V

    return-void
.end method
