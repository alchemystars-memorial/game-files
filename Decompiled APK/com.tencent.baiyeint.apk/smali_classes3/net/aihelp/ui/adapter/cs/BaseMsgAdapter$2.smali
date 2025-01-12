.class Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$2;
.super Ljava/lang/Object;
.source "BaseMsgAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->getUrl(Lnet/aihelp/data/model/cs/storyline/BotUrl;Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

.field final synthetic val$botUrl:Lnet/aihelp/data/model/cs/storyline/BotUrl;

.field final synthetic val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;Lnet/aihelp/data/model/cs/storyline/BotUrl;Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$2;->val$botUrl:Lnet/aihelp/data/model/cs/storyline/BotUrl;

    iput-object p3, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$2;->val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$2;->val$botUrl:Lnet/aihelp/data/model/cs/storyline/BotUrl;

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/storyline/BotUrl;->getUrlAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "js-bridge=enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/aihelp/common/Const;->sOnSpecificUrlClickedListener:Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/aihelp/common/Const;->sOnSpecificUrlClickedListener:Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;

    invoke-interface {v0, p1}, Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;->onSpecificUrlClicked(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$2;->val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/aihelp/utils/FastClickValidator;->validate()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$2;->val$wrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;->onUrlClicked(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
