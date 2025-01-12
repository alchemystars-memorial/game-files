.class Lnet/aihelp/ui/faq/FaqSearchFragment$1;
.super Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;
.source "FaqSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/faq/FaqSearchFragment;->prepareRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/faq/FaqSearchFragment;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/faq/FaqSearchFragment;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/faq/FaqSearchFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqSearchFragment;

    invoke-direct {p0}, Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntentToQuestionContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqSearchFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqSearchFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/faq/FaqSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/faq/FaqSearchFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqSearchFragment;

    invoke-static {v1}, Lnet/aihelp/ui/faq/FaqSearchFragment;->access$000(Lnet/aihelp/ui/faq/FaqSearchFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/aihelp/utils/SoftInputUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqSearchFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqSearchFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/faq/FaqSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqSearchFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqSearchFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/faq/FaqSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v1, "faq_main_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "search_match"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/ui/faq/FaqSearchFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqSearchFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/faq/FaqSearchFragment;->getFaqFlowListener()Lnet/aihelp/ui/faq/IFaqEventListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lnet/aihelp/ui/faq/IFaqEventListener;->onIntentToQuestionContent(Landroid/os/Bundle;)V

    return-void
.end method
