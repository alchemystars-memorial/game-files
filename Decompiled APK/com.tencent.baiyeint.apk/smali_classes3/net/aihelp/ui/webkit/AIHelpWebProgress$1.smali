.class Lnet/aihelp/ui/webkit/AIHelpWebProgress$1;
.super Ljava/lang/Object;
.source "AIHelpWebProgress.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/webkit/AIHelpWebProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/webkit/AIHelpWebProgress;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/webkit/AIHelpWebProgress;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress$1;->this$0:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress$1;->this$0:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->access$002(Lnet/aihelp/ui/webkit/AIHelpWebProgress;F)F

    iget-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress$1;->this$0:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    invoke-virtual {p1}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->invalidate()V

    return-void
.end method
