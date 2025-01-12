.class Lnet/aihelp/ui/cs/ConversationFragment$6;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/ConversationFragment;->hideInputAfterConversationFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/ConversationFragment;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ConversationFragment;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment$6;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketWaitForAskingResolveStatus()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketWaitForRating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/16 v2, 0x8

    if-eqz v0, :cond_2

    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketRejected()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment$6;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ConversationFragment;->access$800(Lnet/aihelp/ui/cs/ConversationFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment$6;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ConversationFragment;->access$900(Lnet/aihelp/ui/cs/ConversationFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment$6;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ConversationFragment;->access$800(Lnet/aihelp/ui/cs/ConversationFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment$6;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ConversationFragment;->access$900(Lnet/aihelp/ui/cs/ConversationFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method
