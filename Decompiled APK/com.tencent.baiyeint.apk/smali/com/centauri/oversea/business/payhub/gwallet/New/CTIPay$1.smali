.class Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->onPurchaseSuccess(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

.field public final val$purchase:Lcom/android/billingclient/api/Purchase;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-static {v0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$002(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;Lcom/android/billingclient/api/Purchase;)Lcom/android/billingclient/api/Purchase;

    new-instance v0, Lcom/centauri/oversea/data/CTIPayReceipt;

    invoke-direct {v0}, Lcom/centauri/oversea/data/CTIPayReceipt;-><init>()V

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$000(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Lcom/android/billingclient/api/Purchase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$000(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Lcom/android/billingclient/api/Purchase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lb/a;->g([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt:Ljava/lang/String;

    iput-object v1, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt_sig:Ljava/lang/String;

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$000(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Lcom/android/billingclient/api/Purchase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->sku:Ljava/util/List;

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$100(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "inapp"

    const-string v3, ""

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    iput-object v3, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->gw_version:Ljava/lang/String;

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$200(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "5"

    iput-object v1, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->gw_version:Ljava/lang/String;

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$300(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->basePlanId:Ljava/lang/String;

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$200(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->first_currency_type:Ljava/lang/String;

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$400(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$100(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Ljava/lang/String;

    move-result-object v1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$500(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$400(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$500(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->second_currency_type:Ljava/lang/String;

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$400(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->second_amt:Ljava/lang/String;

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$500(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$400(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$600(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$500(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->second_currency_type:Ljava/lang/String;

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$400(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$600(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->second_amt:Ljava/lang/String;

    iput-object v3, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->gw_pricingPhases:Ljava/lang/String;

    :cond_4
    :goto_3
    sget-object v1, Lo/b$a;->a:Lo/b;

    const-string v2, "secondCurrencyType="

    invoke-static {v2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->second_currency_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&secondAmt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/centauri/oversea/data/CTIPayReceipt;->second_amt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&waitSecondProductDetailsTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v3}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$700(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk.oversea.call.gw20.sdk.call"

    invoke-virtual {v1, v3, v2}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    const/16 v2, 0xbd6

    invoke-static {v1, v2, v4, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$800(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;IILjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "purchase info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$1;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPay_New"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
