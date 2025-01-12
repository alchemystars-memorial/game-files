.class Lnet/aihelp/ui/cs/ElvaBotFragment$5;
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

.field final synthetic val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

.field final synthetic val$etFeedback:Landroid/widget/EditText;

.field final synthetic val$feedbackDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ElvaBotFragment;Landroid/widget/EditText;Lnet/aihelp/data/model/cs/ElvaBotMsg;Lnet/aihelp/core/ui/dialog/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$5;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    iput-object p2, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$5;->val$etFeedback:Landroid/widget/EditText;

    iput-object p3, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$5;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    iput-object p4, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$5;->val$feedbackDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$5;->val$etFeedback:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$5;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "aihelp_faq_feedback"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$5;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-static {p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$1100(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;

    move-result-object p1

    check-cast p1, Lnet/aihelp/data/logic/ElvaBotPresenter;

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$5;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$5;->val$etFeedback:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/data/logic/ElvaBotPresenter;->postFeedbackOnFaq(Lnet/aihelp/data/model/cs/ElvaBotMsg;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$5;->val$feedbackDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$5;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$5;->val$etFeedback:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lnet/aihelp/utils/SoftInputUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$5;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$5;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-virtual {v0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getTimeStamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x190

    iget-object v2, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$5;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-virtual {v2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getFaqTicketId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lnet/aihelp/ui/cs/ElvaBotFragment;->updateFAQFeedback(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
