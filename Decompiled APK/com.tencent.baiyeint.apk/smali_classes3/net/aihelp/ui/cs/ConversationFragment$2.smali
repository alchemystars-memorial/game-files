.class Lnet/aihelp/ui/cs/ConversationFragment$2;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/ConversationFragment;->initEventAndData(Landroid/view/View;)V
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

    iput-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment$2;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment$2;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ConversationFragment;->access$700(Lnet/aihelp/ui/cs/ConversationFragment;)Lnet/aihelp/core/mvp/IPresenter;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/logic/ConversationPresenter;

    iget-object v1, p0, Lnet/aihelp/ui/cs/ConversationFragment$2;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-static {v1}, Lnet/aihelp/ui/cs/ConversationFragment;->access$600(Lnet/aihelp/ui/cs/ConversationFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/logic/ConversationPresenter;->getLastConversation(I)V

    return-void
.end method
