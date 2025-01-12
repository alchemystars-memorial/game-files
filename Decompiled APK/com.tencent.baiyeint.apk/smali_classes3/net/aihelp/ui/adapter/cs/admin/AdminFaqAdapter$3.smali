.class Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter$3;
.super Ljava/lang/Object;
.source "AdminFaqAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/cs/ConversationMsg;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;

.field final synthetic val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter$3;->this$0:Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter$3;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter$3;->this$0:Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->access$200(Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/aihelp/utils/FastClickValidator;->validate()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter$3;->this$0:Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;->access$300(Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/admin/AdminFaqAdapter$3;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;->onFaqHelpfulClicked(ZLnet/aihelp/data/model/cs/ElvaBotMsg;)V

    :cond_0
    return-void
.end method
