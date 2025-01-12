.class Lcom/intlgame/view/ToolBarWebView$ComponentCallback;
.super Ljava/lang/Object;
.source "ToolBarWebView.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/view/ToolBarWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/view/ToolBarWebView;


# direct methods
.method private constructor <init>(Lcom/intlgame/view/ToolBarWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/view/ToolBarWebView$ComponentCallback;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intlgame/view/ToolBarWebView;Lcom/intlgame/view/ToolBarWebView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intlgame/view/ToolBarWebView$ComponentCallback;-><init>(Lcom/intlgame/view/ToolBarWebView;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "Toolbar WebView onConfigurationChanged"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/view/ToolBarWebView$ComponentCallback;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarWebView;->access$1200(Lcom/intlgame/view/ToolBarWebView;)Lcom/intlgame/view/ToolBarAmin;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$ComponentCallback;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$1200(Lcom/intlgame/view/ToolBarWebView;)Lcom/intlgame/view/ToolBarAmin;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/intlgame/view/ToolBarAmin;->showTitleBar(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$ComponentCallback;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$1200(Lcom/intlgame/view/ToolBarWebView;)Lcom/intlgame/view/ToolBarAmin;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/intlgame/view/ToolBarAmin;->showTitleBar(Z)V

    :goto_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const-string v0, "onLowMemory"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void
.end method
