.class Lnet/aihelp/data/logic/ConversationPresenter$3;
.super Lnet/aihelp/core/net/http/callback/ReqCallback;
.source "ConversationPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/ConversationPresenter;->getLastConversation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/net/http/callback/ReqCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/data/logic/ConversationPresenter;


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/ConversationPresenter;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/data/logic/ConversationPresenter$3;->this$0:Lnet/aihelp/data/logic/ConversationPresenter;

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/ReqCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lnet/aihelp/data/logic/ConversationPresenter$3;->this$0:Lnet/aihelp/data/logic/ConversationPresenter;

    invoke-static {p1}, Lnet/aihelp/data/logic/ConversationPresenter;->access$100(Lnet/aihelp/data/logic/ConversationPresenter;)Lnet/aihelp/core/mvp/IView;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/cs/ConversationFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/cs/ConversationFragment;->onLastConversationRetrieved(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onReqSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/logic/ConversationPresenter$3;->onReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onReqSuccess(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/aihelp/ui/helper/ConversationHelper;->getRetrievedMsgList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/data/logic/ConversationPresenter$3;->this$0:Lnet/aihelp/data/logic/ConversationPresenter;

    invoke-static {v0}, Lnet/aihelp/data/logic/ConversationPresenter;->access$000(Lnet/aihelp/data/logic/ConversationPresenter;)Lnet/aihelp/core/mvp/IView;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/cs/ConversationFragment;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/cs/ConversationFragment;->onLastConversationRetrieved(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
