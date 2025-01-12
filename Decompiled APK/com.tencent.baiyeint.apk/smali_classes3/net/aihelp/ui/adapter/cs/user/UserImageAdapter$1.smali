.class Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter$1;
.super Ljava/lang/Object;
.source "UserImageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/cs/ConversationMsg;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;

.field final synthetic val$conversationMsg:Lnet/aihelp/data/model/cs/ConversationMsg;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;ILnet/aihelp/data/model/cs/ConversationMsg;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;

    iput p2, p0, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter$1;->val$position:I

    iput-object p3, p0, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter$1;->val$conversationMsg:Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;->access$000(Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;->access$100(Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    move-result-object p1

    iget v0, p0, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter$1;->val$position:I

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter$1;->val$conversationMsg:Lnet/aihelp/data/model/cs/ConversationMsg;

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;->onRetrySendingMessage(ILnet/aihelp/data/model/cs/ConversationMsg;)V

    :cond_0
    return-void
.end method
