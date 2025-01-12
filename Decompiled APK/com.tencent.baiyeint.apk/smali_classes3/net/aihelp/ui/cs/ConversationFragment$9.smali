.class Lnet/aihelp/ui/cs/ConversationFragment$9;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Lnet/aihelp/ui/helper/EvaluateNewHelper$OnConfirmEvaluateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/ConversationFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/ConversationFragment;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/ConversationFragment;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment$9;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmEvaluate(ILjava/lang/String;Lorg/json/JSONArray;)Z
    .locals 3

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment$9;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ConversationFragment;->access$1300(Lnet/aihelp/ui/cs/ConversationFragment;)Lnet/aihelp/core/mvp/IPresenter;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/logic/ConversationPresenter;

    invoke-virtual {v0}, Lnet/aihelp/data/logic/ConversationPresenter;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment$9;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/cs/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "aihelp_network_no_connect"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment$9;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    iget-object v0, v0, Lnet/aihelp/ui/cs/ConversationFragment;->bottomLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->isTicketWaitForRating()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/ui/cs/ConversationFragment$9;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/ConversationFragment;->access$1400(Lnet/aihelp/ui/cs/ConversationFragment;)Lnet/aihelp/core/mvp/IPresenter;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/logic/ConversationPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lnet/aihelp/data/logic/ConversationPresenter;->evaluateSupport(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_1
    invoke-static {}, Lnet/aihelp/utils/SpUtil;->getInstance()Lnet/aihelp/utils/SpUtil;

    move-result-object p1

    sget-object p2, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lnet/aihelp/utils/SpUtil;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->resetTicketStatusFlags()V

    iget-object p1, p0, Lnet/aihelp/ui/cs/ConversationFragment$9;->this$0:Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-static {p1}, Lnet/aihelp/ui/cs/ConversationFragment;->access$1500(Lnet/aihelp/ui/cs/ConversationFragment;)Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method
