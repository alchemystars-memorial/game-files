.class Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;

.field public final val$billingResult:Lcom/android/billingclient/api/BillingResult;

.field public final val$list:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7$1;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    iput-object p3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;

    iget-object v0, v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;->val$count:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, v0, v1

    const-string v0, "onQueryPurchasesResponse SUBS : "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;

    iget-object v2, v2, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;->val$count:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BillingHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;

    iget-object v0, v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-static {v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->access$100(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7$1;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7$1;->val$list:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;

    iget-object v0, v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;->val$resultList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7$1;->val$list:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const-string v0, "queryPurchasesAsync: Get an error response trying to query subscription purchases."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "queryPurchasesAsync: don\'t support subscription."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;

    iget-object v0, v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;->val$count:[I

    aget v0, v0, v1

    if-le v0, v3, :cond_3

    const-string v0, "onQueryPurchasesResponse SUBS "

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;

    iget-object v0, v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;->val$listener:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;

    new-instance v2, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;

    iget-object v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7$1;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v2, v3}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;-><init>(Lcom/android/billingclient/api/BillingResult;)V

    iget-object v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;

    iget-object v3, v3, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;->val$resultList:Ljava/util/ArrayList;

    invoke-interface {v0, v2, v3}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;->onQueryPurchasesResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;

    iget-object v0, v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$7;->val$count:[I

    aput v1, v0, v1

    :cond_3
    return-void
.end method
