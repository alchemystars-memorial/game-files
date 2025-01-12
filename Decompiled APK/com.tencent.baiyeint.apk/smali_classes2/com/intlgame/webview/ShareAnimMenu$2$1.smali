.class Lcom/intlgame/webview/ShareAnimMenu$2$1;
.super Ljava/lang/Object;
.source "ShareAnimMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/webview/ShareAnimMenu$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/intlgame/webview/ShareAnimMenu$2;


# direct methods
.method constructor <init>(Lcom/intlgame/webview/ShareAnimMenu$2;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/ShareAnimMenu$2$1;->this$1:Lcom/intlgame/webview/ShareAnimMenu$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/intlgame/webview/ShareAnimMenu$2$1;->this$1:Lcom/intlgame/webview/ShareAnimMenu$2;

    iget-object v0, v0, Lcom/intlgame/webview/ShareAnimMenu$2;->this$0:Lcom/intlgame/webview/ShareAnimMenu;

    invoke-static {v0}, Lcom/intlgame/webview/ShareAnimMenu;->access$100(Lcom/intlgame/webview/ShareAnimMenu;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/intlgame/webview/ShareAnimMenu$2$1;->this$1:Lcom/intlgame/webview/ShareAnimMenu$2;

    iget-object v1, v1, Lcom/intlgame/webview/ShareAnimMenu$2;->this$0:Lcom/intlgame/webview/ShareAnimMenu;

    invoke-static {v1}, Lcom/intlgame/webview/ShareAnimMenu;->access$000(Lcom/intlgame/webview/ShareAnimMenu;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/intlgame/webview/ShareAnimMenu$2$1;->this$1:Lcom/intlgame/webview/ShareAnimMenu$2;

    iget-object v0, v0, Lcom/intlgame/webview/ShareAnimMenu$2;->this$0:Lcom/intlgame/webview/ShareAnimMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intlgame/webview/ShareAnimMenu;->access$202(Lcom/intlgame/webview/ShareAnimMenu;Z)Z

    iget-object v0, p0, Lcom/intlgame/webview/ShareAnimMenu$2$1;->this$1:Lcom/intlgame/webview/ShareAnimMenu$2;

    iget-object v0, v0, Lcom/intlgame/webview/ShareAnimMenu$2;->val$listener:Lcom/intlgame/webview/ShareAnimMenu$IDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intlgame/webview/ShareAnimMenu$2$1;->this$1:Lcom/intlgame/webview/ShareAnimMenu$2;

    iget-object v0, v0, Lcom/intlgame/webview/ShareAnimMenu$2;->val$listener:Lcom/intlgame/webview/ShareAnimMenu$IDismissListener;

    invoke-interface {v0}, Lcom/intlgame/webview/ShareAnimMenu$IDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method
