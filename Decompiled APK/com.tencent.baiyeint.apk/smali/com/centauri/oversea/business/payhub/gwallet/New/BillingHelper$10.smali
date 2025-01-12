.class Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/billingclient/api/BillingConfigResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->getBillingConfigAsync(Lcom/android/billingclient/api/BillingConfigResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

.field public final val$listener:Lcom/android/billingclient/api/BillingConfigResponseListener;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;Lcom/android/billingclient/api/BillingConfigResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$10;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$10;->val$listener:Lcom/android/billingclient/api/BillingConfigResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$10;->val$listener:Lcom/android/billingclient/api/BillingConfigResponseListener;

    invoke-interface {v0, p1, p2}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    return-void
.end method
