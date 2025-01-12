.class Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->getOldPurchaseList(Landroid/content/Context;Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;

.field public final val$callback:Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$3;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$3;->val$callback:Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V
    .locals 5
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

    const-string v1, "APGWRestore_New"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$3;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;

    invoke-static {v3}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->access$000(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/centauri/oversea/data/CTIPayReceipt;

    invoke-direct {v3}, Lcom/centauri/oversea/data/CTIPayReceipt;-><init>()V

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lb/a;->g([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/centauri/oversea/data/CTIPayReceipt;->receipt_sig:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Lcom/centauri/oversea/data/CTIPayReceipt;->sku:Ljava/util/List;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/centauri/oversea/data/CTIPayReceipt;->orderId:Ljava/lang/String;

    const-string v2, "4"

    iput-object v2, v3, Lcom/centauri/oversea/data/CTIPayReceipt;->gw_reprovide_version:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$3;->val$callback:Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$3;->val$callback:Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2, v0}, Lcom/centauri/oversea/newapi/response/IGetPurchaseCallback;->callback(Ljava/util/List;)V

    iget-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$3;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;->resultCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$3;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;

    invoke-static {v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->access$000(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore$3;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;

    invoke-static {p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->access$000(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "queryEnd"

    invoke-static {p2, v0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;->access$100(Lcom/centauri/oversea/business/payhub/gwallet/New/CTIRestore;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
