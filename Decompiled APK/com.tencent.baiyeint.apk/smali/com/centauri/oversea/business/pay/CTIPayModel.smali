.class public Lcom/centauri/oversea/business/pay/CTIPayModel;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "APPayModel"


# instance fields
.field private basePlanId:Ljava/lang/String;

.field private channelExtra:Ljava/lang/String;

.field private currency_amt:Ljava/lang/String;

.field private gw_pricingPhases:Ljava/lang/String;

.field private gw_version:Ljava/lang/String;

.field private hasGoodsList:Z

.field private isErrorConsume:Z

.field private mBillNo:Ljava/lang/String;

.field private mCallback:Lcom/centauri/oversea/business/pay/XCallback;

.field private mCurrency:Ljava/lang/String;

.field private mInfo:Lorg/json/JSONObject;

.field private mOrderObserver:Lg/s;

.field private mPayInfo:Ljava/lang/String;

.field private mProvideObserver:Lg/s;

.field private mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

.field private mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

.field private num:Ljava/lang/String;

.field private offer_name:Ljava/lang/String;

.field private payAmt:Ljava/lang/String;

.field private payCurrency:Ljava/lang/String;

.field private productType:Ljava/lang/String;

.field private product_name:Ljava/lang/String;

.field private provideMes:Ljava/lang/String;

.field private provideSdkRet:Ljava/lang/String;

