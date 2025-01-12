.class Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$8;
.super Landroid/view/animation/Animation;
.source "AIHelpSwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$8;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$8;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget p2, p2, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mStartingScale:F

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$8;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget v0, v0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mStartingScale:F

    neg-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$8;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    invoke-virtual {v0, p2}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setAnimationProgress(F)V

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$8;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    invoke-virtual {p2, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->moveToStart(F)V

    return-void
.end method
