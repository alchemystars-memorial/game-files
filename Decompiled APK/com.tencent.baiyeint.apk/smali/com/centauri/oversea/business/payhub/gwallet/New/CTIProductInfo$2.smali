.class Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;->clearPurchase(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo$2;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryPurchasesResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APProductInfo_New"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p2

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo$2;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;

    invoke-static {v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;->access$000(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo;)Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    move-result-object v0

    new-instance v2, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo$2$1;

    invoke-direct {v2, p0}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo$2$1;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIProductInfo$2;)V

    invoke-virtual {v0, p2, v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabConsumeListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method
