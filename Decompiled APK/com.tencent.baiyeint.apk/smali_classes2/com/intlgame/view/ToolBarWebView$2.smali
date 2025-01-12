.class Lcom/intlgame/view/ToolBarWebView$2;
.super Ljava/lang/Object;
.source "ToolBarWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/view/ToolBarWebView;->showWithDialog(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/view/ToolBarWebView;


# direct methods
.method constructor <init>(Lcom/intlgame/view/ToolBarWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/view/ToolBarWebView$2;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "Dialog dismiss"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$2;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$200(Lcom/intlgame/view/ToolBarWebView;)Lcom/intlgame/view/ToolBarWebView$ToolBarListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/view/ToolBarWebView$2;->this$0:Lcom/intlgame/view/ToolBarWebView;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarWebView;->access$200(Lcom/intlgame/view/ToolBarWebView;)Lcom/intlgame/view/ToolBarWebView$ToolBarListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/intlgame/view/ToolBarWebView$ToolBarListener;->onClose()V

    :cond_0
    return-void
.end method
