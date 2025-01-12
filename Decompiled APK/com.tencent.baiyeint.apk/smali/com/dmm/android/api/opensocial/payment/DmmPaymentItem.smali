.class public Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;
.super Ljava/lang/Object;
.source "DmmPaymentItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem$Field;
    }
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mImageUrl:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mQuantity:I

.field private mUnitPrice:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static valueOf(Ljava/util/Map;)Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;

    invoke-direct {v1}, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;-><init>()V

    const-string v2, "itemId"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mId:Ljava/lang/String;

    const-string v2, "itemName"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mName:Ljava/lang/String;

    const-string v2, "imageUrl"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mImageUrl:Ljava/lang/String;

    const-string v2, "description"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mDescription:Ljava/lang/String;

    const-string/jumbo v2, "unitPrice"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    return-object v0

    :cond_5
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mUnitPrice:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "quantity"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mQuantity:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getParameterMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mId:Ljava/lang/String;

    const-string v2, "itemId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mName:Ljava/lang/String;

    const-string v2, "itemName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mImageUrl:Ljava/lang/String;

    const-string v2, "imageUrl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mDescription:Ljava/lang/String;

    const-string v2, "description"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mUnitPrice:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unitPrice"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mQuantity:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "quantity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mQuantity:I

    return v0
.end method

.method public getUnitPrice()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mUnitPrice:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setQuantity(I)Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;
    .locals 0

    iput p1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mQuantity:I

    return-object p0
.end method

.method public setUnitPrice(I)Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;
    .locals 0

    iput p1, p0, Lcom/dmm/android/api/opensocial/payment/DmmPaymentItem;->mUnitPrice:I

    return-object p0
.end method
