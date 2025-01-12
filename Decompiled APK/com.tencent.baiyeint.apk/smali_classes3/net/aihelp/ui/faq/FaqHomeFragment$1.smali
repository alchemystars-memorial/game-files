.class Lnet/aihelp/ui/faq/FaqHomeFragment$1;
.super Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;
.source "FaqHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/faq/FaqHomeFragment;->prepareHotTopics(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final bundle:Landroid/os/Bundle;

.field final synthetic this$0:Lnet/aihelp/ui/faq/FaqHomeFragment;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/faq/FaqHomeFragment;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqHomeFragment;

    invoke-direct {p0}, Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;-><init>()V

    invoke-virtual {p1}, Lnet/aihelp/ui/faq/FaqHomeFragment;->getMergedBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$1;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onIntentToQuestionContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$1;->bundle:Landroid/os/Bundle;

    const-string v0, "section_id"

    const-string v1, "faqHotTopics"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$1;->bundle:Landroid/os/Bundle;

    const-string v0, "faq_main_id"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqHomeFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/faq/FaqHomeFragment;->getFaqFlowListener()Lnet/aihelp/ui/faq/IFaqEventListener;

    move-result-object p1

    iget-object p2, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$1;->bundle:Landroid/os/Bundle;

    invoke-interface {p1, p2}, Lnet/aihelp/ui/faq/IFaqEventListener;->onIntentToQuestionContent(Landroid/os/Bundle;)V

    return-void
.end method
