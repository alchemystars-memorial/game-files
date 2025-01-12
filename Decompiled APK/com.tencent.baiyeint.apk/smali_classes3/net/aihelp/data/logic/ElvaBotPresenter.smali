.class public Lnet/aihelp/data/logic/ElvaBotPresenter;
.super Lnet/aihelp/data/logic/MqttPresenter;
.source "ElvaBotPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/data/logic/MqttPresenter<",
        "Lnet/aihelp/ui/cs/BaseCSFragment;",
        "Lnet/aihelp/data/local/ElvaRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private isLocalElvaReplied:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/data/logic/MqttPresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/data/logic/ElvaBotPresenter;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/data/logic/ElvaBotPresenter;->handleNetworkResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lnet/aihelp/data/logic/ElvaBotPresenter;)Lnet/aihelp/core/mvp/IView;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/data/logic/ElvaBotPresenter;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/data/logic/ElvaBotPresenter;->showNetworkFineToast()V

    return-void
.end method

.method static synthetic access$300(Lnet/aihelp/data/logic/ElvaBotPresenter;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/aihelp/data/logic/ElvaBotPresenter;->showNetworkSlowDialog(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lnet/aihelp/data/logic/ElvaBotPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/aihelp/data/logic/ElvaBotPresenter;->postNetworkResultToServer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lnet/aihelp/data/logic/ElvaBotPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/data/logic/ElvaBotPresenter;->logCheckResultSent(Ljava/lang/String;)V

    return-void
.end method

.method private handleNetworkResult(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/logic/ElvaBotPresenter$3;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/data/logic/ElvaBotPresenter$3;-><init>(Lnet/aihelp/data/logic/ElvaBotPresenter;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private logCheckResultSent(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "deviceId"

    iget-object v2, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lnet/aihelp/utils/DeviceUuidFactory;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerId"

    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lnet/aihelp/common/API;->LOG_NETWORK_RESULT_SENT:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnet/aihelp/data/logic/ElvaBotPresenter;->post(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private postNetworkResultToServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "chatTags"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "imgFlag"

    const-string p2, "0"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "chat.private"

    invoke-virtual {p0, p1, v0}, Lnet/aihelp/data/logic/ElvaBotPresenter;->mqtt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private prepareNetworkCheck(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 10

    sget-boolean v0, Lnet/aihelp/common/Const;->TOGGLE_NET_CHECK:Z

    if-eqz v0, :cond_8

    sget-object v0, Lnet/aihelp/common/Const;->NET_CHECK_HOST:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isHasTag()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast v0, Lnet/aihelp/ui/cs/BaseCSFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/cs/BaseCSFragment;->isNetCheckingInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mContext:Landroid/content/Context;

    const-string v0, "aihelp_network_check_in_progress"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotTagList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/model/cs/storyline/BotTag;

    sget-object v1, Lnet/aihelp/common/Const;->NET_PING:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-string v6, "aihelp_network_no_connect"

    const/4 v7, 0x1

    if-ge v5, v3, :cond_5

    aget-object v8, v1, v5

    invoke-virtual {v0}, Lnet/aihelp/data/model/cs/storyline/BotTag;->getTagName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lnet/aihelp/data/logic/ElvaBotPresenter;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast p1, Lnet/aihelp/ui/cs/BaseCSFragment;

    invoke-virtual {p1, v7}, Lnet/aihelp/ui/cs/BaseCSFragment;->updateNetCheckingStatus(Z)V

    sget-object p1, Lnet/aihelp/common/Const;->NET_CHECK_HOST:Ljava/lang/String;

    new-instance v0, Lnet/aihelp/data/logic/ElvaBotPresenter$1;

    invoke-direct {v0, p0}, Lnet/aihelp/data/logic/ElvaBotPresenter$1;-><init>(Lnet/aihelp/data/logic/ElvaBotPresenter;)V

    invoke-static {p1, v0}, Lnet/aihelp/core/net/check/Ping;->start(Ljava/lang/String;Lnet/aihelp/core/net/check/Ping$Callback;)Lnet/aihelp/core/net/check/Task;

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    sget-object v1, Lnet/aihelp/common/Const;->NET_TRACE_ROUTE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v3, v1, v4

    invoke-virtual {v0}, Lnet/aihelp/data/model/cs/storyline/BotTag;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lnet/aihelp/data/logic/ElvaBotPresenter;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object p1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast p1, Lnet/aihelp/ui/cs/BaseCSFragment;

    invoke-virtual {p1, v7}, Lnet/aihelp/ui/cs/BaseCSFragment;->updateNetCheckingStatus(Z)V

    sget-object p1, Lnet/aihelp/common/Const;->NET_CHECK_HOST:Ljava/lang/String;

    new-instance v0, Lnet/aihelp/data/logic/ElvaBotPresenter$2;

    invoke-direct {v0, p0}, Lnet/aihelp/data/logic/ElvaBotPresenter$2;-><init>(Lnet/aihelp/data/logic/ElvaBotPresenter;)V

    invoke-static {p1, v0}, Lnet/aihelp/core/net/check/TraceRoute;->start(Ljava/lang/String;Lnet/aihelp/core/net/check/TraceRoute$Callback;)Lnet/aihelp/core/net/check/Task;

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    return-void
.end method

.method private showNetworkFineToast()V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mContext:Landroid/content/Context;

    const-string v2, "aihelp_toast_network_fine"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v2, "aihelp_toast_txt"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "aihelp_network_check_fine"

    invoke-static {v3}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string v0, "Activity finished when network toast is about to show."

    invoke-static {v0}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showNetworkSlowDialog(Ljava/lang/String;Z)V
    .locals 8

    iget-object v0, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast v0, Lnet/aihelp/ui/cs/BaseCSFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/cs/BaseCSFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    iget-object v1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "aihelp_dia_upload_net_check"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setContentView(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setWidthByDevice()Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->create()Lnet/aihelp/core/ui/dialog/AlertDialog;

    move-result-object v0

    const-string v1, "aihelp_tv_title"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "aihelp_tv_sub_title"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "aihelp_tv_cancel"

    invoke-static {v3}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "aihelp_tv_confirm"

    invoke-static {v5}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, "aihelp_network_upload_log_title"

    invoke-static {v7}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "aihelp_network_check_poor"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "aihelp_no"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "aihelp_yes"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lnet/aihelp/data/logic/ElvaBotPresenter$4;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/data/logic/ElvaBotPresenter$4;-><init>(Lnet/aihelp/data/logic/ElvaBotPresenter;Lnet/aihelp/core/ui/dialog/AlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->setOnClickListener(ILandroid/view/View$OnClickListener;)V

    invoke-static {v5}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lnet/aihelp/data/logic/ElvaBotPresenter$5;

    invoke-direct {v2, p0, p1, p2, v0}, Lnet/aihelp/data/logic/ElvaBotPresenter$5;-><init>(Lnet/aihelp/data/logic/ElvaBotPresenter;Ljava/lang/String;ZLnet/aihelp/core/ui/dialog/AlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->setOnClickListener(ILandroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->show()V

    goto :goto_0

    :cond_0
    const-string p1, "Activity finished when network dialog is about to show."

    invoke-static {p1}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public askForAnswer(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "answer_type"

    const-string v1, "wildcard"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "alice.message.chat"

    invoke-virtual {p0, p1, v0}, Lnet/aihelp/data/logic/ElvaBotPresenter;->mqtt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getMatchedFaqListForAlert(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/faq/FaqListEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mRepo:Lnet/aihelp/core/mvp/IRepository;

    check-cast v0, Lnet/aihelp/data/local/ElvaRepository;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/local/ElvaRepository;->getMatchedFaqListForAlert(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public handleBotMsg(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 3

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getRawResponse()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/aihelp/db/bot/ConversationDBHelper;->storeElvaMsg(JLjava/lang/String;)V

    invoke-static {p1}, Lnet/aihelp/ui/helper/StatisticHelper;->whenBotMessagePrepared(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    invoke-direct {p0, p1}, Lnet/aihelp/data/logic/ElvaBotPresenter;->prepareNetworkCheck(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V

    return-void
.end method

.method public markWhetherFaqHelpful(ZLnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "isLike"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "2"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timeMillis"

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "isClickDetail"

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isFaqViewed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "contentId"

    invoke-virtual {p2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getFaqContentId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "alice.faq.like"

    invoke-virtual {p0, p2, v0}, Lnet/aihelp/data/logic/ElvaBotPresenter;->mqtt(Ljava/lang/String;Lorg/json/JSONObject;)V

    if-nez p1, :cond_1

    sget-boolean p1, Lnet/aihelp/common/CustomConfig$CustomerService;->isUnhelpfulFaqStoryNodeEnable:Z

    if-eqz p1, :cond_1

    const-string p1, "UnhelpfulFaqStoryNode"

    invoke-virtual {p0, p1}, Lnet/aihelp/data/logic/ElvaBotPresenter;->askForAnswer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public postFeedbackOnFaq(Lnet/aihelp/data/model/cs/ElvaBotMsg;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "Language"

    sget-object v2, Lnet/aihelp/common/Const;->CORRECT_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "PlayerId"

    const-string v2, "%s|%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "PlayerName"

    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "FaqId"

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getFaqMainId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "contentId"

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getFaqContentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Message"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "Type"

    const-string v1, "1"

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "CreateTime"

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getTimeStamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "PlayerQuestion"

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getUserInput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "TicketId"

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getFaqTicketId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "PitchonQuestion"

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lnet/aihelp/common/API;->FAQ_FEEDBACK_URL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lnet/aihelp/data/logic/ElvaBotPresenter;->post(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getTimeStamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getFaqContentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getFaqMainId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lnet/aihelp/ui/helper/StatisticHelper;->whenBotFAQGotNegativeFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .locals 4

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;->showMqttLoading()V

    sget-object v0, Lnet/aihelp/common/Const;->CUSTOM_STORY_NODE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/aihelp/data/localize/util/LocalizeUtil;->isAIMLLocalized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->isLocalElvaReplied:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lnet/aihelp/ui/helper/ConversationHelper;->getDefaultMsg()Lnet/aihelp/data/model/cs/ElvaBotMsg;

    move-result-object v2

    invoke-virtual {v2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isBotStupid()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sput-boolean v1, Lnet/aihelp/common/Const;->isLocalWelcomeAvailable:Z

    :cond_0
    invoke-static {}, Lnet/aihelp/db/bot/ConversationDBHelper;->clearElvaMsg()V

    iget-object v2, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast v2, Lnet/aihelp/ui/cs/BaseCSFragment;

    invoke-virtual {v2, v0}, Lnet/aihelp/ui/cs/BaseCSFragment;->updateChatList(Ljava/util/List;)V

    iput-boolean v1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->isLocalElvaReplied:Z

    :cond_1
    invoke-virtual {p0}, Lnet/aihelp/data/logic/ElvaBotPresenter;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;->updateHostView(Landroidx/fragment/app/Fragment;)V

    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->prepare(ILnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lnet/aihelp/data/logic/ElvaBotPresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast p1, Lnet/aihelp/ui/cs/BaseCSFragment;

    const-string v0, "aihelp_network_no_connect"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/cs/BaseCSFragment;->showError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
