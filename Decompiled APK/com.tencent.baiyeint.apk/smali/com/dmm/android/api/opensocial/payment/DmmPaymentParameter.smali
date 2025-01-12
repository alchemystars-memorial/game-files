.class public Lcom/dmm/android/api/opensocial/payment/DmmPaymentParameter;
.super Ljava/lang/Object;
.source "DmmPaymentParameter.java"

# interfaces
.implements Lcom/dmm/android/api/opensocial/DmmParameterHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/opensocial/payment/DmmPaymentParameter$Field;
    }
.end annotation


# instance fields
.field private mCallbackUrl:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mPaymentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentParameter;->mPaymentItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addItem(Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;)Lcom/dmm/android/api/opensocial/payment/DmmPaymentParameter;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentParameter;->mPaymentItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentParameter;->mCallbackUrl:Ljava/lang/String;

    const-string v2, "callbackUrl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentParameter;->mMessage:Ljava/lang/String;

    const-string v2, "message"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentParameter;->mPaymentItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->getParameterMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "paymentItems"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public setCallbackUrl(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/payment/DmmPaymentParameter;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentParameter;->mCallbackUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/payment/DmmPaymentParameter;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentParameter;->mMessage:Ljava/lang/String;

    return-object p0
.end method
