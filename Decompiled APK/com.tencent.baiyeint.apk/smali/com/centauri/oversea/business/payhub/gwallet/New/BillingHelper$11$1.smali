.class Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;

.field public final val$billingResult:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    iget-object v1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBillingSetupFinished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BillingHelper"

    invoke-static {v2, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;

    iget-object v2, v2, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-static {v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->access$300(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;)Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;

    iget-object v2, v2, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-static {v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->access$300(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;)Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;->run(Lcom/android/billingclient/api/BillingResult;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;

    iget-object v0, v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-static {v0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->access$302(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;)Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;

    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;

    iget-object v0, v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-static {v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->access$500(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;

    iget-object v0, v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-static {v0, v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->access$202(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;

    iget-object v0, v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-static {v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->access$300(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;)Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;

    iget-object v0, v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-static {v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->access$300(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;)Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;

    move-result-object v0

    iget-object v3, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {v0, v3}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;->run(Lcom/android/billingclient/api/BillingResult;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;

    iget-object v0, v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-static {v0, v1}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->access$302(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;)Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$IabRunnable;

    :cond_3
    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;

    iget-object v0, v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    const-wide/16 v3, 0x1f4

    invoke-static {v0, v3, v4}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->access$402(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;J)J

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11$1;->this$1:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;

    iget-object v0, v0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$11;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    invoke-static {v0, v2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->access$202(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;Z)Z

    :goto_0
    return-void
.end method
