.class Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$4;
.super Landroid/view/animation/Animation;
.source "AIHelpSwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

.field final synthetic val$endingAlpha:I

.field final synthetic val$startingAlpha:I


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;II)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$4;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iput p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$4;->val$startingAlpha:I

    iput p3, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$4;->val$endingAlpha:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$4;->this$0:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iget-object p2, p2, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->mProgress:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;

    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$4;->val$startingAlpha:I

    int-to-float v1, v0

    iget v2, p0, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$4;->val$endingAlpha:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    invoke-virtual {p2, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setAlpha(I)V

    return-void
.end method
