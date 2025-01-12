.class Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$4;
.super Ljava/lang/Object;
.source "BaseMsgAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->getBotOrderInfo(Lnet/aihelp/data/model/cs/ElvaBotMsg;Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)Landroid/widget/TextView;
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
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$4;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$4;->val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    iput-object p3, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$4;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$4;->val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/aihelp/utils/FastClickValidator;->validate()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$4;->val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$4;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-virtual {v0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotOrderInfo()Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;->onOrderInfoClicked(Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;)V

    :cond_0
    return-void
.end method
