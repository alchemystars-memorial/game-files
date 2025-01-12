.class Lnet/aihelp/ui/faq/FaqHomeFragment$3;
.super Ljava/lang/Object;
.source "FaqHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/faq/FaqHomeFragment;->getNotificationView(Lnet/aihelp/data/model/faq/FaqListEntity;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/faq/FaqHomeFragment;

.field final synthetic val$entity:Lnet/aihelp/data/model/faq/FaqListEntity;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/faq/FaqHomeFragment;Lnet/aihelp/data/model/faq/FaqListEntity;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$3;->this$0:Lnet/aihelp/ui/faq/FaqHomeFragment;

    iput-object p2, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$3;->val$entity:Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$3;->this$0:Lnet/aihelp/ui/faq/FaqHomeFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/faq/FaqHomeFragment;->getMergedBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "section_id"

    const-string v1, "faqNotification"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$3;->val$entity:Lnet/aihelp/data/model/faq/FaqListEntity;

    invoke-virtual {v0}, Lnet/aihelp/data/model/faq/FaqListEntity;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "faq_main_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqHomeFragment$3;->this$0:Lnet/aihelp/ui/faq/FaqHomeFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/faq/FaqHomeFragment;->getFaqFlowListener()Lnet/aihelp/ui/faq/IFaqEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/aihelp/ui/faq/IFaqEventListener;->onIntentToQuestionContent(Landroid/os/Bundle;)V

    return-void
.end method
