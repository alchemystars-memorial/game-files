.class public Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;
.super Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;

# interfaces
.implements Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabSetupFinishedListener;
.implements Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;
.implements Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQuerySkuDetailsListener;
.implements Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryProductDetailsListener;
.implements Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabPurchaseListener;
.implements Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabConsumeListener;
.implements Lcom/android/billingclient/api/BillingConfigResponseListener;


# instance fields
.field private final NON_RECURRING:Ljava/lang/String;

.field private OldSku:Ljava/lang/String;

.field private SubcribeProrationMode:I

.field private final TAG:Ljava/lang/String;

.field private basePlanId:Ljava/lang/String;

.field private billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

.field private centauriType:Ljava/lang/String;

.field private googleType:Ljava/lang/String;

.field private gpCountryCode:Ljava/lang/String;

.field private gw_offerId:Ljava/lang/String;

.field private isAutoPay:Z

.field private mOldPurchase:Lcom/android/billingclient/api/Purchase;

.field private mProductDetails:Lcom/android/billingclient/api/ProductDetails;

.field private mPurchase:Lcom/android/billingclient/api/Purchase;

.field private mSecondProductDetails:Lcom/android/billingclient/api/ProductDetails;

.field private mSecondSkuDetails:Lcom/android/billingclient/api/SkuDetails;

.field private mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

.field private offerToken:Ljava/lang/String;

.field private openId:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private selectedOfferIndex:I

.field private waitSecondSkuDetailsTime:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;-><init>()V

    const-string v0, "APPay_New"

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->TAG:Ljava/lang/String;

    const-string v0, "3"

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->NON_RECURRING:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->openId:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->offerToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->basePlanId:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->gw_offerId:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->selectedOfferIndex:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->isAutoPay:Z

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->centauriType:Ljava/lang/String;

    const-string v2, "inapp"

    iput-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    iput v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->waitSecondSkuDetailsTime:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->SubcribeProrationMode:I

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->OldSku:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->gpCountryCode:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    return-void
.end method

.method public static synthetic access$000(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Lcom/android/billingclient/api/Purchase;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mPurchase:Lcom/android/billingclient/api/Purchase;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;Lcom/android/billingclient/api/Purchase;)Lcom/android/billingclient/api/Purchase;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mPurchase:Lcom/android/billingclient/api/Purchase;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Lcom/android/billingclient/api/SkuDetails;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mSecondSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/SkuDetails;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mSecondSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;Lcom/android/billingclient/api/ProductDetails;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->getSelectedOfferIndex(Lcom/android/billingclient/api/ProductDetails;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Lcom/android/billingclient/api/ProductDetails;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mProductDetails:Lcom/android/billingclient/api/ProductDetails;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->basePlanId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Lcom/android/billingclient/api/ProductDetails;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mSecondProductDetails:Lcom/android/billingclient/api/ProductDetails;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/ProductDetails;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mSecondProductDetails:Lcom/android/billingclient/api/ProductDetails;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->gpCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)I
    .locals 0

    iget p0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->selectedOfferIndex:I

    return p0
.end method

.method public static synthetic access$700(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)I
    .locals 0

    iget p0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->waitSecondSkuDetailsTime:I

    return p0
.end method

