.class Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->queryNewPurchasesAsync(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

.field public final val$count:[I

.field public final val$listener:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;

.field public final val$resultList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;[ILjava/util/ArrayList;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$5;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$5;->val$count:[I

    iput-object p3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$5;->val$resultList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$5;->val$listener:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryPurchasesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->access$000()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$5$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$5$1;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$5;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
