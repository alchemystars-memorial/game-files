.class Lnet/aihelp/ui/cs/ElvaBotFragment$2$2;
.super Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$OnBotFaqInteractionCallback;
.source "ElvaBotFragment.java"


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


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ElvaBotFragment$2;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2$2;->this$1:Lnet/aihelp/ui/cs/ElvaBotFragment$2;

    iput-object p2, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2$2;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-direct {p0}, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$OnBotFaqInteractionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismissed()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2$2;->this$1:Lnet/aihelp/ui/cs/ElvaBotFragment$2;

    iget-object v0, v0, Lnet/aihelp/ui/cs/ElvaBotFragment$2;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    iget-object v0, v0, Lnet/aihelp/ui/cs/ElvaBotFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onEvaluatedFaq(Z)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2$2;->this$1:Lnet/aihelp/ui/cs/ElvaBotFragment$2;

    iget-object v0, v0, Lnet/aihelp/ui/cs/ElvaBotFragment$2;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$1000(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/logic/ElvaBotPresenter;

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2$2;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-virtual {v0, p1, v1}, Lnet/aihelp/data/logic/ElvaBotPresenter;->markWhetherFaqHelpful(ZLnet/aihelp/data/model/cs/ElvaBotMsg;)V

    return-void
.end method
