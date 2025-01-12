.class public Lnet/aihelp/ui/adapter/MessageListAdapter;
.super Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;,
        Lnet/aihelp/ui/adapter/MessageListAdapter$OnTextClickedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter<",
        "Lnet/aihelp/data/model/cs/ConversationMsg;",
        ">;"
    }
.end annotation


# instance fields
.field private final adminAdapter:Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;

.field private final adminFaqAdapter:Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;

.field private final adminRichTextAdapter:Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;

.field private final userAdapter:Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;

.field private final userImageAdapter:Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;

.field private final userVideoAdapter:Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;-><init>(Landroid/content/Context;)V

    new-instance v0, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->adminAdapter:Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    new-instance v0, Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->adminRichTextAdapter:Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    new-instance v0, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->adminFaqAdapter:Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    new-instance v0, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->userAdapter:Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    new-instance v0, Lnet/aihelp/ui/adapter/cs/hint/TimeMsgAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/hint/TimeMsgAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    new-instance v0, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->userImageAdapter:Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    new-instance v0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->userVideoAdapter:Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    new-instance v0, Lnet/aihelp/ui/adapter/cs/admin/AdminImageAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/admin/AdminImageAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    return-void
.end method


# virtual methods
.method public insertHistoryConversation(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/ConversationMsg;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->mDatas:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {p0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnClickedListener(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->adminAdapter:Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/cs/admin/AdminTextAdapter;->setOnClickedListenerWrapper(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->adminRichTextAdapter:Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/cs/admin/AdminRichTextAdapter;->setOnClickedListenerWrapper(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V

    :cond_1
    iget-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->adminFaqAdapter:Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->setOnClickedListenerWrapper(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V

    :cond_2
    iget-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->userAdapter:Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->setOnClickedListenerWrapper(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V

    :cond_3
    iget-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->userImageAdapter:Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;->setOnClickedListenerWrapper(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V

    :cond_4
    iget-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->userVideoAdapter:Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->setOnClickedListenerWrapper(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V

    :cond_5
    return-void
.end method
