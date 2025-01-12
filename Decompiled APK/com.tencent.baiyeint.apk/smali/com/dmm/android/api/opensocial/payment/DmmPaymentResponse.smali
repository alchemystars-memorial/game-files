.class public Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;
.super Ljava/lang/Object;
.source "DmmPaymentResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse$Keys;
    }
.end annotation


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mOrderedTime:Ljava/lang/String;

.field private mPaymentId:Ljava/lang/String;

.field private mPaymentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPaymentResponse:Z

.field private mStatus:Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

.field private mTransactionUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->getJson()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->getJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->parse(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private parse(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "entry"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/dmm/android/util/Util;->convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "paymentId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->mPaymentId:Ljava/lang/String;

    const-string/jumbo v0, "status"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;->valueOf(I)Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->mStatus:Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    const-string/jumbo v0, "transactionUrl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->mTransactionUrl:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->mTransactionUrl:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "message"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->mMessage:Ljava/lang/String;

    const-string v0, "paymentItems"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    check-cast p1, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->mPaymentItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->valueOf(Ljava/util/Map;)Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->mPaymentItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    const-string v0, "orderedTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->mOrderedTime:Ljava/lang/String;

    :cond_a
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->mPaymentResponse:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderedTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->mOrderedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->mPaymentId:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->mPaymentItems:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->mPaymentItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getStatus()Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->mStatus:Lcom/dmm/android/api/opensocial/payment/DmmPaymentStatus;

    return-object v0
.end method

.method public getTransactionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->mTransactionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentResponse;->mPaymentResponse:Z

    return v0
.end method