.method public static synthetic access$800(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Lcom/android/billingclient/api/SkuDetails;
    .locals 0

    iget-object p0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    return-object p0
.end method

.method private getSelectedOfferIndex(Lcom/android/billingclient/api/ProductDetails;)V
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    const-string v2, "inapp"

    if-eq v1, v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getBasePlanId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->basePlanId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->gw_offerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->gw_offerId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iput v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->selectedOfferIndex:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "getSelectedOfferIndex: "

    invoke-static {v2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "APPay_New"

    invoke-static {v0, v2, v3}, Lcom/centauri/api/a;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iput v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->selectedOfferIndex:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0xbd7

    const/16 v0, -0x7e3

    const-string v1, "Item not found"

    invoke-direct {p0, p1, v0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private getWaitSecondSkuDetailsTime(Lorg/json/JSONObject;)I
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "wait_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_0

    const/16 v0, 0x1f4

    if-gt p1, v0, :cond_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "getWaitSecondSkuDetailsTime(): "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "APPay_New"

    invoke-static {p1, v0, v1}, Lcom/centauri/api/a;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private initSucc()V
    .locals 4

    const-string v0, "APPay_New"

    const-string v1, "initSucc -------- "

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gw_init"

    invoke-static {v0}, Lo/q;->c(Ljava/lang/String;)J

    const/16 v1, 0xbcb

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    const-string v1, "initsucc"

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->reportResult(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->reportTime(Ljava/lang/String;J)V

    return-void
.end method

.method private onOldPurchaseSuccess(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x64

    const/16 v1, 0xbd6

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->productId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v3

    const/4 v4, 0x1

    const-string v5, "APPay_New"

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    if-nez v3, :cond_1

    const-string p1, "Fail to get mView Activity"

    invoke-static {v5, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fail to get mView Activity"

    invoke-direct {p0, v1, v0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {v3}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lo/a;->d(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    iput v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->waitSecondSkuDetailsTime:I

    :cond_2
    iget v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->waitSecondSkuDetailsTime:I

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->querySecondSkuDetails()V

    :cond_3
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    new-instance v4, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$2;

    invoke-direct {v4, p0, v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$2;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;Lcom/android/billingclient/api/Purchase;)V

    iget v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->waitSecondSkuDetailsTime:I

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v3

    const/4 v4, 0x2

    const-string v6, "Purchased State Error: "

    if-ne v3, v4, :cond_5

    invoke-static {v6}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xbdb

    const/16 v3, -0x7e2

    const-string v4, "Items to be paid!"

    goto :goto_1

    :cond_5
    invoke-static {v6}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xbd7

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-direct {p0, v2, v3, v4}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const-string p1, "purchasesList is null"

    invoke-direct {p0, v1, v0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method private onPurchaseFailed(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;)V
    .locals 3

    sget-object v0, Lo/b$a;->a:Lo/b;

    const-string v1, "name=onPurchaseFailed&result="

    invoke-static {v1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk.oversea.call.gw20.sdk.response"

    invoke-virtual {v0, v2, v1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v0

    invoke-static {}, Lo/g;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->showSandboxErrTips()V

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0xbc9

    const/16 v1, -0x7d1

    goto :goto_0

    :cond_1
    const/16 v0, 0xbd7

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->unifyErrCode()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    return-void
.end method

.method private onPurchaseSuccess(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x64

    const/16 v1, 0xbd6

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    iget-object v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->OldSku:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->OldSku:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->productId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v3

    const/4 v4, 0x1

    const-string v5, "APPay_New"

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    if-nez v3, :cond_2

    const-string p1, "Fail to get mView Activity"

    invoke-static {v5, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fail to get mView Activity"

    invoke-direct {p0, v1, v0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-interface {v3}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lo/a;->d(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    iput v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->waitSecondSkuDetailsTime:I

    :cond_3
    iget v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->waitSecondSkuDetailsTime:I

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->getBillingConfigAsync()V

    iget-object v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-virtual {v3}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->isGw5Supported()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->querySecondProductDetails()V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->querySecondSkuDetails()V

    :cond_5
    :goto_2
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    new-instance v4, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;

    invoke-direct {v4, p0, v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;Lcom/android/billingclient/api/Purchase;)V

    iget v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->waitSecondSkuDetailsTime:I

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v3

    const/4 v4, 0x2

    const-string v6, "Purchased State Error: "

    if-ne v3, v4, :cond_7

    invoke-static {v6}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xbdb

    const/16 v3, -0x7e2

    const-string v4, "Items to be paid!"

    goto :goto_3

    :cond_7
    invoke-static {v6}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xbd7

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-direct {p0, v2, v3, v4}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    const-string p1, "purchasesList is null"

    invoke-direct {p0, v1, v0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method private onQueryOldPurchasesSuccess(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getRequest()Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getExtra()Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->getChannelExtras()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->subcribeUpgrate(Ljava/lang/String;)V

    const-string v0, "onQueryPurchasesSuccess ChannelExtras: "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->getChannelExtras()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "APPay_New"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    const-string/jumbo v0, "subs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "unipay_error_sub_owned_diffuser"

    const/16 v2, 0xbd7

    const/4 v3, 0x1

    const/16 v4, -0x7dd

    const-string v5, "gw_prepay"

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-static {v5}, Lo/q;->c(Ljava/lang/String;)J

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p2

    iget-object p2, p2, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v1}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/16 v4, -0x7dc

    const-string p1, ""

    :goto_0
    invoke-direct {p0, v2, v4, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SubValidErr_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->OldSku:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v6, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->OldSku:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    if-ne v0, v3, :cond_1

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mOldPurchase:Lcom/android/billingclient/api/Purchase;

    invoke-static {v5}, Lo/q;->c(Ljava/lang/String;)J

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v1}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v4, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    const-string p1, "SubValidErr_-2013"

    :goto_1
    const-string p2, "prepayerr"

    invoke-direct {p0, p2, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->reportResult(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->reportTime(Ljava/lang/String;J)V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->querySkuDetails()V

    return-void
.end method

.method private onQueryProductDetailsFailed(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;)V
    .locals 2

    new-instance p1, Lcom/centauri/oversea/data/CTIPayInfo;

    invoke-direct {p1}, Lcom/centauri/oversea/data/CTIPayInfo;-><init>()V

    const-string v0, "default"

    iput-object v0, p1, Lcom/centauri/oversea/data/CTIPayInfo;->currency:Ljava/lang/String;

    const-string v0, "0.0"

    iput-object v0, p1, Lcom/centauri/oversea/data/CTIPayInfo;->amount:Ljava/lang/String;

    iput-object v0, p1, Lcom/centauri/oversea/data/CTIPayInfo;->ext:Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getGw_version()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/centauri/oversea/data/CTIPayInfo;->gw_version:Ljava/lang/String;

    const/16 v0, 0xbcd

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    return-void
.end method

.method private onQueryProductDetailsSuccess(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/ProductDetails;

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->productId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPay_New"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mProductDetails:Lcom/android/billingclient/api/ProductDetails;

    new-instance v0, Lcom/centauri/oversea/data/CTIPayInfo;

    invoke-direct {v0}, Lcom/centauri/oversea/data/CTIPayInfo;-><init>()V

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "default"

    const-string v4, "0.0"

    const/4 v5, 0x1

    const-string v6, "inapp"

    if-ne v1, v6, :cond_2

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/centauri/oversea/data/CTIPayInfo;->currency:Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/centauri/oversea/comm/GlobalData;->setRegion(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lo/g;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/centauri/oversea/data/CTIPayInfo;->amount:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Lo/g;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/centauri/oversea/data/CTIPayInfo;->ext:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object v3, v0, Lcom/centauri/oversea/data/CTIPayInfo;->currency:Ljava/lang/String;

    iput-object v4, v0, Lcom/centauri/oversea/data/CTIPayInfo;->amount:Ljava/lang/String;

    iput-object v4, v0, Lcom/centauri/oversea/data/CTIPayInfo;->ext:Ljava/lang/String;

    :goto_1
    iput-object v3, v0, Lcom/centauri/oversea/data/CTIPayInfo;->basePlanId:Ljava/lang/String;

    const-string p2, ""

    iput-object p2, v0, Lcom/centauri/oversea/data/CTIPayInfo;->gw_version:Ljava/lang/String;

    goto/16 :goto_3

    :cond_2
    invoke-direct {p0, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->getSelectedOfferIndex(Lcom/android/billingclient/api/ProductDetails;)V

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v1

    iput-object v3, v0, Lcom/centauri/oversea/data/CTIPayInfo;->currency:Ljava/lang/String;

    iput-object v4, v0, Lcom/centauri/oversea/data/CTIPayInfo;->amount:Ljava/lang/String;

    iput-object v4, v0, Lcom/centauri/oversea/data/CTIPayInfo;->ext:Ljava/lang/String;

    iget v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->selectedOfferIndex:I

    if-ltz v3, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->selectedOfferIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/centauri/oversea/data/CTIPayInfo;->currency:Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/centauri/oversea/comm/GlobalData;->setRegion(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lo/g;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/centauri/oversea/data/CTIPayInfo;->amount:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lo/g;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/centauri/oversea/data/CTIPayInfo;->ext:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->basePlanId:Ljava/lang/String;

    iput-object v1, v0, Lcom/centauri/oversea/data/CTIPayInfo;->basePlanId:Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/comm/GlobalData;->getGw_version()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/centauri/oversea/data/CTIPayInfo;->gw_version:Ljava/lang/String;

    :try_start_0
    const-class v1, Lcom/android/billingclient/api/ProductDetails;

    const-string/jumbo v3, "zzb"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "subscriptionOfferDetails"

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    new-instance v1, Lorg/json/JSONObject;

    iget v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->selectedOfferIndex:I

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "pricingPhases"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/centauri/oversea/data/CTIPayInfo;->gw_pricingPhases:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception p2

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    const/16 p2, 0xbcd

    invoke-direct {p0, p2, v2, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->onQuerySkuDetailsFailed(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;)V

    :cond_5
    return-void
.end method

.method private onQueryPurchasesFailed(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->querySkuDetails()V

    return-void
.end method

.method private onQueryPurchasesSuccess(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getRequest()Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getExtra()Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->getChannelExtras()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->subcribeUpgrate(Ljava/lang/String;)V

    const-string v0, "onQueryPurchasesSuccess ChannelExtras: "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->getChannelExtras()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "APPay_New"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    const-string/jumbo v0, "subs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->productId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "unipay_error_sub_owned_diffuser"

    const/16 v2, 0xbd7

    const/4 v3, 0x1

    const/16 v4, -0x7dd

    const-string v5, "gw_prepay"

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-static {v5}, Lo/q;->c(Ljava/lang/String;)J

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p2

    iget-object p2, p2, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v1}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/16 v4, -0x7dc

    const-string p1, ""

    :goto_0
    invoke-direct {p0, v2, v4, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SubValidErr_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->OldSku:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v0

    iget-object v6, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->OldSku:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    if-ne v0, v3, :cond_1

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mOldPurchase:Lcom/android/billingclient/api/Purchase;

    invoke-static {v5}, Lo/q;->c(Ljava/lang/String;)J

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {p1}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v1}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v4, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    const-string p1, "SubValidErr_-2013"

    :goto_1
    const-string p2, "prepayerr"

    invoke-direct {p0, p2, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->reportResult(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->reportTime(Ljava/lang/String;J)V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->queryProductDetails()V

    return-void
.end method

.method private onQuerySkuDetailsFailed(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;)V
    .locals 2

    sget-object v0, Lo/b$a;->a:Lo/b;

    const-string v1, "name=onQuerySkuDetailsFailed&result="

    invoke-static {v1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sdk.oversea.call.gw20.sdk.response"

    invoke-virtual {v0, v1, p1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/centauri/oversea/data/CTIPayInfo;

    invoke-direct {p1}, Lcom/centauri/oversea/data/CTIPayInfo;-><init>()V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->gpCountryCode:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "default"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->gpCountryCode:Ljava/lang/String;

    :goto_0
    iput-object v0, p1, Lcom/centauri/oversea/data/CTIPayInfo;->currency:Ljava/lang/String;

    const-string v0, "0.0"

    iput-object v0, p1, Lcom/centauri/oversea/data/CTIPayInfo;->amount:Ljava/lang/String;

    iput-object v0, p1, Lcom/centauri/oversea/data/CTIPayInfo;->ext:Ljava/lang/String;

    const/16 v0, 0xbcd

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    return-void
.end method

.method private onQuerySkuDetailsSuccess(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->productId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPay_New"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    new-instance v0, Lcom/centauri/oversea/data/CTIPayInfo;

    invoke-direct {v0}, Lcom/centauri/oversea/data/CTIPayInfo;-><init>()V

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/centauri/oversea/data/CTIPayInfo;->currency:Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/centauri/oversea/comm/GlobalData;->setRegion(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lo/g;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/centauri/oversea/data/CTIPayInfo;->amount:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getPriceAmountMicros()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lo/g;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/centauri/oversea/data/CTIPayInfo;->ext:Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/centauri/oversea/comm/GlobalData;->getGw_version()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/centauri/oversea/data/CTIPayInfo;->gw_version:Ljava/lang/String;

    const/16 p2, 0xbcd

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->onQuerySkuDetailsFailed(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;)V

    :cond_2
    return-void
.end method

.method private queryProductDetails()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->productId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    if-eqz v1, :cond_0

    sget-object v1, Lo/b$a;->a:Lo/b;

    const-string v2, "sdk.oversea.call.gw20.sdk.call"

    const-string v3, "name=queryProductDetailsAsync"

    invoke-virtual {v1, v2, v3}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-virtual {v1, v0, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryProductDetailsListener;)V

    :cond_0
    return-void
.end method

.method private querySecondProductDetails()V
    .locals 3

    const-string v0, "APPay_New"

    const-string v1, "query product after pay success"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lo/b$a;->a:Lo/b;

    const-string v1, "sdk.oversea.call.gw20.sdk.call"

    const-string v2, "name=secondQuerySkuDetailsAsync"

    invoke-virtual {v0, v1, v2}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->productId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$4;

    invoke-direct {v2, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$4;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)V

    invoke-virtual {v1, v0, v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryProductDetailsListener;)V

    :cond_0
    return-void
.end method

.method private querySecondSkuDetails()V
    .locals 3

    const-string v0, "APPay_New"

    const-string v1, "query product after pay success"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lo/b$a;->a:Lo/b;

    const-string v1, "sdk.oversea.call.gw20.sdk.call"

    const-string v2, "name=secondQuerySkuDetailsAsync"

    invoke-virtual {v0, v1, v2}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$3;

    invoke-direct {v2, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$3;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)V

    invoke-virtual {v1, v0, v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQuerySkuDetailsListener;)V

    :cond_0
    return-void
.end method

.method private querySkuDetails()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v0

    sget-object v1, Lo/b$a;->a:Lo/b;

    const-string v2, "sdk.oversea.call.gw20.sdk.call"

    const-string v3, "name=querySkuDetailsAsync"

    invoke-virtual {v1, v2, v3}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQuerySkuDetailsListener;)V

    :cond_0
    return-void
.end method

.method private reportResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lo/b$a;->a:Lo/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "version=2.0&name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&result="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&productType="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&centauriType="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->centauriType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdk.oversea.gw.20.result"

    invoke-virtual {v0, p2, p1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportTime(Ljava/lang/String;J)V
    .locals 3

    sget-object v0, Lo/b$a;->a:Lo/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "version=2.0&name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&times="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "&productType="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&centauriType="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->centauriType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdk.oversea.gw.20.time"

    invoke-virtual {v0, p2, p1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendMesUIH(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "msgErrCode"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->UIHandler:Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel$HandlerImpl;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private subcribeUpgrate(Ljava/lang/String;)V
    .locals 4

    const-string v0, "OldSku"

    const-string v1, "SubcribeProrationMode"

    const-string v2, "APPay_New"

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lo/g;->n(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->OldSku:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->SubcribeProrationMode:I

    goto :goto_0

    :cond_0
    const-string p1, "APPay channelExtras is null "

    invoke-static {v2, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "subcribeUpgrate errr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addChannelExtra(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "gw_subscription"

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mPurchase:Lcom/android/billingclient/api/Purchase;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "gwalletOrderId"

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mPurchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getProvideSdkRet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "subInfo"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lb/a;->g([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v2, "addChannelExtra exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPay_New"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object p1
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mPurchase:Lcom/android/billingclient/api/Purchase;

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    iput-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mProductDetails:Lcom/android/billingclient/api/ProductDetails;

    return-void
.end method

.method public getBillingConfigAsync()V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->getBillingConfigAsync(Lcom/android/billingclient/api/BillingConfigResponseListener;)V

    :cond_0
    return-void
.end method

.method public getProductType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 4

    const-string v0, "gw_init"

    invoke-static {v0}, Lo/q;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getRequest()Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    move-result-object v0

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    iget-object v1, v1, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->openId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getProductID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->productId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->isAutoPay()Z

    move-result v1

    iput-boolean v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->isAutoPay:Z

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->centauriType:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->isAutoPay:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "subs"

    goto :goto_0

    :cond_0
    const-string v1, "inapp"

    :goto_0
    iput-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getBasePlanId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->basePlanId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getGw_offerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->gw_offerId:Ljava/lang/String;

    const-string v1, "productId:"

    invoke-static {v1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->productId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",googleType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",centauriType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->centauriType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",basePlanId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getBasePlanId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",offerId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getGw_offerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APPay_New"

    invoke-static {v2, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->getInstance(Landroid/content/Context;)Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    sget-object v1, Lo/b$a;->a:Lo/b;

    const-string v2, "name=startSetup&productId="

    invoke-static {v2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->productId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&googleType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&centauriType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->centauriType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&basePlanId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getBasePlanId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&offerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getGw_offerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sdk.oversea.call.gw20.sdk.call"

    invoke-virtual {v1, v2, v0}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->startSetup(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabSetupFinishedListener;)V

    :cond_1
    return-void
.end method

.method public isSdkProvide()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needShowSucc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newPay(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 7

    invoke-direct {p0, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->getWaitSecondSkuDetailsTime(Lorg/json/JSONObject;)I

    move-result p2

    iput p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->waitSecondSkuDetailsTime:I

    const-string p2, "pay user_name============"

    invoke-static {p2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "APPay_New"

    invoke-static {v0, p2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "gw_pay"

    invoke-static {p2}, Lo/q;->b(Ljava/lang/String;)V

    const-string p2, "gw_showdialog"

    invoke-static {p2}, Lo/q;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mProductDetails:Lcom/android/billingclient/api/ProductDetails;

    const-string v1, "PRODUCTID NOT FOUND"

    const/16 v2, -0x7e4

    const/16 v3, 0xbd7

    if-nez p2, :cond_0

    const-string p1, "productid not found"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v2, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    const-string v5, "inapp"

    if-eq v4, v5, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object p2

    iget v4, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->selectedOfferIndex:I

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->offerToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "newPay(): "

    invoke-static {p2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/centauri/api/a;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-direct {p0, v3, v2, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v4, v6}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    if-eq v6, v5, :cond_2

    iget-object v5, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->offerToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    :cond_2
    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/centauri/oversea/comm/GlobalData;->getUserName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object p2

    iget-object p2, p2, Lcom/centauri/oversea/comm/GlobalData;->zoneID:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->OldSku:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mOldPurchase:Lcom/android/billingclient/api/Purchase;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object p2

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mOldPurchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setOldPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object p2

    iget v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->SubcribeProrationMode:I

    invoke-virtual {p2, v1}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setReplaceProrationMode(I)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSubscriptionUpdateParams(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    goto :goto_2

    :cond_4
    :goto_1
    const/16 p1, -0x7e1

    iget-object p2, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {p2}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string/jumbo v0, "unipay_error_sub_upgrade_purchase_null"

    invoke-static {p2, v0}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v3, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    return-void

    :cond_5
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p2

    sget-object v0, Lo/b$a;->a:Lo/b;

    const-string v1, "sdk.oversea.call.gw20.sdk.call"

    const-string v2, "name=launchPurchaseFlow"

    invoke-virtual {v0, v1, v2}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    iget-object v1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {v1}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->launchPurchaseFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabPurchaseListener;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    const-string/jumbo v1, "unipay_pay_error_tip"

    invoke-static {p1, v1}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, v0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "payerr"

    invoke-direct {p0, p2, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->reportResult(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    :catch_3
    move-exception p1

    const-string p2, "productDetailsParams: "

    invoke-static {p2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/centauri/api/a;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-direct {p0, v3, v2, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    return-void
.end method

.method public oldPay(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->getWaitSecondSkuDetailsTime(Lorg/json/JSONObject;)I

    move-result p2

    iput p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->waitSecondSkuDetailsTime:I

    const-string p2, "pay user_name============"

    invoke-static {p2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "APPay_New"

    invoke-static {v0, p2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "gw_pay"

    invoke-static {p2}, Lo/q;->b(Ljava/lang/String;)V

    const-string p2, "gw_showdialog"

    invoke-static {p2}, Lo/q;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/comm/GlobalData;->zoneID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->OldSku:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xbd7

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mOldPurchase:Lcom/android/billingclient/api/Purchase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mOldPurchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setOldSkuPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSubscriptionUpdateParams(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, -0x7e1

    iget-object p2, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {p2}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string/jumbo v0, "unipay_error_sub_upgrade_purchase_null"

    invoke-static {p2, v0}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    return-void

    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p2

    sget-object v0, Lo/b$a;->a:Lo/b;

    const-string v2, "sdk.oversea.call.gw20.sdk.call"

    const-string v3, "name=launchPurchaseFlow"

    invoke-virtual {v0, v2, v3}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    iget-object v2, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mView:Lcom/centauri/oversea/business/pay/CTIPayBaseView;

    invoke-interface {v2}, Lcom/centauri/oversea/business/pay/CTIPayBaseView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->launchPurchaseFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabPurchaseListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    const-string/jumbo v2, "unipay_pay_error_tip"

    invoke-static {p1, v2}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "payerr"

    invoke-direct {p0, p2, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->reportResult(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V
    .locals 2

    const-string v0, "getBillingConfigAsync billingResult : "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPay_New"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingConfig;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->gpCountryCode:Ljava/lang/String;

    const-string p1, "getBillingConfigAsync gpCountryCode : "

    invoke-static {p1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->gpCountryCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConsumeResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/lang/String;)V
    .locals 11

    const-string v0, "onConsumeResponse:"

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPay_New"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gw_postpay"

    invoke-static {v0}, Lo/q;->c(Ljava/lang/String;)J

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->isSuccess()Z

    move-result v1

    const-string v2, "&centauriType="

    const-string v3, "&productType="

    const-string v4, "&times="

    const-string v5, "&productid="

    const-string v6, "&billno="

    const-string v7, "&msg="

    const-string/jumbo v8, "version=2.0&result="

    const/4 v9, 0x0

    const-string v10, ""

    if-eqz v1, :cond_3

    const/16 v1, 0xbd4

    invoke-direct {p0, v1, v9, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    sget-object p2, Lo/b$a;->a:Lo/b;

    invoke-static {v8}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    if-nez p1, :cond_1

    move-object p1, v10

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getBillNo()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getRequest()Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getProductID()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->centauriType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&reportType=consumesucc&resultMsg="

    goto :goto_5

    :cond_3
    const/16 p2, 0xbd5

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v9, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    sget-object p2, Lo/b$a;->a:Lo/b;

    invoke-static {v8}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    if-nez v6, :cond_4

    move-object v6, v10

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getBillNo()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getRequest()Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getProductID()Ljava/lang/String;

    move-result-object v10

    :goto_4
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->centauriType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&reportType=consumeerr&resultMsg="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sdk.oversea.gw.consume.result"

    invoke-virtual {p2, v0, p1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIabSetupFinished(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;)V
    .locals 9

    const-string v0, "onIabSetupFinished:"

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPay_New"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gw_init"

    invoke-static {v0}, Lo/q;->c(Ljava/lang/String;)J

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->isSuccess()Z

    move-result v1

    const-string v2, "&centauriType="

    const-string v3, "&productType="

    const-string v4, "&times="

    const-string v5, "&msg="

    const-string v6, "name=onIabSetupFinished&result="

    if-eqz v1, :cond_1

    const/16 v1, 0xbcb

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v1, v7, v8}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    sget-object v1, Lo/b$a;->a:Lo/b;

    invoke-static {v6}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->centauriType:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&reportType=initsucc&resultMsg="

    goto :goto_1

    :cond_1
    const/16 v1, 0xbcc

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->unifyErrCode()I

    move-result v7

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v7, v8}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    sget-object v1, Lo/b$a;->a:Lo/b;

    invoke-static {v6}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->centauriType:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&reportType=initerr&resultMsg="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sdk.oversea.call.gw20.sdk.response"

    invoke-virtual {v1, v0, p1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProductDetailsResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onProductDetailsResponse:"

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null"

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "APPay_New"

    invoke-static {v2, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gw_prepay"

    invoke-static {v0}, Lo/q;->c(Ljava/lang/String;)J

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->isSuccess()Z

    move-result v2

    const-string v3, "&resultMsg="

    const-string v4, "&centauriType="

    const-string v5, "&productType="

    const-string v6, "&productDetailsList="

    const-string v7, "&msg="

    const-string v8, "name=onProductDetailsResponse&result="

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->onQueryProductDetailsSuccess(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V

    sget-object v2, Lo/b$a;->a:Lo/b;

    invoke-static {v8}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&getProductType=beforePayment&reportType=prepaysucc&times="

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->centauriType:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->onQueryProductDetailsFailed(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;)V

    sget-object v2, Lo/b$a;->a:Lo/b;

    invoke-static {v8}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&getProductType=beforePayment&reportType=prepayerr&times="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->centauriType:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdk.oversea.call.gw20.sdk.response"

    invoke-virtual {v2, p2, p1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPurchaseResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onPurchaseResponse:"

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null"

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "APPay_New"

    invoke-static {v2, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "purchasesList:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gw_pay"

    invoke-static {v0}, Lo/q;->c(Ljava/lang/String;)J

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->isSuccess()Z

    move-result v2

    const-string v3, "&centauriType="

    const-string v4, "&productType="

    const-string v5, "&times="

    const-string v6, "&purchasesList="

    const-string v7, "&msg="

    const-string v8, "name=onPurchaseResponse&result="

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-virtual {v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->isGw5Supported()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->onPurchaseSuccess(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->onOldPurchaseSuccess(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V

    :goto_2
    sget-object v2, Lo/b$a;->a:Lo/b;

    invoke-static {v8}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->centauriType:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&reportType=paysucc&resultMsg="

    goto :goto_5

    :cond_4
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->onPurchaseFailed(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;)V

    sget-object v2, Lo/b$a;->a:Lo/b;

    invoke-static {v8}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->centauriType:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&reportType=payerr&resultMsg="

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdk.oversea.call.gw20.sdk.response"

    invoke-virtual {v2, p2, p1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gw_first_screen_showdialog"

    invoke-static {p1}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->reportTime(Ljava/lang/String;J)V

    const-string p1, "gw_showdialog"

    invoke-static {p1}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->reportTime(Ljava/lang/String;J)V

    return-void
.end method

.method public onQueryPurchasesResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onQueryPurchasesResponse:"

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null"

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "APPay_New"

    invoke-static {v2, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lo/b$a;->a:Lo/b;

    const-string v2, "name=onQueryPurchasesResponse&result="

    invoke-static {v2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&purchaseList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk.oversea.call.gw20.sdk.response"

    invoke-virtual {v0, v2, v1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-virtual {v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->isGw5Supported()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->onQueryPurchasesSuccess(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->onQueryOldPurchasesSuccess(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->onQueryPurchasesFailed(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;)V

    :goto_2
    return-void
.end method

.method public onSkuDetailsResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSkuDetailsResponse:"

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null"

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "APPay_New"

    invoke-static {v2, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gw_prepay"

    invoke-static {v0}, Lo/q;->c(Ljava/lang/String;)J

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->isSuccess()Z

    move-result v2

    const-string v3, "&resultMsg="

    const-string v4, "&centauriType="

    const-string v5, "&productType="

    const-string v6, "&skuDetailsList="

    const-string v7, "&msg="

    const-string v8, "name=onSkuDetailsResponse&result="

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->onQuerySkuDetailsSuccess(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V

    sget-object v2, Lo/b$a;->a:Lo/b;

    invoke-static {v8}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&getProductType=beforePayment&reportType=prepaysucc&times="

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->centauriType:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->onQuerySkuDetailsFailed(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;)V

    sget-object v2, Lo/b$a;->a:Lo/b;

    invoke-static {v8}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&getProductType=beforePayment&reportType=prepayerr&times="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->centauriType:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdk.oversea.call.gw20.sdk.response"

    invoke-virtual {v2, p2, p1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pay(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p2, :cond_2

    const-string v0, "channel_key"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-virtual {v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->isGw5Supported()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->newPay(Landroid/app/Activity;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->oldPay(Landroid/app/Activity;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const/16 p2, 0xbd7

    const/4 v0, 0x0

    const-string/jumbo v1, "unipay_pay_error_tip"

    invoke-static {p1, v1}, Lo/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    const-string p1, "payerr"

    const-string p2, "pay info error"

    invoke-direct {p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->reportResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public postPay()V
    .locals 7

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->googleType:Ljava/lang/String;

    const-string/jumbo v1, "subs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mPurchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lb/a;->l([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "CentauriUnipay_pp"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "sortSPByPurchase allMap "

    invoke-static {v1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTISPTools"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Lo/d;

    invoke-direct {v3}, Lo/d;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-gt v3, v2, :cond_0

    :cond_1
    const/16 v0, 0xbd4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v5, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "gw_postpay"

    invoke-static {v0}, Lo/q;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->mPurchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v0

    sget-object v1, Lo/b$a;->a:Lo/b;

    const-string v2, "sdk.oversea.call.gw20.sdk.call"

    const-string v3, "name=consumeParams"

    invoke-virtual {v1, v2, v3}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabConsumeListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public prePay()V
    .locals 3

    const-string v0, "gw_prepay"

    invoke-static {v0}, Lo/q;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/pay/CTIPayBaseChannel;->mModel:Lcom/centauri/oversea/business/pay/CTIPayModel;

    invoke-virtual {v0}, Lcom/centauri/oversea/business/pay/CTIPayModel;->getRequest()Lcom/centauri/oversea/newapi/params/BillingFlowParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->getExtra()Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->getChannelExtras()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/g;->n(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "RecurrenceMode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init recurrenceMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APPay_New"

    invoke-static {v2, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    if-eqz v0, :cond_0

    const-string v0, "init isGw5Supported : "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-virtual {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->isGw5Supported()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-virtual {v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->isGw5Supported()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "initerr"

    const-string v1, "appId null"

    invoke-direct {p0, v0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->reportResult(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gw_init"

    invoke-static {v1}, Lo/q;->a(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->reportTime(Ljava/lang/String;J)V

    const/16 v0, 0xbcc

    const/16 v1, -0x7e5

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->sendMesUIH(IILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lo/b$a;->a:Lo/b;

    const-string v1, "sdk.oversea.call.gw20.sdk.call"

    const-string v2, "name=queryPurchasesAsync"

    invoke-virtual {v0, v1, v2}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->billingHelper:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->queryPurchasesAsync(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;)V

    :cond_1
    return-void
.end method
