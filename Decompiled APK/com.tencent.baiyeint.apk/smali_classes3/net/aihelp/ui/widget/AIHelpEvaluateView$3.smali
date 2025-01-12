.class Lnet/aihelp/ui/widget/AIHelpEvaluateView$3;
.super Ljava/lang/Object;
.source "AIHelpEvaluateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/AIHelpEvaluateView;->showAdviceAlert(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$etFeedback:Landroid/widget/EditText;

.field final synthetic val$faqType:I

.field final synthetic val$feedbackDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

.field final synthetic val$mainId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/AIHelpEvaluateView;Landroid/widget/EditText;Landroid/content/Context;Lnet/aihelp/core/ui/dialog/AlertDialog;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$3;->this$0:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    iput-object p2, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$3;->val$etFeedback:Landroid/widget/EditText;

    iput-object p3, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$3;->val$feedbackDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    iput p5, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$3;->val$faqType:I

    iput-object p6, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$3;->val$mainId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$3;->val$etFeedback:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$3;->val$context:Landroid/content/Context;

    const-string v0, "aihelp_faq_feedback"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$3;->val$feedbackDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$3;->this$0:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$3;->val$faqType:I

    iget-object v2, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$3;->val$mainId:Ljava/lang/String;

    invoke-static {v0}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->access$000(Lnet/aihelp/ui/widget/AIHelpEvaluateView;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$3;->val$etFeedback:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->access$100(Lnet/aihelp/ui/widget/AIHelpEvaluateView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$3;->this$0:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    invoke-static {p1}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->access$200(Lnet/aihelp/ui/widget/AIHelpEvaluateView;)Lnet/aihelp/ui/widget/AIHelpButton;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpButton;->setVisibility(I)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$3;->this$0:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    invoke-static {p1}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->access$300(Lnet/aihelp/ui/widget/AIHelpEvaluateView;)Lnet/aihelp/ui/widget/AIHelpEvaluateView$OnAIHelpEvaluateViewCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$3;->this$0:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    invoke-static {p1}, Lnet/aihelp/ui/widget/AIHelpEvaluateView;->access$300(Lnet/aihelp/ui/widget/AIHelpEvaluateView;)Lnet/aihelp/ui/widget/AIHelpEvaluateView$OnAIHelpEvaluateViewCallback;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpEvaluateView$OnAIHelpEvaluateViewCallback;->onFeedbackConfirmed()V

    :cond_1
    return-void
.end method
