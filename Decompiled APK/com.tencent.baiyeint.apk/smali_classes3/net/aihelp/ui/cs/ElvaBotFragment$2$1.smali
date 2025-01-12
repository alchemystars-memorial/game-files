.class Lnet/aihelp/ui/cs/ElvaBotFragment$2$1;
.super Ljava/lang/Object;
.source "ElvaBotFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/ElvaBotFragment$2;->onFaqClicked(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/ui/cs/ElvaBotFragment$2;

.field final synthetic val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

.field final synthetic val$faqContentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ElvaBotFragment$2;Ljava/lang/String;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2$1;->this$1:Lnet/aihelp/ui/cs/ElvaBotFragment$2;

    iput-object p2, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2$1;->val$faqContentId:Ljava/lang/String;

    iput-object p3, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2$1;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2$1;->val$faqContentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/aihelp/data/localize/data/FaqHelper;->getFaqById(Ljava/lang/String;)Lnet/aihelp/data/model/faq/FaqContentEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getFaqMainId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2$1;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-virtual {v1, v0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setFaqMainId(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2$1;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2$1;->val$faqContentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setFaqContentId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
