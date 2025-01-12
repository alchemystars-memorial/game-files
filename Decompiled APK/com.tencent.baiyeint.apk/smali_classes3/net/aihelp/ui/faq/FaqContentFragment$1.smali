.class Lnet/aihelp/ui/faq/FaqContentFragment$1;
.super Lnet/aihelp/ui/widget/AIHelpEvaluateView$OnAIHelpEvaluateViewCallback;
.source "FaqContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/faq/FaqContentFragment;->refreshQuestionContent(Lnet/aihelp/data/model/faq/FaqContentEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/faq/FaqContentFragment;

.field final synthetic val$faq:Lnet/aihelp/data/model/faq/FaqContentEntity;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/faq/FaqContentFragment;Lnet/aihelp/data/model/faq/FaqContentEntity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/faq/FaqContentFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqContentFragment;

    iput-object p2, p0, Lnet/aihelp/ui/faq/FaqContentFragment$1;->val$faq:Lnet/aihelp/data/model/faq/FaqContentEntity;

    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpEvaluateView$OnAIHelpEvaluateViewCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvaluated(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/faq/FaqContentFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqContentFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/faq/FaqContentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/faq/FaqContentFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqContentFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/faq/FaqContentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/16 v0, 0x3e9

    const-string v1, "faq_support_moment"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/faq/FaqContentFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqContentFragment;

    invoke-static {p1}, Lnet/aihelp/ui/faq/FaqContentFragment;->access$000(Lnet/aihelp/ui/faq/FaqContentFragment;)Lnet/aihelp/ui/widget/AIHelpServiceEntrance;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->setVisibility(I)V

    :cond_0
    sget-object p1, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqContentFragment$1;->val$faq:Lnet/aihelp/data/model/faq/FaqContentEntity;

    invoke-virtual {v0}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getFaqMainId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/aihelp/data/localize/data/FaqHelper;->afterFaqEvaluated(Ljava/lang/String;)V

    return-void
.end method
