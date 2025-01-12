.class Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$6;
.super Landroid/view/animation/Animation;
.source "AIHelpSwipeRefreshLayout.java"


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

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$6;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$6;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget-boolean p2, p2, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$6;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget p2, p2, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$6;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget v0, v0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mOriginalOffsetTop:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr p2, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$6;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget p2, p2, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mSpinnerOffsetEnd:I

    :goto_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$6;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget v0, v0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mFrom:I

    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$6;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget v1, v1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mFrom:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    add-int/2addr v0, p2

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$6;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget-object p2, p2, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mCircleView:Lnet/aihelp/ui/widget/AIHelpCircleImageView;

    invoke-virtual {p2}, Lnet/aihelp/ui/widget/AIHelpCircleImageView;->getTop()I

    move-result p2

    sub-int/2addr v0, p2

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$6;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    invoke-virtual {p2, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$6;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget-object p2, p2, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setArrowScale(F)V

    return-void
.end method
