.class Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$2;
.super Landroid/view/animation/Animation;
.source "AIHelpSwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
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

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$2;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$2;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    invoke-virtual {p2, p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method
