.class Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/webview/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewAnimListener"
.end annotation


# static fields
.field private static final STATE_HIDE:I = 0x2

.field private static final STATE_SHOW:I = 0x1


# instance fields
.field private state:I

.field final synthetic this$0:Lcom/intlgame/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/intlgame/webview/WebViewActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;->state:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;->state:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$1000(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$1000(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x2

    iget-object v2, p0, Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v2}, Lcom/intlgame/webview/WebViewActivity;->access$1800(Lcom/intlgame/webview/WebViewActivity;)I

    move-result v2

    if-eq p1, v2, :cond_1

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$900(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$900(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;->state:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$1000(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$1800(Lcom/intlgame/webview/WebViewActivity;)I

    move-result p1

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewAnimListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$900(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
