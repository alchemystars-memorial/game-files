.class Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;
.super Ljava/lang/Object;
.source "BaseMsgAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->getFormUrl(Lnet/aihelp/data/model/cs/ElvaBotMsg;Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

.field final synthetic val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

.field final synthetic val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;Lnet/aihelp/data/model/cs/ElvaBotMsg;Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    iput-object p3, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;->val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-static {p1, v0}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->access$000(Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;Lnet/aihelp/data/model/cs/ElvaBotMsg;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;->val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/aihelp/utils/FastClickValidator;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;->val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-virtual {v1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getTimeStamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;->onFormUrlClicked(JLjava/lang/String;)V

    :cond_0
    return-void
.end method
