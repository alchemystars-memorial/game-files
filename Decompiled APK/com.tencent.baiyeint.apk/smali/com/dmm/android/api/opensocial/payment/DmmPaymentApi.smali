.class public final Lcom/dmm/android/api/opensocial/payment/DmmPaymentApi;
.super Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;
.source "DmmPaymentApi.java"


# static fields
.field private static final COMMAND:Ljava/lang/String; = "payment"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildUrl(Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->getEndpoint()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "payment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentApi;->mGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentApi;->mSelector:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "@app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentApi;->mIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentApi;->mIds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
