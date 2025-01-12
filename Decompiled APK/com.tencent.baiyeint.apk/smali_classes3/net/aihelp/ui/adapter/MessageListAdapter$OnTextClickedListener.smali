.class interface abstract Lnet/aihelp/ui/adapter/MessageListAdapter$OnTextClickedListener;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/adapter/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "OnTextClickedListener"
.end annotation


# virtual methods
.method public abstract onActionClicked(Ljava/lang/String;)V
.end method

.method public abstract onFaqClicked(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
.end method

.method public abstract onFaqFeedbackClicked(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
.end method

.method public abstract onFaqHelpfulClicked(ZLnet/aihelp/data/model/cs/ElvaBotMsg;)V
.end method

.method public abstract onFormUrlClicked(JLjava/lang/String;)V
.end method

.method public abstract onOrderInfoClicked(Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;)V
.end method

.method public abstract onRetrySendingMessage(ILnet/aihelp/data/model/cs/ConversationMsg;)V
.end method

.method public abstract onUrlClicked(Ljava/lang/String;)V
.end method
