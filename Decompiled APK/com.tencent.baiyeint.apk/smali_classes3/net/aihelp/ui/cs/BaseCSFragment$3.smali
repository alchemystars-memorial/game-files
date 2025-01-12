.class Lnet/aihelp/ui/cs/BaseCSFragment$3;
.super Ljava/lang/Object;
.source "BaseCSFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/BaseCSFragment;->scrollRecyclerViewToEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/BaseCSFragment;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/BaseCSFragment;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/BaseCSFragment$3;->this$0:Lnet/aihelp/ui/cs/BaseCSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment$3;->this$0:Lnet/aihelp/ui/cs/BaseCSFragment;

    iget-object v0, v0, Lnet/aihelp/ui/cs/BaseCSFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    iget-object v1, p0, Lnet/aihelp/ui/cs/BaseCSFragment$3;->this$0:Lnet/aihelp/ui/cs/BaseCSFragment;

    iget-object v1, v1, Lnet/aihelp/ui/cs/BaseCSFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->scrollToPosition(I)V

    return-void
.end method
