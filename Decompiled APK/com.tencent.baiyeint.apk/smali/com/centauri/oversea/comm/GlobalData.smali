.class public Lcom/centauri/oversea/comm/GlobalData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/comm/GlobalData$b;
    }
.end annotation


# static fields
.field public static final SDK_VERSION:Ljava/lang/String; = "4.06.081"

.field public static final TAG:Ljava/lang/String; = "GlobalData"

.field private static context:Landroid/content/Context; = null

.field public static isGoogleNew:Z = true

.field private static mIV:Ljava/lang/String; = ""

.field private static mSK:Ljava/lang/String; = ""

.field public static subscribeClearCache:Ljava/lang/String; = "0"

.field public static subscribeSaveCache:Ljava/lang/String; = "0"

.field public static useHighestGoogleApi:Z = true


# instance fields
.field public IDC:Ljava/lang/String;

.field public IDCInfo:Ljava/lang/String;

.field public changeVid:Ljava/lang/String;

.field private currencyInGw:Ljava/lang/String;

.field public env:Ljava/lang/String;

.field public goodsZoneID:Ljava/lang/String;

.field public gw_version:Ljava/lang/String;

.field public heartBeat:J

.field public inAppMessaging:Ljava/lang/Boolean;

.field public ipMeasureSwitch:Z

.field public isSendReport:Z

.field private mIpManager:Lp/c;

.field private mNetCfg:Lp/d;

.field private mTimeoutHelper:Lp/g;

.field public offerID:Ljava/lang/String;

.field public openID:Ljava/lang/String;

.field public openKey:Ljava/lang/String;

.field public pf:Ljava/lang/String;

.field public pfKey:Ljava/lang/String;

.field public region:Ljava/lang/String;

.field public roleId:Ljava/lang/String;

.field public serverId:Ljava/lang/String;

.field public sessionID:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;

.field public sessionType:Ljava/lang/String;

.field private uiLevel:I

.field private useDomainFirst:Z

.field public userName:Ljava/lang/String;

