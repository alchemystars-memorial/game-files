.class Lnet/aihelp/ui/cs/ElvaBotFragment$1;
.super Ljava/lang/Object;
.source "ElvaBotFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/ElvaBotFragment;->initEventAndData(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ElvaBotFragment;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$1;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$1;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$000(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/ui/adapter/faq/FaqAlertAdapter;->clear()V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$1;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$100(Lnet/aihelp/ui/cs/ElvaBotFragment;Ljava/lang/String;)V

    invoke-static {}, Lnet/aihelp/ui/helper/StatisticHelper;->whenSendButtonClicked()V

    return-void
.end method
