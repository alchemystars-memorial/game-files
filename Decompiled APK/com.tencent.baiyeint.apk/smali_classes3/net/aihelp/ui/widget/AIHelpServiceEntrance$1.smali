.class Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;
.super Ljava/lang/Object;
.source "AIHelpServiceEntrance.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateViewClickEvent(Landroid/os/Bundle;Lnet/aihelp/ui/faq/IFaqEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/AIHelpServiceEntrance;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$faqEventListener:Lnet/aihelp/ui/faq/IFaqEventListener;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/AIHelpServiceEntrance;Landroid/os/Bundle;Lnet/aihelp/ui/faq/IFaqEventListener;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;->this$0:Lnet/aihelp/ui/widget/AIHelpServiceEntrance;

    iput-object p2, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;->val$faqEventListener:Lnet/aihelp/ui/faq/IFaqEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;->val$bundle:Landroid/os/Bundle;

    const-string v0, "skip_elva_in_faq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;->val$bundle:Landroid/os/Bundle;

    const/4 v0, 0x2

    const-string v1, "support_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;->val$faqEventListener:Lnet/aihelp/ui/faq/IFaqEventListener;

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;->val$bundle:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lnet/aihelp/ui/faq/IFaqEventListener;->onIntentToConversation(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;->val$faqEventListener:Lnet/aihelp/ui/faq/IFaqEventListener;

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;->val$bundle:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lnet/aihelp/ui/faq/IFaqEventListener;->onIntentToElvaBot(Landroid/os/Bundle;)V

    :goto_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;->this$0:Lnet/aihelp/ui/widget/AIHelpServiceEntrance;

    iget-object p1, p1, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->vNotification:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
