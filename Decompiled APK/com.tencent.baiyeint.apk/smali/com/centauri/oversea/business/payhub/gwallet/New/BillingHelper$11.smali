.class Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->access$202(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;Z)Z

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-static {v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->access$500(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    invoke-static {}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->access$000()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;

    invoke-direct {v1, p0, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;-><init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;Lcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
