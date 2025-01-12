.class Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$1;
.super Ljava/lang/Object;
.source "AIHelpSwipeRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;
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

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$1;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$1;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget-boolean p1, p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mRefreshing:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$1;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget-object p1, p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setAlpha(I)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$1;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget-object p1, p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->start()V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$1;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget-boolean p1, p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mNotify:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$1;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget-object p1, p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mListener:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$OnRefreshListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$1;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget-object p1, p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mListener:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$OnRefreshListener;

    invoke-interface {p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$1;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget-object v0, p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getTop()I

    move-result v0

    iput v0, p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$1;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->reset()V

    :goto_0
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
