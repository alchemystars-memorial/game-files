.class Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ToolBarAmin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intlgame/view/ToolBarAmin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/view/ToolBarAmin;


# direct methods
.method public constructor <init>(Lcom/intlgame/view/ToolBarAmin;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarAmin;->access$400(Lcom/intlgame/view/ToolBarAmin;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_0
    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$500(Lcom/intlgame/view/ToolBarAmin;)Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/webkit/WebView;->getContentHeight()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarAmin;->access$500(Lcom/intlgame/view/ToolBarAmin;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarAmin;->access$600(Lcom/intlgame/view/ToolBarAmin;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarAmin;->access$500(Lcom/intlgame/view/ToolBarAmin;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    if-ge p3, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "contentHeight : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "WebViewHeight"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p2}, Lcom/intlgame/view/ToolBarAmin;->access$500(Lcom/intlgame/view/ToolBarAmin;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result p2

    add-int/lit8 p2, p2, 0x3c

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p3, v0

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarAmin;->access$700(Lcom/intlgame/view/ToolBarAmin;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p3, p3, v0

    if-gtz p3, :cond_10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p3, v0

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarAmin;->access$700(Lcom/intlgame/view/ToolBarAmin;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p3, p3, v0

    if-lez p3, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p3, v0

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {v0}, Lcom/intlgame/view/ToolBarAmin;->access$800(Lcom/intlgame/view/ToolBarAmin;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p3, p3, v0

    const/16 v0, 0xb

    const/4 v2, 0x2

    if-lez p3, :cond_9

    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$600(Lcom/intlgame/view/ToolBarAmin;)Z

    move-result p3

    if-nez p3, :cond_3

    return v1

    :cond_3
    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3, v1}, Lcom/intlgame/view/ToolBarAmin;->access$602(Lcom/intlgame/view/ToolBarAmin;Z)Z

    :try_start_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v0, :cond_6

    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$900(Lcom/intlgame/view/ToolBarAmin;)I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    mul-int/lit8 p3, p3, 0x5

    int-to-float p3, p3

    neg-float v3, p4

    div-float/2addr p3, v3

    float-to-int p3, p3

    iget-object v3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {v3, p3}, Lcom/intlgame/view/ToolBarAmin;->access$1000(Lcom/intlgame/view/ToolBarAmin;I)V

    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$1100(Lcom/intlgame/view/ToolBarAmin;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$1200(Lcom/intlgame/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$300(Lcom/intlgame/view/ToolBarAmin;)I

    move-result p3

    if-ne v2, p3, :cond_5

    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$1300(Lcom/intlgame/view/ToolBarAmin;)Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$1400(Lcom/intlgame/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$1500(Lcom/intlgame/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_5
    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$1600(Lcom/intlgame/view/ToolBarAmin;)Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$1400(Lcom/intlgame/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$1500(Lcom/intlgame/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_6
    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$1100(Lcom/intlgame/view/ToolBarAmin;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$100(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p3

    iget-object v3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {v3}, Lcom/intlgame/view/ToolBarAmin;->access$1700(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_7
    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$300(Lcom/intlgame/view/ToolBarAmin;)I

    move-result p3

    if-ne v2, p3, :cond_8

    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$1300(Lcom/intlgame/view/ToolBarAmin;)Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$200(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p3

    iget-object v3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {v3}, Lcom/intlgame/view/ToolBarAmin;->access$1800(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_8
    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$1600(Lcom/intlgame/view/ToolBarAmin;)Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p3}, Lcom/intlgame/view/ToolBarAmin;->access$200(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p3

    iget-object v3, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {v3}, Lcom/intlgame/view/ToolBarAmin;->access$1800(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$800(Lcom/intlgame/view/ToolBarAmin;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_10

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$600(Lcom/intlgame/view/ToolBarAmin;)Z

    move-result p1

    if-eqz p1, :cond_a

    return v1

    :cond_a
    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/intlgame/view/ToolBarAmin;->access$602(Lcom/intlgame/view/ToolBarAmin;Z)Z

    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_d

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$900(Lcom/intlgame/view/ToolBarAmin;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    mul-int/lit8 p1, p1, 0x5

    int-to-float p1, p1

    div-float/2addr p1, p4

    float-to-int p1, p1

    iget-object p2, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p2, p1}, Lcom/intlgame/view/ToolBarAmin;->access$1000(Lcom/intlgame/view/ToolBarAmin;I)V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$1100(Lcom/intlgame/view/ToolBarAmin;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$1900(Lcom/intlgame/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_b
    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$300(Lcom/intlgame/view/ToolBarAmin;)I

    move-result p1

    if-ne v2, p1, :cond_c

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$1300(Lcom/intlgame/view/ToolBarAmin;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$2000(Lcom/intlgame/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$2100(Lcom/intlgame/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_c
    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$1600(Lcom/intlgame/view/ToolBarAmin;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$2000(Lcom/intlgame/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$2100(Lcom/intlgame/view/ToolBarAmin;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_d
    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$1100(Lcom/intlgame/view/ToolBarAmin;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$100(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p2}, Lcom/intlgame/view/ToolBarAmin;->access$2200(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_e
    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$300(Lcom/intlgame/view/ToolBarAmin;)I

    move-result p1

    if-ne v2, p1, :cond_f

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$1300(Lcom/intlgame/view/ToolBarAmin;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$200(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p2}, Lcom/intlgame/view/ToolBarAmin;->access$2300(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_f
    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$1600(Lcom/intlgame/view/ToolBarAmin;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$200(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/intlgame/view/ToolBarAmin$WebViewGestureListener;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p2}, Lcom/intlgame/view/ToolBarAmin;->access$2300(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_1
    return v1
.end method
