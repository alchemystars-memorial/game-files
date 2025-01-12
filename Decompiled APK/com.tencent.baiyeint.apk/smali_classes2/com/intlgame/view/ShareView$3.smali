.class Lcom/intlgame/view/ShareView$3;
.super Ljava/lang/Object;
.source "ShareView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intlgame/view/ShareView;->dismiss(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intlgame/view/ShareView;

.field final synthetic val$itemPosition:I


# direct methods
.method constructor <init>(Lcom/intlgame/view/ShareView;I)V
    .locals 0

    iput-object p1, p0, Lcom/intlgame/view/ShareView$3;->this$0:Lcom/intlgame/view/ShareView;

    iput p2, p0, Lcom/intlgame/view/ShareView$3;->val$itemPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/intlgame/view/ShareView$3;->this$0:Lcom/intlgame/view/ShareView;

    invoke-static {p1}, Lcom/intlgame/view/ShareView;->access$000(Lcom/intlgame/view/ShareView;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/intlgame/view/ShareView$3$1;

    invoke-direct {v0, p0}, Lcom/intlgame/view/ShareView$3$1;-><init>(Lcom/intlgame/view/ShareView$3;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

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
