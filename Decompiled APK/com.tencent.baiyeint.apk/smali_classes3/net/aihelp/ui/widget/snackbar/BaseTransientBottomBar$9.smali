.class Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->startFadeInAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$9;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$9;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->onViewShown()V

    return-void
.end method
