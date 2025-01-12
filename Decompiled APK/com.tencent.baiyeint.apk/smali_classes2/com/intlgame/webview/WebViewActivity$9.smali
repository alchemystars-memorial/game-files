.class Lcom/intlgame/webview/WebViewActivity$9;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/webview/WebViewActivity;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lp:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic this$0:Lcom/intlgame/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/intlgame/webview/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity$9;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$1000(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity$9;->lp:Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$9;->lp:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$9;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$1000(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$9;->lp:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
