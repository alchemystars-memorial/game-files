.class Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryProductDetailsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->querySecondProductDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$4;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProductDetailsResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onQuerySecondProductDetailsResponse:"

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

    const-string v3, "name=onQuerySecondProductDetailsResponse&result="

    invoke-static {v3}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "&msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&productDetailsList="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sdk.oversea.call.gw20.sdk.response"

    invoke-virtual {v0, v1, p1}, Lo/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/ProductDetails;

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$4;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$1100(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$4;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v0, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$1200(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;Lcom/android/billingclient/api/ProductDetails;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$4;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v0, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$402(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/ProductDetails;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSecondProductDetails is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay$4;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;

    invoke-static {v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;->access$400(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIPay;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void
.end method
