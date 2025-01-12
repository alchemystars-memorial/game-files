.class Lcom/intlgame/webview/WebViewActivity$11;
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
.field final synthetic this$0:Lcom/intlgame/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/intlgame/webview/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity$11;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$11;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$1000(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method
