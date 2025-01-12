.class Lnet/aihelp/ui/cs/ElvaBotFragment$4;
.super Ljava/lang/Object;
.source "ElvaBotFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/ElvaBotFragment;->showAdviceAlert(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

.field final synthetic val$feedbackDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ElvaBotFragment;Lnet/aihelp/core/ui/dialog/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$4;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    iput-object p2, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$4;->val$feedbackDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$4;->val$feedbackDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    return-void
.end method
