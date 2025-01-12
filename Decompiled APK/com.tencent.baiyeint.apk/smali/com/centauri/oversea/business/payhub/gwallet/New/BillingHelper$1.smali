.class Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->startSetup(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

.field public final val$listener:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabSetupFinishedListener;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabSetupFinishedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$1;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$1;->val$listener:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$1;->val$listener:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;

    invoke-direct {v1, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;-><init>(Lcom/android/billingclient/api/BillingResult;)V

    invoke-interface {v0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;)V

    :cond_0
    return-void
.end method
