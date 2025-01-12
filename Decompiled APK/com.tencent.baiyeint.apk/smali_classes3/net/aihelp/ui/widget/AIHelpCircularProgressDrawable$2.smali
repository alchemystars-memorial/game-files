.class Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$2;
.super Ljava/lang/Object;
.source "AIHelpCircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$2;->this$0:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    iput-object p2, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$2;->val$ring:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$2;->this$0:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$2;->val$ring:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->applyTransformation(FLnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;Z)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$2;->val$ring:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->storeOriginals()V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$2;->val$ring:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->goToNextColor()V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$2;->this$0:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    iget-boolean v0, v0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$2;->this$0:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mFinishing:Z

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-wide/16 v2, 0x534

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$2;->val$ring:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {p1, v1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setShowArrow(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$2;->this$0:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    iget v0, p1, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRotationCount:F

    add-float/2addr v0, v2

    iput v0, p1, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRotationCount:F

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$2;->this$0:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    const/4 v0, 0x0

    iput v0, p1, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRotationCount:F

    return-void
.end method
