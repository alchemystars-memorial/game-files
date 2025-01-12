.class Lnet/aihelp/ui/cs/ElvaBotFragment$2;
.super Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;
.source "ElvaBotFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/ElvaBotFragment;->initEventAndData(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ElvaBotFragment;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-direct {p0}, Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClicked(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-static {v0, p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$100(Lnet/aihelp/ui/cs/ElvaBotFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onFaqClicked(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$900(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/logic/ElvaBotPresenter;

    invoke-virtual {v0}, Lnet/aihelp/data/logic/ElvaBotPresenter;->validateNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotUrl()Lnet/aihelp/data/model/cs/storyline/BotUrl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotUrl()Lnet/aihelp/data/model/cs/storyline/BotUrl;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/cs/storyline/BotUrl;->getUrlAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/DomainSupportHelper;->correctDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?id="

    invoke-static {v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&isCustom=1"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v2

    new-instance v3, Lnet/aihelp/ui/cs/ElvaBotFragment$2$1;

    invoke-direct {v3, p0, v1, p1}, Lnet/aihelp/ui/cs/ElvaBotFragment$2$1;-><init>(Lnet/aihelp/ui/cs/ElvaBotFragment$2;Ljava/lang/String;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    invoke-interface {v2, v3}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runAsync(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v1, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;

    iget-object v2, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-direct {v1, v2, p1}, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;-><init>(Landroidx/fragment/app/Fragment;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    new-instance v2, Lnet/aihelp/ui/cs/ElvaBotFragment$2$2;

    invoke-direct {v2, p0, p1}, Lnet/aihelp/ui/cs/ElvaBotFragment$2$2;-><init>(Lnet/aihelp/ui/cs/ElvaBotFragment$2;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    invoke-virtual {v1, v2}, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->setOnBotFaqInteractionCallback(Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent$OnBotFaqInteractionCallback;)V

    invoke-virtual {v1, v0}, Lnet/aihelp/ui/cs/ElvaFaqBottomSheetEvent;->show(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onFaqFeedbackClicked(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-static {v0, p1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$800(Lnet/aihelp/ui/cs/ElvaBotFragment;Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    return-void
.end method

.method public onFaqHelpfulClicked(ZLnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$600(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/logic/ElvaBotPresenter;

    invoke-virtual {v0}, Lnet/aihelp/data/logic/ElvaBotPresenter;->validateNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$700(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/logic/ElvaBotPresenter;

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/data/logic/ElvaBotPresenter;->markWhetherFaqHelpful(ZLnet/aihelp/data/model/cs/ElvaBotMsg;)V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "2"

    :goto_0
    invoke-static {p1}, Lnet/aihelp/ui/helper/LogoutMqttHelper;->updateType(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onFormUrlClicked(JLjava/lang/String;)V
    .locals 3

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$300(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/logic/ElvaBotPresenter;

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    iget-object v1, v1, Lnet/aihelp/ui/cs/ElvaBotFragment;->mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    invoke-virtual {v0, v1}, Lnet/aihelp/data/logic/ElvaBotPresenter;->prepareMqttConnection(Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$400(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/logic/ElvaBotPresenter;

    invoke-virtual {v0}, Lnet/aihelp/data/logic/ElvaBotPresenter;->validateNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "intent_url"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p3

    new-instance v1, Lnet/aihelp/data/event/PageHoppingEvent;

    const/16 v2, 0x3f1

    invoke-direct {v1, v2, v0}, Lnet/aihelp/data/event/PageHoppingEvent;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {p3, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    const-string p3, "7"

    invoke-static {p3}, Lnet/aihelp/ui/helper/LogoutMqttHelper;->updateType(Ljava/lang/String;)V

    const/4 p3, 0x2

    invoke-static {p1, p2, p3}, Lnet/aihelp/ui/helper/StatisticHelper;->whenFormEventHappened(JI)V

    :cond_1
    return-void
.end method

.method public onOrderInfoClicked(Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$500(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/logic/ElvaBotPresenter;

    invoke-virtual {v0}, Lnet/aihelp/data/logic/ElvaBotPresenter;->validateNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/aihelp/ui/helper/SendingBillHelper;->getInstance()Lnet/aihelp/ui/helper/SendingBillHelper;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-virtual {v1}, Lnet/aihelp/ui/cs/ElvaBotFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lnet/aihelp/ui/helper/SendingBillHelper;->readyToSelectBill(Landroid/content/Context;Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;)V

    :cond_0
    return-void
.end method

.method public onUrlClicked(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/ui/cs/ElvaBotFragment$2;->this$0:Lnet/aihelp/ui/cs/ElvaBotFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ElvaBotFragment;->access$200(Lnet/aihelp/ui/cs/ElvaBotFragment;)Lnet/aihelp/core/mvp/IPresenter;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/logic/ElvaBotPresenter;

    invoke-virtual {v0}, Lnet/aihelp/data/logic/ElvaBotPresenter;->validateNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "intent_url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    new-instance v1, Lnet/aihelp/data/event/PageHoppingEvent;

    const/16 v2, 0x3f1

    invoke-direct {v1, v2, v0}, Lnet/aihelp/data/event/PageHoppingEvent;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
