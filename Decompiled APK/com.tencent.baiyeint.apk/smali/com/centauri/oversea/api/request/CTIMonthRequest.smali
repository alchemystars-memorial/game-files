.class public Lcom/centauri/oversea/api/request/CTIMonthRequest;
.super Lcom/centauri/oversea/api/request/CTIBaseRequest;


# static fields
.field public static final SERVICETYPE_NORMAL:I = 0x1

.field public static final SERVICETYPE_RENEW:I = 0x2

.field public static final SERVICETYPE_UPGRADE:I = 0x3

.field private static final serialVersionUID:J = -0x7bbe2638f13b37eL


# instance fields
.field public autoPay:Z

.field public basePlanId:Ljava/lang/String;

.field public gw_offerId:Ljava/lang/String;

.field public offerToken:Ljava/lang/String;

.field public remark:Ljava/lang/String;

.field public selectedOfferIndex:I

.field public serviceCode:Ljava/lang/String;

.field public serviceName:Ljava/lang/String;

.field public serviceType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/centauri/oversea/api/request/CTIBaseRequest;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->offerToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->basePlanId:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->gw_offerId:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->selectedOfferIndex:I

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->remark:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->autoPay:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceType:I

    const-string/jumbo v0, "unimonth"

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mType:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mOldType:I

    return-void
.end method


# virtual methods
.method public getAutoPay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->autoPay:Z

    return v0
.end method

.method public getBasePlanId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->basePlanId:Ljava/lang/String;

    return-object v0
.end method

.method public getGw_offerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->gw_offerId:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->offerToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedOfferIndex()I
    .locals 1

    iget v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->selectedOfferIndex:I

    return v0
.end method

.method public getServiceCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()I
    .locals 1

    iget v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceType:I

    return v0
.end method

.method public setAutoPay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->autoPay:Z

    return-void
.end method

.method public setBasePlanId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->basePlanId:Ljava/lang/String;

    return-void
.end method

.method public setGw_offerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->gw_offerId:Ljava/lang/String;

    return-void
.end method

.method public setOfferToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->offerToken:Ljava/lang/String;

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->remark:Ljava/lang/String;

    return-void
.end method

.method public setSelectedOfferIndex(I)V
    .locals 0

    iput p1, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->selectedOfferIndex:I

    return-void
.end method

.method public setServiceCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceCode:Ljava/lang/String;

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceName:Ljava/lang/String;

    return-void
.end method

.method public setServiceType(I)V
    .locals 0

    iput p1, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceType:I

    return-void
.end method
