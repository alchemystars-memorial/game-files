.class Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$7;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;


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

    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$7;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 0

    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$7;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    iget-object p1, p1, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$7;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-static {p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->access$900(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V

    return-void
.end method
