.class Lnet/aihelp/ui/faq/FaqListFragment$1;
.super Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;
.source "FaqListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/faq/FaqListFragment;->initEventAndData(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final bundle:Landroid/os/Bundle;

.field final synthetic this$0:Lnet/aihelp/ui/faq/FaqListFragment;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/faq/FaqListFragment;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/faq/FaqListFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqListFragment;

    invoke-direct {p0}, Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;-><init>()V

    invoke-virtual {p1}, Lnet/aihelp/ui/faq/FaqListFragment;->getMergedBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/ui/faq/FaqListFragment$1;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onIntentToQuestionContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lnet/aihelp/ui/faq/FaqListFragment$1;->bundle:Landroid/os/Bundle;

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqListFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqListFragment;

    invoke-static {v0}, Lnet/aihelp/ui/faq/FaqListFragment;->access$000(Lnet/aihelp/ui/faq/FaqListFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "section_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lnet/aihelp/ui/faq/FaqListFragment$1;->bundle:Landroid/os/Bundle;

    const-string v0, "faq_main_id"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/ui/faq/FaqListFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqListFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/faq/FaqListFragment;->getFaqFlowListener()Lnet/aihelp/ui/faq/IFaqEventListener;

    move-result-object p1

    iget-object p2, p0, Lnet/aihelp/ui/faq/FaqListFragment$1;->bundle:Landroid/os/Bundle;

    invoke-interface {p1, p2}, Lnet/aihelp/ui/faq/IFaqEventListener;->onIntentToQuestionContent(Landroid/os/Bundle;)V

    return-void
.end method

.method public onIntentToSubSectionOrQuestionList(Lnet/aihelp/data/model/faq/FaqListEntity;)V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqListFragment$1;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lnet/aihelp/data/model/faq/FaqListEntity;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "section_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqListFragment$1;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lnet/aihelp/data/model/faq/FaqListEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "section_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqListFragment$1;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lnet/aihelp/data/model/faq/FaqListEntity;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "section_icon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/ui/faq/FaqListFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqListFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/faq/FaqListFragment;->getFaqFlowListener()Lnet/aihelp/ui/faq/IFaqEventListener;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqListFragment$1;->bundle:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lnet/aihelp/ui/faq/IFaqEventListener;->onIntentToQuestionList(Landroid/os/Bundle;)V

    return-void
.end method
