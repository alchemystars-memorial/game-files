.class Lnet/aihelp/ui/cs/ElvaBotFragment$10;
.super Ljava/lang/Object;
.source "ElvaBotFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/ElvaBotFragment;->showNetworkInterruptDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

.field final synthetic val$netCheckDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ElvaBotFragment;Lnet/aihelp/core/ui/dialog/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$10;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    iput-object p2, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$10;->val$netCheckDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$10;->val$netCheckDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$10;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-static {p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$1500(Lnet/aihelp/ui/cs/ElvaBotFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$10;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-static {p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$1500(Lnet/aihelp/ui/cs/ElvaBotFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$10;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$10;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_1
    return-void
.end method
