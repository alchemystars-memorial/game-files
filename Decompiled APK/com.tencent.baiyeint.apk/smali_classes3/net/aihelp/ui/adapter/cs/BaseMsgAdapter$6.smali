.class Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$6;
.super Ljava/lang/Object;
.source "BaseMsgAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->getFAQLayout(Lnet/aihelp/data/model/cs/ElvaBotMsg;Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)Landroid/view/View;
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

    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$6;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$6;->val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    iput-object p3, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$6;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$6;->val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    if-eqz p1, :cond_2

    invoke-static {}, Lnet/aihelp/utils/FastClickValidator;->validate()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$6;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotUrl()Lnet/aihelp/data/model/cs/storyline/BotUrl;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/storyline/BotUrl;->getUrlAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isCustom=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&isCustom=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lnet/aihelp/data/model/cs/storyline/BotUrl;->setUrlAddress(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$6;->val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$6;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;->onFaqClicked(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$6;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-static {p1}, Lnet/aihelp/ui/helper/StatisticHelper;->whenBotFAQClicked(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$6;->val$botMsg:Lnet/aihelp/data/model/cs/ElvaBotMsg;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setFaqViewed(Z)V

    :cond_2
    return-void
.end method
