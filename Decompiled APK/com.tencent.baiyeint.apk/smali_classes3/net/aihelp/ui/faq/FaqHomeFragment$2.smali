.class Lnet/aihelp/ui/faq/FaqHomeFragment$2;
.super Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;
.source "FaqHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/faq/FaqHomeFragment;->prepareSectionList(Ljava/util/List;)V
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

    iput-object p1, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$2;->this$0:Lnet/aihelp/ui/faq/FaqHomeFragment;

    invoke-direct {p0}, Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;-><init>()V

    invoke-virtual {p1}, Lnet/aihelp/ui/faq/FaqHomeFragment;->getMergedBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$2;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onIntentToSubSectionOrQuestionList(Lnet/aihelp/data/model/faq/FaqListEntity;)V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$2;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lnet/aihelp/data/model/faq/FaqListEntity;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "section_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$2;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lnet/aihelp/data/model/faq/FaqListEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "section_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$2;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lnet/aihelp/data/model/faq/FaqListEntity;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "section_icon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$2;->this$0:Lnet/aihelp/ui/faq/FaqHomeFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/faq/FaqHomeFragment;->getFaqFlowListener()Lnet/aihelp/ui/faq/IFaqEventListener;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$2;->bundle:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lnet/aihelp/ui/faq/IFaqEventListener;->onIntentToQuestionList(Landroid/os/Bundle;)V

    return-void
.end method
