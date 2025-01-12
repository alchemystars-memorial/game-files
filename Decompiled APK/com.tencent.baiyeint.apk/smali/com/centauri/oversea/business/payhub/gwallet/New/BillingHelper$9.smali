.class Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabConsumeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

.field public final val$listener:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabConsumeListener;


# direct methods
.method public constructor <init>(Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabConsumeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$9;->this$0:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;

    iput-object p2, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$9;->val$listener:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabConsumeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$9;->val$listener:Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabConsumeListener;

    new-instance v1, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;

    invoke-direct {v1, p1}, Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;-><init>(Lcom/android/billingclient/api/BillingResult;)V

    invoke-interface {v0, v1, p2}, Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabConsumeListener;->onConsumeResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/lang/String;)V

    return-void
.end method
