.class Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$3;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$3;

.field public final val$billingResult:Lcom/android/billingclient/api/BillingResult;

.field public final val$productDetailsList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$3;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$3$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$3;

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$3$1;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    iput-object p3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$3$1;->val$productDetailsList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "BillingHelper"

    const-string v1, "onProductDetailsResponse ---- "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$3$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$3;

    iget-object v0, v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$3;->val$listener:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryProductDetailsListener;

    new-instance v1, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$3$1;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v1, v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;-><init>(Lcom/android/billingclient/api/BillingResult;)V

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$3$1;->val$productDetailsList:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQueryProductDetailsListener;->onProductDetailsResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V

    return-void
.end method
