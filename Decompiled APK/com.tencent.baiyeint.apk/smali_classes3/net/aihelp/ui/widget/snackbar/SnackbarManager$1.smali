.class Lnet/aihelp/ui/widget/snackbar/SnackbarManager$1;
.super Ljava/lang/Object;
.source "SnackbarManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/snackbar/SnackbarManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/snackbar/SnackbarManager;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/snackbar/SnackbarManager;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$1;->this$0:Lnet/aihelp/ui/widget/snackbar/SnackbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$1;->this$0:Lnet/aihelp/ui/widget/snackbar/SnackbarManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->handleTimeout(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;)V

    const/4 p1, 0x1

    return p1
.end method
