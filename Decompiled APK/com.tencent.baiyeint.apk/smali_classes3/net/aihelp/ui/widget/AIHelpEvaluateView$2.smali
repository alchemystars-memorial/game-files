.class Lnet/aihelp/ui/widget/AIHelpEvaluateView$2;
.super Lnet/aihelp/ui/wrapper/TextWatcherWrapper;
.source "AIHelpEvaluateView.java"


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

.field final synthetic val$tvConfirm:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/AIHelpEvaluateView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$2;->this$0:Lnet/aihelp/ui/widget/AIHelpEvaluateView;

    iput-object p2, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$2;->val$tvConfirm:Landroid/widget/TextView;

    invoke-direct {p0}, Lnet/aihelp/ui/wrapper/TextWatcherWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$2;->val$tvConfirm:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpEvaluateView$2;->val$tvConfirm:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
