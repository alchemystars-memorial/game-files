.class public Lnet/aihelp/data/logic/ConversationPresenter;
.super Lnet/aihelp/data/logic/MqttPresenter;
.source "ConversationPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/data/logic/MqttPresenter<",
        "Lnet/aihelp/ui/cs/ConversationFragment;",
        "Lnet/aihelp/core/mvp/IRepository;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/data/logic/MqttPresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/data/logic/ConversationPresenter;)Lnet/aihelp/core/mvp/IView;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/data/logic/ConversationPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/data/logic/ConversationPresenter;)Lnet/aihelp/core/mvp/IView;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/data/logic/ConversationPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/data/logic/ConversationPresenter;)Lnet/aihelp/utils/SpUtil;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/data/logic/ConversationPresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    return-object p0
.end method

.method private goFetchUnreadMessageCount()V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appid"

    sget-object v2, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uid"

    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lnet/aihelp/common/API;->FETCH_NEW_MSG:Ljava/lang/String;

    new-instance v2, Lnet/aihelp/data/logic/ConversationPresenter$4;

    invoke-direct {v2, p0}, Lnet/aihelp/data/logic/ConversationPresenter$4;-><init>(Lnet/aihelp/data/logic/ConversationPresenter;)V

    invoke-virtual {p0, v1, v0, v2}, Lnet/aihelp/data/logic/ConversationPresenter;->get(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public chatWithSupport(JLjava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "msg"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "timeStamp"

    invoke-virtual {v0, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "chatTags"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "imgFlag"

    const-string p2, "0"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "chat.private"

    invoke-virtual {p0, p1, v0}, Lnet/aihelp/data/logic/ConversationPresenter;->mqtt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public clearInputDraft()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/data/logic/ConversationPresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    const-string v1, "sp_input_draft"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/utils/SpUtil;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public evaluateSupport(ILjava/lang/String;Lorg/json/JSONArray;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "star_index"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "else_msg"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "choose_list"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "alice.chat.evaluate"

    invoke-virtual {p0, p1, v0}, Lnet/aihelp/data/logic/ConversationPresenter;->mqtt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getInputDraft()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/aihelp/data/logic/ConversationPresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    const-string v1, "sp_input_draft"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/utils/SpUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastConversation(I)V
    .locals 3

    invoke-virtual {p0}, Lnet/aihelp/data/logic/ConversationPresenter;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/data/logic/ConversationPresenter;->mContext:Landroid/content/Context;

    const-string v0, "aihelp_network_no_connect"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/data/logic/ConversationPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast p1, Lnet/aihelp/ui/cs/ConversationFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/cs/ConversationFragment;->onLastConversationRetrieved(Ljava/util/List;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "userId"

    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceId"

    iget-object v2, p0, Lnet/aihelp/data/logic/ConversationPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lnet/aihelp/utils/DeviceUuidFactory;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lnet/aihelp/common/API;->GET_LAST_CONVERSATION:Ljava/lang/String;

    new-instance v1, Lnet/aihelp/data/logic/ConversationPresenter$3;

    invoke-direct {v1, p0}, Lnet/aihelp/data/logic/ConversationPresenter$3;-><init>(Lnet/aihelp/data/logic/ConversationPresenter;)V

    invoke-virtual {p0, p1, v0, v1}, Lnet/aihelp/data/logic/ConversationPresenter;->get(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public prepareMqttConnection(Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V
    .locals 2

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;->showMqttLoading()V

    invoke-virtual {p0}, Lnet/aihelp/data/logic/ConversationPresenter;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/data/logic/ConversationPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;->updateHostView(Landroidx/fragment/app/Fragment;)V

    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->prepare(ILnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/aihelp/data/logic/ConversationPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast p1, Lnet/aihelp/ui/cs/ConversationFragment;

    const-string v0, "aihelp_network_no_connect"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/cs/ConversationFragment;->showError(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lnet/aihelp/data/logic/ConversationPresenter;->goFetchUnreadMessageCount()V

    return-void
.end method

.method public saveInputDraftIfNeeded(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/data/logic/ConversationPresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    const-string v1, "sp_input_draft"

    invoke-virtual {v0, v1, p1}, Lnet/aihelp/utils/SpUtil;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateCachedUnreadMessageCount(Z)V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/data/logic/ConversationPresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    sget-object v1, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/utils/SpUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lnet/aihelp/data/logic/ConversationPresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lnet/aihelp/utils/SpUtil;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public uploadImage(Ljava/io/File;J)V
    .locals 3

    invoke-virtual {p0}, Lnet/aihelp/data/logic/ConversationPresenter;->validateNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/data/logic/ConversationPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast p1, Lnet/aihelp/ui/cs/ConversationFragment;

    const-string v0, "aihelp_network_no_connect"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/cs/ConversationFragment;->showError(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/data/logic/ConversationPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast p1, Lnet/aihelp/ui/cs/ConversationFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lnet/aihelp/ui/cs/ConversationFragment;->updateMsgStatus(ZJ)V

    return-void

    :cond_0
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v0

    sget-object v1, Lnet/aihelp/common/API;->UPLOAD_URL:Ljava/lang/String;

    new-instance v2, Lnet/aihelp/data/logic/ConversationPresenter$1;

    invoke-direct {v2, p0, p2, p3}, Lnet/aihelp/data/logic/ConversationPresenter$1;-><init>(Lnet/aihelp/data/logic/ConversationPresenter;J)V

    invoke-virtual {v0, v1, p1, v2}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestUpLoadFile(Ljava/lang/String;Ljava/io/File;Lnet/aihelp/core/net/http/callback/UploadCallback;)Lokhttp3/Call;

    return-void
.end method

.method public uploadVideo(Ljava/io/File;J)V
    .locals 3

    invoke-virtual {p0}, Lnet/aihelp/data/logic/ConversationPresenter;->validateNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/data/logic/ConversationPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast p1, Lnet/aihelp/ui/cs/ConversationFragment;

    const-string v0, "aihelp_network_no_connect"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/cs/ConversationFragment;->showError(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/aihelp/data/logic/ConversationPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast p1, Lnet/aihelp/ui/cs/ConversationFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lnet/aihelp/ui/cs/ConversationFragment;->updateMsgStatus(ZJ)V

    return-void

    :cond_0
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v0

    sget-object v1, Lnet/aihelp/common/API;->UPLOAD_VIDEO_URL:Ljava/lang/String;

    new-instance v2, Lnet/aihelp/data/logic/ConversationPresenter$2;

    invoke-direct {v2, p0, p2, p3}, Lnet/aihelp/data/logic/ConversationPresenter$2;-><init>(Lnet/aihelp/data/logic/ConversationPresenter;J)V

    invoke-virtual {v0, v1, p1, v2}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestUpLoadFile(Ljava/lang/String;Ljava/io/File;Lnet/aihelp/core/net/http/callback/UploadCallback;)Lokhttp3/Call;

    return-void
.end method
