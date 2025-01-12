.class Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$8;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->animateViewIn()V
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

    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$8;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$8;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$8;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setVisibility(I)V

    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$8;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getAnimationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$8;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->access$1000(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$8;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->access$1100(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V

    :goto_0
    return-void
.end method
