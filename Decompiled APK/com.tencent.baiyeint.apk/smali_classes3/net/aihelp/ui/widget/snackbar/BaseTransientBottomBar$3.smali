.class Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$3;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lnet/aihelp/ui/widget/snackbar/ContentViewCallback;)V
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

    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$3;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$3;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-static {p1, v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->access$502(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;I)I

    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$3;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-static {p1, v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->access$602(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;I)I

    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$3;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v0

    invoke-static {p1, v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->access$702(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;I)I

    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$3;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-static {p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->access$800(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V

    return-object p2
.end method
