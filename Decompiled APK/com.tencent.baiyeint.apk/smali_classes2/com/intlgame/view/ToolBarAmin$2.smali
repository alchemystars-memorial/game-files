.class Lcom/intlgame/view/ToolBarAmin$2;
.super Ljava/lang/Object;
.source "ToolBarAmin.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/view/ToolBarAmin;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lp:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic this$0:Lcom/intlgame/view/ToolBarAmin;


# direct methods
.method constructor <init>(Lcom/intlgame/view/ToolBarAmin;)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/view/ToolBarAmin$2;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$100(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p1, p0, Lcom/intlgame/view/ToolBarAmin$2;->lp:Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin$2;->lp:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/intlgame/view/ToolBarAmin$2;->this$0:Lcom/intlgame/view/ToolBarAmin;

    invoke-static {p1}, Lcom/intlgame/view/ToolBarAmin;->access$100(Lcom/intlgame/view/ToolBarAmin;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/intlgame/view/ToolBarAmin$2;->lp:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