.field private verifyRes:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->gw_version:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->gw_pricingPhases:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->basePlanId:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->hasGoodsList:Z

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mPayInfo:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->verifyRes:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->provideMes:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->provideSdkRet:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->isErrorConsume:Z

    iput-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    iput-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    new-instance v0, Lcom/centauri/oversea/business/pay/CTIPayModel$1;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/pay/CTIPayModel$1;-><init>(Lcom/centauri/oversea/business/pay/CTIPayModel;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mOrderObserver:Lg/s;

    new-instance v0, Lcom/centauri/oversea/business/pay/CTIPayModel$2;

    invoke-direct {v0, p0}, Lcom/centauri/oversea/business/pay/CTIPayModel$2;-><init>(Lcom/centauri/oversea/business/pay/CTIPayModel;)V

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideObserver:Lg/s;

    return-void
.end method

.method public static synthetic access$000(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->notifyInner(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$1002(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mPayInfo:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mBillNo:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/centauri/oversea/business/pay/CTIPayModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->notifyOuterLoginErr()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/centauri/oversea/business/pay/CTIPayModel;->notifyOuterRiskErr(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/centauri/oversea/business/pay/CTIPayModel;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/centauri/oversea/business/pay/CTIPayModel;->notifyRiskField(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/centauri/oversea/business/pay/CTIPayModel;IILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/centauri/oversea/business/pay/CTIPayModel;->notifyInner(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->provideMes:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1502(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->provideMes:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1602(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->verifyRes:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1702(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->provideSdkRet:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1802(Lcom/centauri/oversea/business/pay/CTIPayModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->isErrorConsume:Z

    return p1
.end method

.method public static synthetic access$202(Lcom/centauri/oversea/business/pay/CTIPayModel;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mInfo:Lorg/json/JSONObject;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->currency_amt:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCurrency:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->offer_name:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->product_name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->product_name:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$702(Lcom/centauri/oversea/business/pay/CTIPayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->num:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$800(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->payAmt:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/centauri/oversea/business/pay/CTIPayModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->payCurrency:Ljava/lang/String;

    return-object p0
.end method

.method private notifyInner(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "msgErrCode"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    invoke-interface {p1, v0}, Lcom/centauri/oversea/business/pay/XCallback;->notifyInner(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private notifyInner(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "msgErrCode"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    invoke-interface {p1, v0}, Lcom/centauri/oversea/business/pay/XCallback;->notifyInner(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private notifyOuterLoginErr()V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/centauri/oversea/business/pay/XCallback;->notifyOuterLoginErr()V

    :cond_0
    return-void
.end method

.method private notifyOuterRiskErr(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/centauri/oversea/business/pay/XCallback;->notifyOuterRiskErr(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private notifyRiskField(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p6, "msgErrCode"

    invoke-virtual {p1, p6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "retCode"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "copywrite_format"

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "copywrite_params_list"

    invoke-virtual {p1, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    invoke-interface {p1, v0}, Lcom/centauri/oversea/business/pay/XCallback;->notifyInner(Landroid/os/Message;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBillNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mBillNo:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getPayChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyAmt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->currency_amt:Ljava/lang/String;

    return-object v0
.end method

.method public getMInfo()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mInfo:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getNum()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->num:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getNum(): "

    invoke-static {v1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "APPayModel"

    invoke-static {v0, v1, v2}, Lcom/centauri/api/a;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getOfferName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->offer_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPayInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mPayInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->product_name:Ljava/lang/String;

    return-object v0
.end method

.method public getProvideReceipt()Lcom/centauri/oversea/data/CTIPayReceipt;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/centauri/oversea/data/CTIPayReceipt;

    invoke-direct {v0}, Lcom/centauri/oversea/data/CTIPayReceipt;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    return-object v0
.end method

.method public getProvideRetMes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->provideMes:Ljava/lang/String;

    return-object v0
.end method

.method public getProvideSdkRet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->provideSdkRet:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lcom/centauri/oversea/newapi/params/BillingFlowParams;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;

    invoke-direct {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;->build()Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    return-object v0
.end method

.method public getVerifyRes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->verifyRes:Ljava/lang/String;

    return-object v0
.end method

.method public isErrorConsume()Z
    .locals 1

    iget-boolean v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->isErrorConsume:Z

    return v0
.end method

.method public newProvide(Ljava/lang/Object;)V
    .locals 13

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/centauri/oversea/data/CTIPayReceipt;

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->setProvideReceipt(Lcom/centauri/oversea/data/CTIPayReceipt;)V

    sget-object p1, Lp/n$a;->a:Lp/n;

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v1, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->second_currency_type:Ljava/lang/String;

    iget-object v2, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->basePlanId:Ljava/lang/String;

    iget-object v0, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->gw_version:Ljava/lang/String;

    iget-object v3, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-virtual {v3}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getPayChannel()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->num:Ljava/lang/String;

    iget-object v5, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mBillNo:Ljava/lang/String;

    iget-object v6, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v7, v6, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt:Ljava/lang/String;

    iget-object v8, v6, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt_sig:Ljava/lang/String;

    iget-object v9, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    iget-object v10, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideObserver:Lg/s;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lq/l;

    invoke-direct {v11}, Lq/l;-><init>()V

    const-string v12, "provide"

    iput-object v12, v11, Lp/a;->v:Ljava/lang/String;

    iput-object v1, v11, Lq/l;->z:Ljava/lang/String;

    iput-object v3, v11, Lq/l;->C:Ljava/lang/String;

    iput-object v5, v11, Lq/l;->F:Ljava/lang/String;

    iput-object v7, v11, Lq/l;->G:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v11, Lq/l;->H:Ljava/lang/String;

    iput-object v8, v11, Lq/l;->I:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v11, Lq/l;->J:Z

    iput-object v4, v11, Lq/l;->K:Ljava/lang/String;

    invoke-static {v9}, Lp/o;->a(Ljava/lang/Object;)Lp/o;

    move-result-object v1

    iput-object v1, v11, Lp/a;->x:Lp/o;

    iput-object v6, v11, Lq/l;->L:Lcom/centauri/oversea/data/CTIPayReceipt;

    iput-object v2, v11, Lq/l;->N:Ljava/lang/String;

    iput-object v0, v11, Lq/l;->O:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v11, Lq/l;->P:Ljava/lang/String;

    invoke-virtual {v11}, Lq/l;->y()Lq/l;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/q;->b(Ljava/lang/String;)V

    iget-object v0, p1, Lp/n;->a:Lg/o;

    new-instance v1, Lq/k;

    new-instance v2, Lp/m;

    invoke-direct {v2, p1, v10}, Lp/m;-><init>(Lp/n;Lg/s;)V

    invoke-direct {v1, v2}, Lq/k;-><init>(Lg/s;)V

    invoke-virtual {v0, v11, v1}, Lg/o;->a(Lg/i;Lg/h;)V

    :cond_0
    return-void
.end method

.method public order(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    if-eqz v1, :cond_3

    iget-boolean v2, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->hasGoodsList:Z

    const-string v3, ""

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    const-string v2, "1"

    :goto_0
    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "unimonth"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getServiceCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    if-nez p1, :cond_2

    iput-object v3, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->payCurrency:Ljava/lang/String;

    iput-object v3, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->payAmt:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v3, p1

    check-cast v3, Lcom/centauri/oversea/data/CTIPayInfo;

    iget-object v4, v3, Lcom/centauri/oversea/data/CTIPayInfo;->amount:Ljava/lang/String;

    iget-object v5, v3, Lcom/centauri/oversea/data/CTIPayInfo;->ext:Ljava/lang/String;

    iput-object v5, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->payAmt:Ljava/lang/String;

    iget-object v5, v3, Lcom/centauri/oversea/data/CTIPayInfo;->currency:Ljava/lang/String;

    iput-object v5, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->payCurrency:Ljava/lang/String;

    iget-object v5, v3, Lcom/centauri/oversea/data/CTIPayInfo;->channelExtra:Ljava/lang/String;

    iput-object v5, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->channelExtra:Ljava/lang/String;

    iget-object v5, v3, Lcom/centauri/oversea/data/CTIPayInfo;->gw_version:Ljava/lang/String;

    iput-object v5, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->gw_version:Ljava/lang/String;

    iget-object v5, v3, Lcom/centauri/oversea/data/CTIPayInfo;->gw_pricingPhases:Ljava/lang/String;

    iput-object v5, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->gw_pricingPhases:Ljava/lang/String;

    iget-object v3, v3, Lcom/centauri/oversea/data/CTIPayInfo;->basePlanId:Ljava/lang/String;

    iput-object v3, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->basePlanId:Ljava/lang/String;

    move-object v3, v4

    :goto_2
    sget-object v4, Lp/n$a;->a:Lp/n;

    iget-object v5, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-virtual {v5}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getPayChannel()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->gw_version:Ljava/lang/String;

    iget-object v7, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->basePlanId:Ljava/lang/String;

    iget-object v8, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->gw_pricingPhases:Ljava/lang/String;

    iget-object v9, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-virtual {v9}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getCurrencyType()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->payCurrency:Ljava/lang/String;

    iget-object v11, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->payAmt:Ljava/lang/String;

    iget-object v12, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->channelExtra:Ljava/lang/String;

    iget-object v13, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    iget-object v14, v0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mOrderObserver:Lg/s;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lq/l;

    invoke-direct {v15}, Lq/l;-><init>()V

    const-string v0, "order"

    iput-object v0, v15, Lp/a;->v:Ljava/lang/String;

    iput-object v1, v15, Lq/l;->y:Ljava/lang/String;

    iput-object v9, v15, Lq/l;->z:Ljava/lang/String;

    iput-object v10, v15, Lq/l;->M:Ljava/lang/String;

    iput-object v3, v15, Lq/l;->B:Ljava/lang/String;

    iput-object v5, v15, Lq/l;->C:Ljava/lang/String;

    iput-object v12, v15, Lq/l;->R:Ljava/lang/String;

    iput-object v11, v15, Lq/l;->D:Ljava/lang/String;

    iput-object v2, v15, Lq/l;->E:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, v15, Lq/l;->J:Z

    invoke-static {v13}, Lp/o;->a(Ljava/lang/Object;)Lp/o;

    move-result-object v0

    iput-object v0, v15, Lp/a;->x:Lp/o;

    iput-object v6, v15, Lq/l;->O:Ljava/lang/String;

    iput-object v8, v15, Lq/l;->P:Ljava/lang/String;

    iput-object v7, v15, Lq/l;->N:Ljava/lang/String;

    invoke-virtual {v15}, Lq/l;->y()Lq/l;

    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/q;->b(Ljava/lang/String;)V

    iget-object v0, v4, Lp/n;->a:Lg/o;

    new-instance v1, Lq/k;

    new-instance v2, Lp/k;

    invoke-direct {v2, v4, v14}, Lp/k;-><init>(Lp/n;Lg/s;)V

    invoke-direct {v1, v2}, Lq/k;-><init>(Lg/s;)V

    invoke-virtual {v0, v15, v1}, Lg/o;->a(Lg/i;Lg/h;)V

    :cond_3
    return-void
.end method

.method public provide(Ljava/lang/Object;)V
    .locals 13

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/centauri/oversea/data/CTIPayReceipt;

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->setProvideReceipt(Lcom/centauri/oversea/data/CTIPayReceipt;)V

    sget-object v0, Lp/n$a;->a:Lp/n;

    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->gw_version:Ljava/lang/String;

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    iget-object v4, p1, Lcom/centauri/oversea/data/CTIPayReceipt;->second_currency_type:Ljava/lang/String;

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getPayChannel()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->num:Ljava/lang/String;

    iget-object v7, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mBillNo:Ljava/lang/String;

    iget-object v11, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    const/4 v1, 0x0

    iget-object v8, v11, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt:Ljava/lang/String;

    iget-object v9, v11, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt_sig:Ljava/lang/String;

    iget-object v10, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    iget-object v12, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideObserver:Lg/s;

    const-string v3, ""

    invoke-virtual/range {v0 .. v12}, Lp/n;->d(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/oversea/data/CTIPayReceipt;Lg/s;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mInfo:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    iput-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&result="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&payChannel="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getChannelId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->productType:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "&productType="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->productType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object p1, Lo/b$a;->a:Lo/b;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "sdk.oversea.channel.payresult"

    invoke-virtual {p1, v0, p2}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBillNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mBillNo:Ljava/lang/String;

    return-void
.end method

.method public setCallback(Lcom/centauri/oversea/business/pay/XCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mCallback:Lcom/centauri/oversea/business/pay/XCallback;

    return-void
.end method

.method public setHasGoodsList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->hasGoodsList:Z

    return-void
.end method

.method public setProductType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->productType:Ljava/lang/String;

    return-void
.end method

.method public setProvideReceipt(Lcom/centauri/oversea/data/CTIPayReceipt;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mProvideReceipt:Lcom/centauri/oversea/data/CTIPayReceipt;

    return-void
.end method

.method public setRequest(Lcom/centauri/oversea/newapi/params/BillingFlowParams;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayModel;->mRequest:Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    return-void
.end method