.field public zoneID:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/centauri/oversea/comm/GlobalData;->uiLevel:I

    const-string v1, ""

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->IDCInfo:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->openKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->pf:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->pfKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->sessionID:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->sessionType:Ljava/lang/String;

    const-string v2, "1"

    iput-object v2, p0, Lcom/centauri/oversea/comm/GlobalData;->zoneID:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->goodsZoneID:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->userName:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/centauri/oversea/comm/GlobalData;->inAppMessaging:Ljava/lang/Boolean;

    const-string/jumbo v2, "test"

    iput-object v2, p0, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    const-string v2, "cpay_4.1.1"

    iput-object v2, p0, Lcom/centauri/oversea/comm/GlobalData;->changeVid:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->serverId:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->roleId:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->gw_version:Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->region:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/centauri/oversea/comm/GlobalData;->ipMeasureSwitch:Z

    iput-boolean v2, p0, Lcom/centauri/oversea/comm/GlobalData;->isSendReport:Z

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->sessionToken:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lp/d;

    iput-object v3, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lp/c;

    iput-object v3, p0, Lcom/centauri/oversea/comm/GlobalData;->mTimeoutHelper:Lp/g;

    iput-boolean v2, p0, Lcom/centauri/oversea/comm/GlobalData;->useDomainFirst:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/centauri/oversea/comm/GlobalData;->heartBeat:J

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->currencyInGw:Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "use_highest_google_api"

    invoke-static {v1, v2}, Lo/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GlobalData"

    const-string/jumbo v2, "useHighestGoogleApi=false"

    invoke-static {v1, v2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v0, Lcom/centauri/oversea/comm/GlobalData;->useHighestGoogleApi:Z

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/centauri/oversea/comm/GlobalData$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/centauri/oversea/comm/GlobalData;-><init>()V

    return-void
.end method

.method public static getIV()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/centauri/oversea/comm/GlobalData;->mIV:Ljava/lang/String;

    return-object v0
.end method

.method private loadInitParams(Lcom/centauri/oversea/newapi/params/InitParams;)V
    .locals 4

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getIDC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getOfferID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->offerID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getOpenID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getZoneID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->zoneID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getInAppMessaging()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->inAppMessaging:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getExtra()Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getIDCInfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->IDCInfo:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getOpenKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->openKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getPf()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->pf:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getPfKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->pfKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getSessionID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->sessionID:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getSessionType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->sessionType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getGoodsZoneID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->goodsZoneID:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getChannelExtras()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->getChannelExtras()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/g;->r(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "roleId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->roleId:Ljava/lang/String;

    const-string v0, "Init serverId = "

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; Init roleid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/centauri/oversea/comm/GlobalData;->roleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalData"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/centauri/oversea/newapi/params/InitParams;->getEnv()Ljava/lang/String;

    move-result-object p1

    const-string v0, "release"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "test"

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    return-void
.end method

.method public static setIV(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/centauri/oversea/comm/GlobalData;->mIV:Ljava/lang/String;

    return-void
.end method

.method public static setSK(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/centauri/oversea/comm/GlobalData;->context:Landroid/content/Context;

    const-string v1, "mSK"

    invoke-static {v0, v1, p0}, Lo/e;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static singleton()Lcom/centauri/oversea/comm/GlobalData;
    .locals 1

    sget-object v0, Lcom/centauri/oversea/comm/GlobalData$b;->a:Lcom/centauri/oversea/comm/GlobalData;

    return-object v0
.end method


# virtual methods
.method public IPManager()Lp/c;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lp/c;

    if-nez v0, :cond_0

    new-instance v0, Lp/c;

    invoke-direct {v0}, Lp/c;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lp/c;

    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lp/c;

    return-object v0
.end method

.method public NetCfg()Lp/d;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lp/d;

    return-object v0
.end method

.method public NetTimeout()Lp/g;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mTimeoutHelper:Lp/g;

    if-nez v0, :cond_0

    new-instance v0, Lp/g;

    invoke-direct {v0}, Lp/g;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mTimeoutHelper:Lp/g;

    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mTimeoutHelper:Lp/g;

    return-object v0
.end method

.method public getCurrencyInGw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->currencyInGw:Ljava/lang/String;

    return-object v0
.end method

.method public getGw_version()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->gw_version:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lp/d;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v2

    iget-object v2, v2, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    const-string v3, "dev"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lp/d;->a()Lcom/centauri/oversea/data/Cfg;

    move-result-object v0

    iget-object v1, v0, Lcom/centauri/oversea/data/Cfg;->mDomain:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getIPList()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lp/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lp/d;->b()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPListLength()I
    .locals 2

    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lp/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lp/d;->b()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lp/d;

    invoke-virtual {v0}, Lp/d;->b()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getNetToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->region:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getReportDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lp/d;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lp/d;->a()Lcom/centauri/oversea/data/Cfg;

    move-result-object v0

    iget-object v0, v0, Lcom/centauri/oversea/data/Cfg;->mReportDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getSK()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/centauri/oversea/comm/GlobalData;->context:Landroid/content/Context;

    const-string v1, "mSK"

    invoke-static {v0, v1}, Lo/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/centauri/oversea/newapi/params/InitParams;)V
    .locals 9

    const/4 v0, 0x1

    const-string v1, ""

    move-object v2, v1

    :goto_0
    const/16 v3, 0x11

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v2, v0, 0xa

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "CalculateIV"

    invoke-static {v0, v2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/centauri/oversea/comm/GlobalData;->mIV:Ljava/lang/String;

    const-string v2, "34asdS5"

    sput-object v2, Lcom/centauri/oversea/comm/GlobalData;->mSK:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/centauri/oversea/comm/GlobalData;->mSK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "WEls"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/centauri/oversea/comm/GlobalData;->mSK:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/centauri/oversea/comm/GlobalData;->mSK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "2SD23"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/centauri/oversea/comm/GlobalData;->mSK:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/centauri/oversea/comm/GlobalData;->mSK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SFS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x11a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ASD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/centauri/oversea/comm/GlobalData;->mSK:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/centauri/oversea/comm/GlobalData;->mSK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/centauri/oversea/comm/GlobalData;->mSK:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/centauri/oversea/comm/GlobalData;->mSK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "SF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/centauri/oversea/comm/GlobalData;->mSK:Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/centauri/oversea/comm/GlobalData;->context:Landroid/content/Context;

    sget-object v2, Lcom/centauri/oversea/comm/GlobalData;->mSK:Ljava/lang/String;

    invoke-static {v2}, Lcom/centauri/oversea/comm/GlobalData;->setSK(Ljava/lang/String;)V

    sget-object v2, Lcom/centauri/oversea/comm/GlobalData;->mSK:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/centauri/oversea/comm/GlobalData;->loadInitParams(Lcom/centauri/oversea/newapi/params/InitParams;)V

    iget-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lp/d;

    if-nez p1, :cond_1

    new-instance p1, Lp/d;

    invoke-direct {p1}, Lp/d;-><init>()V

    iput-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lp/d;

    :cond_1
    iget-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lp/d;

    invoke-virtual {p1}, Lp/d;->c()V

    iget-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lp/c;

    if-nez p1, :cond_2

    new-instance p1, Lp/c;

    invoke-direct {p1}, Lp/c;-><init>()V

    iput-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lp/c;

    :cond_2
    iget-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lp/c;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Lp/c;->b:Ljava/util/ArrayList;

    const-string v2, "CentauriOverseaIP"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p1}, Lp/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lp/c;->c()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iget-wide v7, p1, Lp/c;->a:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    move-wide v5, v7

    :goto_1
    iput-wide v5, p1, Lp/c;->a:J

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v5, "APIPManager"

    if-nez v2, :cond_4

    :try_start_0
    const-string/jumbo v2, "utf-8"

    invoke-static {v4, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readSPFile() decodeIPInfo: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v4, "init(): "

    invoke-static {v4}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, ";"

    if-nez v2, :cond_6

    iget-object v2, p1, Lp/c;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v2, v3

    :goto_3
    array-length v6, v1

    if-ge v2, v6, :cond_6

    iget-object v6, p1, Lp/c;->b:Ljava/util/ArrayList;

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p1, Lp/c;->b:Ljava/util/ArrayList;

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save ip: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    iget-object v1, p1, Lp/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/centauri/oversea/comm/GlobalData;->getIPList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    array-length v2, v1

    if-gtz v2, :cond_7

    goto :goto_5

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    array-length v5, v1

    if-ge v3, v5, :cond_9

    aget-object v5, v1, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lp/c;->b:Ljava/util/ArrayList;

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p1, Lp/c;->b:Ljava/util/ArrayList;

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lp/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public isUseDomainFirst()Z
    .locals 1

    iget-boolean v0, p0, Lcom/centauri/oversea/comm/GlobalData;->useDomainFirst:Z

    return v0
.end method

.method public refreshNetToken()V
    .locals 1

    invoke-static {}, Lo/i;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->sessionToken:Ljava/lang/String;

    return-void
.end method

.method public setCurrencyInGw(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->currencyInGw:Ljava/lang/String;

    return-void
.end method

.method public setGw_version(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->gw_version:Ljava/lang/String;

    return-void
.end method

.method public setIDCAndEnv()V
    .locals 2

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "initIdc"

    invoke-static {v0, v1}, Lo/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->IDC:Ljava/lang/String;

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "initEnv"

    invoke-static {v0, v1}, Lo/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->env:Ljava/lang/String;

    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lp/d;

    if-nez v0, :cond_0

    new-instance v0, Lp/d;

    invoke-direct {v0}, Lp/d;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mNetCfg:Lp/d;

    invoke-virtual {v0}, Lp/d;->c()V

    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lp/c;

    if-nez v0, :cond_1

    new-instance v0, Lp/c;

    invoke-direct {v0}, Lp/c;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/comm/GlobalData;->mIpManager:Lp/c;

    :cond_1
    return-void
.end method

.method public setMUILevel(I)V
    .locals 0

    iput p1, p0, Lcom/centauri/oversea/comm/GlobalData;->uiLevel:I

    return-void
.end method

.method public setNetToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->sessionToken:Ljava/lang/String;

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->region:Ljava/lang/String;

    return-void
.end method

.method public setUseDomainFirst(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/centauri/oversea/comm/GlobalData;->useDomainFirst:Z

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/centauri/oversea/comm/GlobalData;->userName:Ljava/lang/String;

    return-void
.end method

.method public showLoading()Z
    .locals 2

    iget v0, p0, Lcom/centauri/oversea/comm/GlobalData;->uiLevel:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public showPayResult()Z
    .locals 1

    iget v0, p0, Lcom/centauri/oversea/comm/GlobalData;->uiLevel:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
