.class Lcom/intlgame/webview/SameProcessWebViewActivity$1;
.super Ljava/lang/Object;
.source "SameProcessWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/webview/SameProcessWebViewActivity;->sendMessageToObserver(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/webview/SameProcessWebViewActivity;

.field final synthetic val$extraJson:Ljava/lang/String;

.field final synthetic val$parasJsonMsg:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/intlgame/webview/SameProcessWebViewActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/SameProcessWebViewActivity$1;->this$0:Lcom/intlgame/webview/SameProcessWebViewActivity;

    iput p2, p0, Lcom/intlgame/webview/SameProcessWebViewActivity$1;->val$what:I

    iput-object p3, p0, Lcom/intlgame/webview/SameProcessWebViewActivity$1;->val$parasJsonMsg:Ljava/lang/String;

    iput-object p4, p0, Lcom/intlgame/webview/SameProcessWebViewActivity$1;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/intlgame/webview/SameProcessWebViewActivity$1;->val$extraJson:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/intlgame/webview/SameProcessWebViewActivity$1;->val$what:I

    iget-object v1, p0, Lcom/intlgame/webview/SameProcessWebViewActivity$1;->val$parasJsonMsg:Ljava/lang/String;

    iget-object v2, p0, Lcom/intlgame/webview/SameProcessWebViewActivity$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/intlgame/webview/SameProcessWebViewActivity$1;->val$extraJson:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/intlgame/webview/WebViewMsgUtils;->handleMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
