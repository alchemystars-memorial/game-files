.class Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/billingclient/api/InAppMessageResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->showInAppMessages(Landroid/content/Context;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabInAppMessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

.field public final val$listener:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabInAppMessagingListener;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabInAppMessagingListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$8;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$8;->val$listener:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabInAppMessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInAppMessageResponse(Lcom/android/billingclient/api/InAppMessageResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/billingclient/api/InAppMessageResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$8;->val$listener:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabInAppMessagingListener;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/InAppMessageResult;->getResponseCode()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$8;->val$listener:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabInAppMessagingListener;

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabInAppMessagingListener;->onInAppMessageResponse(Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method
