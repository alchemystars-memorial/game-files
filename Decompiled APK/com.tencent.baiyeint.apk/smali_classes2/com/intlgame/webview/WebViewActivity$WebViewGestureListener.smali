.class Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/webview/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/intlgame/webview/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    iget-object p3, p3, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {p3}, Lcom/intlgame/webview/WebViewProxy;->getContentHeight()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    iget-object v0, v0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->getScale()F

    move-result v0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$1100(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    iget-object v0, v0, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {v0}, Lcom/intlgame/webview/WebViewProxy;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    if-ge p3, v0, :cond_0

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-virtual {p1}, Lcom/intlgame/webview/WebViewActivity;->getLogger()Lcom/intlgame/webview/ipc/WebViewLogger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "contentHeight : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "WebViewHeight"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    iget-object p3, p3, Lcom/intlgame/webview/WebViewActivity;->mWebView:Lcom/intlgame/webview/WebViewProxy;

    invoke-virtual {p3}, Lcom/intlgame/webview/WebViewProxy;->getHeight()I

    move-result p3

    add-int/lit8 p3, p3, 0x3c

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/intlgame/webview/ipc/WebViewLogger;->i(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p3, v0

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$1200(Lcom/intlgame/webview/WebViewActivity;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p3, p3, v0

    if-gtz p3, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p3, v0

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$1200(Lcom/intlgame/webview/WebViewActivity;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p3, p3, v0

    if-lez p3, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p3, v0

    iget-object v0, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v0}, Lcom/intlgame/webview/WebViewActivity;->access$1300(Lcom/intlgame/webview/WebViewActivity;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p3, p3, v0

    const/16 v0, 0xb

    const/4 v2, 0x2

    if-lez p3, :cond_8

    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$1100(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_2

    return v1

    :cond_2
    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/intlgame/webview/WebViewActivity;->access$1102(Lcom/intlgame/webview/WebViewActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :try_start_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v0, :cond_5

    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$1400(Lcom/intlgame/webview/WebViewActivity;)I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    mul-int/lit8 p3, p3, 0x5

    int-to-float p3, p3

    neg-float v3, p4

    div-float/2addr p3, v3

    float-to-int p3, p3

    iget-object v3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v3, p3}, Lcom/intlgame/webview/WebViewActivity;->access$1500(Lcom/intlgame/webview/WebViewActivity;I)V

    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$1600(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$1700(Lcom/intlgame/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$1800(Lcom/intlgame/webview/WebViewActivity;)I

    move-result p3

    if-ne v2, p3, :cond_4

    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$1900(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$2000(Lcom/intlgame/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$2100(Lcom/intlgame/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    :cond_4
    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$2200(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$2000(Lcom/intlgame/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$2100(Lcom/intlgame/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_5
    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$1600(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$900(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object p3

    iget-object v3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v3}, Lcom/intlgame/webview/WebViewActivity;->access$2300(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$1800(Lcom/intlgame/webview/WebViewActivity;)I

    move-result p3

    if-ne v2, p3, :cond_7

    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$1900(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$1000(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object p3

    iget-object v3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v3}, Lcom/intlgame/webview/WebViewActivity;->access$2400(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_7
    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$2200(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p3}, Lcom/intlgame/webview/WebViewActivity;->access$1000(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object p3

    iget-object v3, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {v3}, Lcom/intlgame/webview/WebViewActivity;->access$2400(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$1300(Lcom/intlgame/webview/WebViewActivity;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_f

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$1100(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    return v1

    :cond_9
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/intlgame/webview/WebViewActivity;->access$1102(Lcom/intlgame/webview/WebViewActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_c

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$1400(Lcom/intlgame/webview/WebViewActivity;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    mul-int/lit8 p1, p1, 0x5

    int-to-float p1, p1

    div-float/2addr p1, p4

    float-to-int p1, p1

    iget-object p2, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p2, p1}, Lcom/intlgame/webview/WebViewActivity;->access$1500(Lcom/intlgame/webview/WebViewActivity;I)V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$1600(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$2500(Lcom/intlgame/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_a
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$1800(Lcom/intlgame/webview/WebViewActivity;)I

    move-result p1

    if-ne v2, p1, :cond_b

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$1900(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$2600(Lcom/intlgame/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$2700(Lcom/intlgame/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    :cond_b
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$2200(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$2600(Lcom/intlgame/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$2700(Lcom/intlgame/webview/WebViewActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_c
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$1600(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$900(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p2}, Lcom/intlgame/webview/WebViewActivity;->access$2800(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_d
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$1800(Lcom/intlgame/webview/WebViewActivity;)I

    move-result p1

    if-ne v2, p1, :cond_e

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$1900(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$1000(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p2}, Lcom/intlgame/webview/WebViewActivity;->access$2900(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_e
    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$2200(Lcom/intlgame/webview/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p1}, Lcom/intlgame/webview/WebViewActivity;->access$1000(Lcom/intlgame/webview/WebViewActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/intlgame/webview/WebViewActivity$WebViewGestureListener;->this$0:Lcom/intlgame/webview/WebViewActivity;

    invoke-static {p2}, Lcom/intlgame/webview/WebViewActivity;->access$2900(Lcom/intlgame/webview/WebViewActivity;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_1
    return v1
.end method
