.class Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$3;
.super Landroid/view/animation/Animation;
.source "AIHelpSwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
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

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$3;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$3;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method
