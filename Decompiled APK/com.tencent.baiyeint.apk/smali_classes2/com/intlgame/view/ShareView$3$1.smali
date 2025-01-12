.class Lcom/intlgame/view/ShareView$3$1;
.super Ljava/lang/Object;
.source "ShareView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/view/ShareView$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/intlgame/view/ShareView$3;


# direct methods
.method constructor <init>(Lcom/intlgame/view/ShareView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/view/ShareView$3$1;->this$1:Lcom/intlgame/view/ShareView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/intlgame/view/ShareView$3$1;->this$1:Lcom/intlgame/view/ShareView$3;

    iget-object v0, v0, Lcom/intlgame/view/ShareView$3;->this$0:Lcom/intlgame/view/ShareView;

    invoke-static {v0}, Lcom/intlgame/view/ShareView;->access$000(Lcom/intlgame/view/ShareView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intlgame/view/ShareView$3$1;->this$1:Lcom/intlgame/view/ShareView$3;

    iget-object v0, v0, Lcom/intlgame/view/ShareView$3;->this$0:Lcom/intlgame/view/ShareView;

    invoke-static {v0}, Lcom/intlgame/view/ShareView;->access$000(Lcom/intlgame/view/ShareView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/intlgame/view/ShareView$3$1;->this$1:Lcom/intlgame/view/ShareView$3;

    iget-object v1, v1, Lcom/intlgame/view/ShareView$3;->this$0:Lcom/intlgame/view/ShareView;

    invoke-static {v1}, Lcom/intlgame/view/ShareView;->access$000(Lcom/intlgame/view/ShareView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/intlgame/view/ShareView$3$1;->this$1:Lcom/intlgame/view/ShareView$3;

    iget-object v0, v0, Lcom/intlgame/view/ShareView$3;->this$0:Lcom/intlgame/view/ShareView;

    invoke-static {v0}, Lcom/intlgame/view/ShareView;->access$100(Lcom/intlgame/view/ShareView;)Lcom/intlgame/view/ShareView$ShareListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/intlgame/view/ShareView$3$1;->this$1:Lcom/intlgame/view/ShareView$3;

    iget v0, v0, Lcom/intlgame/view/ShareView$3;->val$itemPosition:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    const-string v0, "share call back"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/intlgame/view/ShareView$3$1;->this$1:Lcom/intlgame/view/ShareView$3;

    iget-object v0, v0, Lcom/intlgame/view/ShareView$3;->this$0:Lcom/intlgame/view/ShareView;

    invoke-static {v0}, Lcom/intlgame/view/ShareView;->access$200(Lcom/intlgame/view/ShareView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/intlgame/view/ShareView$3$1;->this$1:Lcom/intlgame/view/ShareView$3;

    iget v0, v0, Lcom/intlgame/view/ShareView$3;->val$itemPosition:I

    iget-object v1, p0, Lcom/intlgame/view/ShareView$3$1;->this$1:Lcom/intlgame/view/ShareView$3;

    iget-object v1, v1, Lcom/intlgame/view/ShareView$3;->this$0:Lcom/intlgame/view/ShareView;

    invoke-static {v1}, Lcom/intlgame/view/ShareView;->access$200(Lcom/intlgame/view/ShareView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/intlgame/view/ShareView$3$1;->this$1:Lcom/intlgame/view/ShareView$3;

    iget-object v0, v0, Lcom/intlgame/view/ShareView$3;->this$0:Lcom/intlgame/view/ShareView;

    invoke-static {v0}, Lcom/intlgame/view/ShareView;->access$200(Lcom/intlgame/view/ShareView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/intlgame/view/ShareView$3$1;->this$1:Lcom/intlgame/view/ShareView$3;

    iget v1, v1, Lcom/intlgame/view/ShareView$3;->val$itemPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intlgame/webview/ShareAdapter$ItemData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "share call back\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/intlgame/webview/ShareAdapter$ItemData;->channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/view/ShareView$3$1;->this$1:Lcom/intlgame/view/ShareView$3;

    iget-object v1, v1, Lcom/intlgame/view/ShareView$3;->this$0:Lcom/intlgame/view/ShareView;

    invoke-static {v1}, Lcom/intlgame/view/ShareView;->access$100(Lcom/intlgame/view/ShareView;)Lcom/intlgame/view/ShareView$ShareListener;

    move-result-object v1

    iget-object v0, v0, Lcom/intlgame/webview/ShareAdapter$ItemData;->channel:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/intlgame/view/ShareView$ShareListener;->onShare(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/intlgame/view/ShareView$3$1;->this$1:Lcom/intlgame/view/ShareView$3;

    iget-object v0, v0, Lcom/intlgame/view/ShareView$3;->this$0:Lcom/intlgame/view/ShareView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intlgame/view/ShareView;->access$302(Lcom/intlgame/view/ShareView;Z)Z

    return-void
.end method
