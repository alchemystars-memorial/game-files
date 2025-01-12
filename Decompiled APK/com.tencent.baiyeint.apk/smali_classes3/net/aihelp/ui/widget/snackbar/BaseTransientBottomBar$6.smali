.class Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->showView()V
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

    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    iget-object p1, p1, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-static {v0, p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->access$302(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;I)I

    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-static {p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->access$800(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->isShownOrQueued()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    new-instance v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6$1;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6$1;-><init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
