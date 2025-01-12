.class public interface abstract Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper$OnIabQuerySkuDetailsListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/payhub/gwallet/New/BillingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnIabQuerySkuDetailsListener"
.end annotation


# virtual methods
.method public abstract onSkuDetailsResponse(Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/centauri/oversea/business/payhub/gwallet/New/WrapperBillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation
.end method
