.class Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$1;
.super Ljava/lang/Object;
.source "AIHelpCircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

.field final synthetic val$ring:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$1;->this$0:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    iput-object p2, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$1;->val$ring:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$1;->this$0:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$1;->val$ring:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0, p1, v1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->updateRingColor(FLnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$1;->this$0:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$1;->val$ring:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->applyTransformation(FLnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;Z)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$1;->this$0:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method
