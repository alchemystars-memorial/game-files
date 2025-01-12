.class public Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;
    }
.end annotation


# static fields
.field public static final MSG_KEY:Ljava/lang/String; = "msg_key"

.field public static final MSG_STR_OBJ:Ljava/lang/String; = "msg_key"

.field public static final ORDER_KEY:Ljava/lang/String; = "order_key"

.field public static final REQUEST_CODE:I = 0x3e9

.field public static final RET_OK:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field public final UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

.field public dropMessage:Z

.field public mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

.field public mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->dropMessage:Z

    new-instance v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;-><init>(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    return-void
.end method

.method public static synthetic access$000(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V
    .locals 0

    invoke-direct {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->callBackLoginError()V

    return-void
.end method

.method public static synthetic access$100(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V
    .locals 0

    invoke-direct {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->showLoading()V

    return-void
.end method

.method public static synthetic access$400(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->handleCommError(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->callBackSuccess(I)V

    return-void
.end method

.method public static synthetic access$600(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;Ljava/lang/String;Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->callBackErrorWithUI(Ljava/lang/String;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    return-void
.end method

.method private callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->wrapperResponse(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    :cond_0
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->dispose()V

    return-void
.end method

.method private callBackErrorWithUI(Ljava/lang/String;Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->wrapperResponse(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->showErrorMsg(Ljava/lang/String;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    :cond_0
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->dispose()V

    return-void
.end method

.method private callBackLoginError()V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->callBackLoginError()V

    :cond_0
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->dispose()V

    return-void
.end method

.method private callBackSuccess(I)V
    .locals 4

    new-instance v0, Lcom/centauri/oversea/business/pay/CTIResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(I)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "channel"

    iget-object v3, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "num"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "billNo"

    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v2}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getBillNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getPayInfo()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "info"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lb/a;->g([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0, v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->addChannelExtra(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->setExtra(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->needShowSucc()Z

    move-result p1

    iput-boolean p1, v0, Lcom/centauri/oversea/business/pay/CTIResponse;->needShowSuccess:Z

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {p1, v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->callBackSuccess(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->dispose()V

    return-void
.end method

.method private handleCommError(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :cond_0
    move v2, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lo/a;->e(Landroid/content/Context;)Z

    move-result v1

    iget-object v3, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showErrDialog is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "msgErrCode"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "retCode"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "copywrite_format"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v7, "copywrite_params_list"

    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/centauri/oversea/business/pay/CTIResponse;

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "unipay_pay_error_tip"

    invoke-static {v0, v1}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v3, v0}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->callBackError(Lcom/centauri/oversea/business/pay/CTIResponse;)V

    goto :goto_2

    :cond_2
    const/16 p1, 0x472

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    new-instance p1, Lcom/centauri/oversea/business/pay/CTIResponse;

    move-object v1, p1

    move-object v4, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/centauri/oversea/business/pay/CTIResponse;

    invoke-direct {p1, v2, v3, v0}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->callBackErrorWithUI(Ljava/lang/String;Lcom/centauri/oversea/business/pay/CTIResponse;)V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    new-instance p1, Lcom/centauri/oversea/business/pay/CTIResponse;

    move-object v1, p1

    move-object v4, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance p1, Lcom/centauri/oversea/business/pay/CTIResponse;

    invoke-direct {p1, v2, v3, v0}, Lcom/centauri/oversea/business/pay/CTIResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    return-void
.end method

.method private showLoading()V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->showWaitDialog()V

    :cond_0
    return-void
.end method

.method private wrapperResponse(Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->addChannelExtra(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/pay/CTIResponse;->setExtra(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "wrapperResponse exception: "

    invoke-static {v1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addChannelExtra(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    return-object p1
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->TAG:Ljava/lang/String;

    const-string v1, "dispose()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->dismissWaitDialog()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->dropMessage:Z

    return-void
.end method

.method public getOrderKey()I
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getOrderKey()I

    move-result v0

    return v0
.end method

.method public getProductType()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasGoodsList()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    const/16 v1, 0xbcb

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->sendEmptyMessage(I)V

    return-void
.end method

.method public init(Lcom/centauri/oversea/business/pay/CTIPayBaseView;)V
    .locals 1

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    new-instance p1, Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-direct {p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;-><init>()V

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->getProductType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->setProductType(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->hasGoodsList()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->setHasGoodsList(Z)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getOrder()Lcom/centauri/oversea/business/pay/CTIOrder;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/business/pay/CTIOrder;->request:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->setRequest(Lcom/centauri/oversea/newapi/params/BillingFlowParams;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    new-instance v0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$1;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$1;-><init>(Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;)V

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->setCallback(Lcom/centauri/oversea/business/pay/XCallback;)V

    return-void
.end method

.method public isSdkProvide()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needOrder()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needShowSucc()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSaveReceipt(Lcom/centauri/oversea/data/CTIPayReceipt;)V
    .locals 0

    return-void
.end method

.method public pay(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public postPay()V
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    const/16 v1, 0xbd4

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->sendEmptyMessage(I)V

    return-void
.end method

.method public prePay()V
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    const/16 v1, 0xbcd

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->sendEmptyMessage(I)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->release()V

    iput-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    :cond_0
    iput-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    return-void
.end method

.method public startPay()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->dropMessage:Z

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    const/16 v1, 0xbca

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->sendEmptyMessage(I)V

    return-void
.end method

.method public startPayCheckEnv()V
    .locals 1

    invoke-static {}, Lo/g;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->showSandboxDialog()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->startPay()V

    :goto_0
    return-void
.end method
