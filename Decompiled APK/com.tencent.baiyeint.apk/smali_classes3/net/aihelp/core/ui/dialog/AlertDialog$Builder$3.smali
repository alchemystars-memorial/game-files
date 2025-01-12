.class Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$3;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setClickListeners(Lnet/aihelp/core/ui/dialog/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

.field final synthetic val$dialog:Lnet/aihelp/core/ui/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;Lnet/aihelp/core/ui/dialog/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$3;->this$0:Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    iput-object p2, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$3;->val$dialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$3;->this$0:Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    invoke-static {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->access$100(Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$OnDoubleChoiceListener;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$3;->val$dialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-interface {p1, v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder$OnDoubleChoiceListener;->onCancelClicked(Lnet/aihelp/core/ui/dialog/AlertDialog;)V

    return-void
.end method
