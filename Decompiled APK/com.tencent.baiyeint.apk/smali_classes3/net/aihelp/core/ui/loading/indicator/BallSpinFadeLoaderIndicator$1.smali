.class Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$1;
.super Ljava/lang/Object;
.source "BallSpinFadeLoaderIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->createAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;I)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$1;->this$0:Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;

    iput p2, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$1;->this$0:Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;

    iget-object v0, v0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->scaleFloats:[F

    iget v1, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, v1

    iget-object p1, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$1;->this$0:Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;->postInvalidate()V

    return-void
.end method
