.class public abstract Lcom/centauri/oversea/api/request/CTIBaseRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;,
        Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;
    }
.end annotation


# static fields
.field public static final DEFAULTPRODUCTID:Ljava/lang/String; = "FFFFFFFF"

.field public static final MALL_TYPE_DEFAULT:I = 0x0

.field public static final MALL_TYPE_GROUPBUY:I = 0x1

.field public static final MALL_TYPE_VMALL:I = 0x2

.field public static final OFFER_TYPE_BG:Ljava/lang/String; = "bg"

.field public static final OFFER_TYPE_GAME:Ljava/lang/String; = "save"

.field public static final OFFER_TYPE_UNIONMONTH:Ljava/lang/String; = "unimonth"

.field private static final serialVersionUID:J = -0x7e9d9f7ec125f6b0L


# instance fields
.field public acctType:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public currency_type:Ljava/lang/String;

.field public drmInfo:Ljava/lang/String;

.field public extendInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;

.field public extras:Ljava/lang/String;

.field public goodsZoneId:Ljava/lang/String;

.field public h5Url:Ljava/lang/String;

.field public inAppMessaging:Z

.field public isCanChange:Z

.field public mOldType:I

.field public mType:Ljava/lang/String;

.field public mallType:I

.field public mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

.field public offerId:Ljava/lang/String;

.field public openId:Ljava/lang/String;

.field public openKey:Ljava/lang/String;

.field public pf:Ljava/lang/String;

.field public pfKey:Ljava/lang/String;

.field public resData:[B

.field public resId:I

.field public reserv:Ljava/lang/String;

.field public saveValue:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public sessionType:Ljava/lang/String;

.field public zoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->currency_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->country:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->extras:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->drmInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->offerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openId:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionType:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->zoneId:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pf:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pfKey:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->resId:I

    const-string v2, "common"

    iput-object v2, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->acctType:Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->saveValue:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->isCanChange:Z

    iput v1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mallType:I

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->h5Url:Ljava/lang/String;

    new-instance v1, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;-><init>(Lcom/centauri/oversea/api/request/CTIBaseRequest;)V

    iput-object v1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    new-instance v1, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;

    invoke-direct {v1, p0}, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;-><init>(Lcom/centauri/oversea/api/request/CTIBaseRequest;)V

    iput-object v1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->extendInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->drmInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAcctType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->acctType:Ljava/lang/String;

    return-object v0
.end method

.method public getAssignProductid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iget-object v0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->productid:Ljava/lang/String;

    return-object v0
.end method

.method public getCDrmInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->drmInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iget-object v0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->discountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iget-object v0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->discountUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscoutId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iget-object v0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->discoutId:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iget-object v0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->drmInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iget-object v0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->extras:Ljava/lang/String;

    return-object v0
.end method

.method public getH5Url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->h5Url:Ljava/lang/String;

    return-object v0
.end method

.method public getInAppMessaging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->inAppMessaging:Z

    return v0
.end method

.method public getIsCanChange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->isCanChange:Z

    return v0
.end method

.method public getMallType()I
    .locals 1

    iget v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mallType:I

    return v0
.end method

.method public getOfferId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->offerId:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPayChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iget-object v0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->payChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getPf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pf:Ljava/lang/String;

    return-object v0
.end method

.method public getPfKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pfKey:Ljava/lang/String;

    return-object v0
.end method

.method public getResData()[B
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->resData:[B

    return-object v0
.end method

.method public getResId()I
    .locals 1

    iget v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->resId:I

    return v0
.end method

.method public getReserv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->reserv:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->saveValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionType:Ljava/lang/String;

    return-object v0
.end method

.method public getShowListOtherNum()Z
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->extendInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;

    iget-boolean v0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;->isShowListOtherNum:Z

    return v0
.end method

.method public getShowNum()Z
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->extendInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;

    iget-boolean v0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;->isShowNum:Z

    return v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->extendInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;

    iget-object v0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->zoneId:Ljava/lang/String;

    return-object v0
.end method

.method public setAcctType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->acctType:Ljava/lang/String;

    return-void
.end method

.method public setCDrmInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->drmInfo:Ljava/lang/String;

    return-void
.end method

.method public setDiscountType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iput-object p1, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->discountType:Ljava/lang/String;

    return-void
.end method

.method public setDiscountUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iput-object p1, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->discountUrl:Ljava/lang/String;

    return-void
.end method

.method public setDiscoutId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iput-object p1, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->discoutId:Ljava/lang/String;

    return-void
.end method

.method public setDrmInfo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iput-object p1, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->drmInfo:Ljava/lang/String;

    return-void
.end method

.method public setExtras(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iput-object p1, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->extras:Ljava/lang/String;

    return-void
.end method

.method public setH5Url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->h5Url:Ljava/lang/String;

    return-void
.end method

.method public setIsCanChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->isCanChange:Z

    return-void
.end method

.method public setMallType(I)V
    .locals 0

    iput p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mallType:I

    return-void
.end method

.method public setOfferId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->offerId:Ljava/lang/String;

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openId:Ljava/lang/String;

    return-void
.end method

.method public setOpenKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openKey:Ljava/lang/String;

    return-void
.end method

.method public setPayChannel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iput-object p1, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->payChannel:Ljava/lang/String;

    return-void
.end method

.method public setPf(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pf:Ljava/lang/String;

    return-void
.end method

.method public setPfKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pfKey:Ljava/lang/String;

    return-void
.end method

.method public setResData([B)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->resData:[B

    return-void
.end method

.method public setResId(I)V
    .locals 0

    iput p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->resId:I

    return-void
.end method

.method public setReserv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->reserv:Ljava/lang/String;

    return-void
.end method

.method public setSaveValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->saveValue:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setSessionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionType:Ljava/lang/String;

    return-void
.end method

.method public setShowListOtherNum(Z)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->extendInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;

    iput-boolean p1, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;->isShowListOtherNum:Z

    return-void
.end method

.method public setShowNum(Z)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->extendInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;

    iput-boolean p1, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;->isShowNum:Z

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->extendInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;

    iput-object p1, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIExtendInfo;->unit:Ljava/lang/String;

    return-void
.end method

.method public setZoneId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->zoneId:Ljava/lang/String;

    return-void
.end method
