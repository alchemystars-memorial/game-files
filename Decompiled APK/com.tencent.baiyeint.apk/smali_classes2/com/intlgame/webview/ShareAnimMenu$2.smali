.class Lcom/intlgame/webview/ShareAnimMenu$2;
.super Ljava/lang/Object;
.source "ShareAnimMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/webview/ShareAnimMenu;->dismiss(Lcom/intlgame/webview/ShareAnimMenu$IDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/webview/ShareAnimMenu;

.field final synthetic val$listener:Lcom/intlgame/webview/ShareAnimMenu$IDismissListener;


# direct methods
.method constructor <init>(Lcom/intlgame/webview/ShareAnimMenu;Lcom/intlgame/webview/ShareAnimMenu$IDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/ShareAnimMenu$2;->this$0:Lcom/intlgame/webview/ShareAnimMenu;

    iput-object p2, p0, Lcom/intlgame/webview/ShareAnimMenu$2;->val$listener:Lcom/intlgame/webview/ShareAnimMenu$IDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/intlgame/webview/ShareAnimMenu$2;->this$0:Lcom/intlgame/webview/ShareAnimMenu;

    invoke-static {p1}, Lcom/intlgame/webview/ShareAnimMenu;->access$100(Lcom/intlgame/webview/ShareAnimMenu;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/intlgame/webview/ShareAnimMenu$2$1;

    invoke-direct {v0, p0}, Lcom/intlgame/webview/ShareAnimMenu$2$1;-><init>(Lcom/intlgame/webview/ShareAnimMenu$2;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
