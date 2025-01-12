.class Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$5;
.super Ljava/lang/Object;
.source "AIHelpSwipeRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->finishSpinner(F)V
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

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$5;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$5;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget-boolean p1, p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mScale:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$5;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
