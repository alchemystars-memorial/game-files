.class public Lcom/centauri/oversea/newapi/params/BillingFlowParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;,
        Lcom/centauri/oversea/newapi/params/BillingFlowParams$Builder;,
        Lcom/centauri/oversea/newapi/params/BillingFlowParams$Type;
    }
.end annotation


# static fields
.field public static final TYPE_GAME:Ljava/lang/String; = "save"

.field public static final TYPE_GOODS:Ljava/lang/String; = "bg"

.field public static final TYPE_MONTH:Ljava/lang/String; = "month"

.field public static final TYPE_UNION_MONTH:Ljava/lang/String; = "unimonth"


# instance fields
.field private basePlanId:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private currencyType:Ljava/lang/String;

.field private extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

.field private gw_offerId:Ljava/lang/String;

.field private isAutoPay:Z

.field private mType:Ljava/lang/String;

.field private offerToken:Ljava/lang/String;

.field private payChannel:Ljava/lang/String;

.field private productID:Ljava/lang/String;

.field private selectedOfferIndex:I

.field private serviceCode:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "save"

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->mType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->currencyType:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->country:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->offerToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->basePlanId:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->gw_offerId:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->selectedOfferIndex:I

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->isAutoPay:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/centauri/oversea/newapi/params/BillingFlowParams$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams;-><init>()V

    return-void
.end method

.method public static synthetic access$1002(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->basePlanId:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1102(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->gw_offerId:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1202(Lcom/centauri/oversea/newapi/params/BillingFlowParams;I)I
    .locals 0

    iput p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->selectedOfferIndex:I

    return p1
.end method

.method public static synthetic access$1302(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceCode:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1402(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1502(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->isAutoPay:Z

    return p1
.end method

.method public static synthetic access$1602(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->mType:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->currencyType:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->country:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$702(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->payChannel:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$802(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->productID:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$902(Lcom/centauri/oversea/newapi/params/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->offerToken:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getBasePlanId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->basePlanId:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->currencyType:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    if-nez v0, :cond_0

    new-instance v0, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    invoke-direct {v0}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    return-object v0
.end method

.method public getGw_offerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->gw_offerId:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->offerToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPayChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->payChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->productID:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedOfferIndex()I
    .locals 1

    iget v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->selectedOfferIndex:I

    return v0
.end method

.method public getServiceCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoPay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->isAutoPay:Z

    return v0
.end method

.method public toMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->mType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->mType:Ljava/lang/String;

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->currencyType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->currencyType:Ljava/lang/String;

    const-string v2, "currencyType"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->country:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->country:Ljava/lang/String;

    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->payChannel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->payChannel:Ljava/lang/String;

    const-string v2, "payChannel"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->productID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->productID:Ljava/lang/String;

    const-string v2, "productId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->offerToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->offerToken:Ljava/lang/String;

    const-string v2, "offerToken"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->basePlanId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->basePlanId:Ljava/lang/String;

    const-string v2, "basePlanId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->gw_offerId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->gw_offerId:Ljava/lang/String;

    const-string v2, "gw_offerId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->selectedOfferIndex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->selectedOfferIndex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "selectedOfferIndex"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceCode:Ljava/lang/String;

    const-string v2, "serviceCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->serviceName:Ljava/lang/String;

    const-string v2, "serviceName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    invoke-static {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->access$000(Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    invoke-static {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->access$000(Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "channelExtras"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    invoke-static {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->access$100(Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    invoke-static {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->access$100(Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drmInfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    invoke-static {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->access$200(Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/centauri/oversea/newapi/params/BillingFlowParams;->extra:Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;

    invoke-static {v1}, Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;->access$200(Lcom/centauri/oversea/newapi/params/BillingFlowParams$BillingFlowParamsExtra;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "goodsZoneId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object v0
.end method
