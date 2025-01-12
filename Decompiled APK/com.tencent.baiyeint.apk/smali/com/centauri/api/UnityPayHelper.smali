.class public Lcom/centauri/api/UnityPayHelper;
.super Ljava/lang/Object;


# static fields
.field public static final APPEXTENDS:Ljava/lang/String; = "appExtends"

.field public static final AP_CTI_RESP_PAY_SUCC_POST_ERR:Ljava/lang/String; = "4"

.field public static final AP_CTI_RESP_RESULT_CANCEL:Ljava/lang/String; = "1"

.field public static final AP_CTI_RESP_RESULT_ERROR:Ljava/lang/String; = "-1"

.field public static final AP_CTI_RESP_RESULT_NET_ERROR:Ljava/lang/String; = "3"

.field public static final AP_CTI_RESP_RESULT_NET_MPUNKNOW:Ljava/lang/String; = "9"

.field public static final AP_CTI_RESP_RESULT_OK:Ljava/lang/String; = "0"

.field public static final AP_CTI_RESP_RESULT_PARAM_ERROR:Ljava/lang/String; = "2"

.field public static final AUTOPAY:Ljava/lang/String; = "autoPay"

.field public static final BASEPLANID:Ljava/lang/String; = "basePlanId"

.field private static final CALLBACKGETINFO:Ljava/lang/String; = "CentauriGetInfoCallback"

.field private static final CALLBACKGETPRODUCT:Ljava/lang/String; = "CentauriGetLocalPriceCallback"

.field private static final CALLBACKINIT:Ljava/lang/String; = "CentauriInitCallback"

.field private static final CALLBACKLOGIN:Ljava/lang/String; = "CentauriLoginExpiredCallback"

.field private static final CALLBACKOBJ:Ljava/lang/String; = "CentauriPay.CallBackUtils"

.field private static final CALLBACKPAY:Ljava/lang/String; = "CentauriPayCallback"

.field private static final CALLBACKREPROVIDE:Ljava/lang/String; = "CentauriReProvidetCallback"

.field private static final CALL_BACK_GET_INTRO_PRICE:Ljava/lang/String; = "CentauriGetIntroPriceCallback"

.field public static final CHANNELEXTRAS:Ljava/lang/String; = "channelExtras"

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static final CTI_RESP_RESULT_CANCEL:Ljava/lang/String; = "1"

.field public static final CTI_RESP_RESULT_ERROR:Ljava/lang/String; = "-1"

.field public static final CTI_RESP_RESULT_NET_ERROR:Ljava/lang/String; = "3"

.field public static final CTI_RESP_RESULT_OK:Ljava/lang/String; = "0"

.field public static final CTI_RESP_RESULT_PARAM_ERROR:Ljava/lang/String; = "2"

.field public static final CTI_RESP_RESULT_THRID_CHANNEL_ERROR:Ljava/lang/String; = "100"

.field public static final CURRENCYTYPE:Ljava/lang/String; = "currencyType"

.field public static final DRMINFO:Ljava/lang/String; = "drmInfo"

.field public static final GOODSZONEID:Ljava/lang/String; = "goodsZoneId"

.field public static final GWALLET:Ljava/lang/String; = "gwallet"

.field public static final GWOFFERID:Ljava/lang/String; = "gw_offerId"

.field private static final LOGTAG:Ljava/lang/String; = "UnityPayHelper"

.field public static final NET_FAILED:Ljava/lang/String; = "{\"ret\":-1,\"err_code\":\"\",\"msg\":\"get info failed\"}"

.field public static final OFFERID:Ljava/lang/String; = "offerId"

.field public static final OFFICAL:Ljava/lang/String; = "os_offical"

.field public static final OPENID:Ljava/lang/String; = "openId"

.field public static final PAYCHANNEL:Ljava/lang/String; = "payChannel"

.field public static final PAYRESULT_CANCEL:I = -0x2

.field public static final PAYRESULT_ERROR:I = -0x1

.field public static final PAYRESULT_GW_CANCEL:I = -0x7d1

.field public static final PAYRESULT_MPUNKOWN:I = 0x9

.field public static final PAYRESULT_NET_ERROR:I = -0x4

.field public static final PAYRESULT_PARAMERROR:I = 0x3

.field public static final PAYRESULT_PAY_SUCC_POST_ERR:I = -0xbb9

.field public static final PAYRESULT_PAY_SUCC_POST_NET_ERR:I = -0xbba

.field public static final PAYRESULT_SUCC:I = 0x0

.field public static final PAYRESULT_UNKOWN:I = 0x4

.field public static final PENKEY:Ljava/lang/String; = "openKey"

.field public static final PF:Ljava/lang/String; = "pf"

.field public static final PFKEY:Ljava/lang/String; = "pfKey"

.field public static final PRODUCTID:Ljava/lang/String; = "productId"

.field public static final RESID:Ljava/lang/String; = "resId"

.field public static final RES_CODE:Ljava/lang/String; = "resultCode"

.field public static final RES_MSG:Ljava/lang/String; = "resultMsg"

.field public static final RET_OK:I = 0x0

.field public static final SERVICECODE:Ljava/lang/String; = "serviceCode"

.field public static final SERVICENAME:Ljava/lang/String; = "serviceName"

.field public static final SESSIONID:Ljava/lang/String; = "sessionId"

.field public static final SESSIONTYPE:Ljava/lang/String; = "sessionType"

.field public static final ZONEID:Ljava/lang/String; = "zoneId"

.field public static mAppExtends:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetCentauriSDKVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "UnityPayHelper"

    const-string v1, "SdkVersion: 4.05.501"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "4.05.501"

    return-object v0
.end method

.method public static GetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/centauri/api/UnityPayHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/centauri/api/UnityPayHelper$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static GetIntroPriceInfo(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/centauri/api/UnityPayHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/centauri/api/UnityPayHelper$3;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static GetProductInfo(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/centauri/api/UnityPayHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/centauri/api/UnityPayHelper$2;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/centauri/api/UnityPayHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/centauri/api/UnityPayHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Pay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/centauri/api/UnityPayHelper$12;

    invoke-direct {v1, p0, p1}, Lcom/centauri/api/UnityPayHelper$12;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Reprovide(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/centauri/api/UnityPayHelper$5;

    invoke-direct {v1, p0}, Lcom/centauri/api/UnityPayHelper$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static SetLogEnable(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetLogEnable enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityPayHelper"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/centauri/oversea/api/CTIPayAPI;->setLogEnable(Z)V

    return-void
.end method

.method private static _GetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/centauri/api/UnityPayHelper;->getMpRequest(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIBaseRequest;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "CentauriPay.CallBackUtils"

    const-string p1, "CentauriGetInfoCallback"

    const-string/jumbo p2, "{\"ret\":-1,\"err_code\":\"\",\"msg\":\"get info failed\"}"

    invoke-static {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object p2

    new-instance v0, Lcom/centauri/api/UnityPayHelper$13;

    invoke-direct {v0}, Lcom/centauri/api/UnityPayHelper$13;-><init>()V

    invoke-virtual {p2, p1, p0, v0}, Lcom/centauri/oversea/api/CTIPayAPI;->net(Lcom/centauri/oversea/api/request/CTIBaseRequest;Ljava/lang/String;Lcom/centauri/oversea/api/ICTINetCallBack;)V

    return-void
.end method

.method public static _GetIntroPriceInfo(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mapProducts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_GetIntroPriceInfo"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "os_offical"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object p0

    new-instance v0, Lcom/centauri/api/UnityPayHelper$9;

    invoke-direct {v0}, Lcom/centauri/api/UnityPayHelper$9;-><init>()V

    const-string v1, "gwallet"

    invoke-virtual {p0, v1, p1, v0}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getIntroPriceInfo(Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V

    :cond_0
    return-void
.end method

.method public static _GetProductInfo(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mapProducts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_GetProductInfo"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "os_offical"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object p0

    new-instance v0, Lcom/centauri/api/UnityPayHelper$6;

    invoke-direct {v0}, Lcom/centauri/api/UnityPayHelper$6;-><init>()V

    const-string v1, "gwallet"

    invoke-virtual {p0, v1, p1, v0}, Lcom/centauri/oversea/api/CTIPayAPI;->getProductInfo(Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;)V

    goto :goto_0

    :cond_0
    const-string v0, "os_toy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object p0

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/centauri/api/UnityPayHelper$7;

    invoke-direct {v1}, Lcom/centauri/api/UnityPayHelper$7;-><init>()V

    const-string/jumbo v2, "toy"

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getProductInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/newapi/response/InfoCallback;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    new-instance v1, Lcom/centauri/api/UnityPayHelper$8;

    invoke-direct {v1}, Lcom/centauri/api/UnityPayHelper$8;-><init>()V

    invoke-virtual {v0, p0, p1, v1}, Lcom/centauri/oversea/api/CTIPayAPI;->getProductInfo(Ljava/lang/String;Ljava/util/HashMap;Lcom/centauri/oversea/api/request/ICTIProductInfoCallback;)V

    :goto_0
    return-void
.end method

.method public static _GetProductInfoForGarena(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/centauri/api/UnityPayHelper;->getGameReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIGameRequest;

    move-result-object p0

    invoke-static {}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->singleton()Lcom/centauri/oversea/newapi/CTIPayNewAPI;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v2, Lcom/centauri/api/UnityPayHelper$16;

    invoke-direct {v2}, Lcom/centauri/api/UnityPayHelper$16;-><init>()V

    invoke-virtual {v0, v1, p0, v2}, Lcom/centauri/oversea/newapi/CTIPayNewAPI;->getProductInfo(Landroid/app/Activity;Lcom/centauri/oversea/api/request/CTIGameRequest;Lcom/centauri/oversea/newapi/response/InfoCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GetProductinfoForGarena"

    invoke-static {v0, p0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static _Initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/centauri/oversea/api/CTIPayAPI;->setEnv(Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/centauri/oversea/api/CTIPayAPI;->setReleaseIDC(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "idc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",env: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UnityPayHelper"

    invoke-static {p1, p0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "idcInfo: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Initialize message req: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p3}, Lcom/centauri/api/UnityPayHelper;->getInitReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIGameRequest;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object p1

    sget-object p2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance p3, Lcom/centauri/api/UnityPayHelper$10;

    invoke-direct {p3}, Lcom/centauri/api/UnityPayHelper$10;-><init>()V

    invoke-virtual {p1, p2, p0, p3}, Lcom/centauri/oversea/api/CTIPayAPI;->init(Landroid/app/Activity;Lcom/centauri/oversea/api/request/CTIBaseRequest;Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;)V

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/centauri/api/UnityPayHelper;->LOGTAG:Ljava/lang/String;

    const-string p2, "InitReq error:"

    invoke-static {p2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static _Pay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/centauri/api/UnityPayHelper;->getBaseRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIBaseRequest;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "CentauriPay.CallBackUtils"

    const-string p1, "CentauriPayCallback"

    const-string/jumbo v0, "{\"resultCode\":AP_CTI_RESP_RESULT_PARAM_ERROR,\"resultMsg\":\"not support bizType\"}"

    invoke-static {p0, p1, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "payReq payChannel: "

    invoke-static {p1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iget-object v0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->payChannel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnityPayHelper"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "payReq ProductID: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iget-object v1, v1, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->productid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    iget-object p1, p1, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->payChannel:Ljava/lang/String;

    const-string v0, "os_offical"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    const-string v0, "gwallet"

    iput-object v0, p1, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->payChannel:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object p1

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/centauri/api/UnityPayHelper$14;

    invoke-direct {v1}, Lcom/centauri/api/UnityPayHelper$14;-><init>()V

    invoke-virtual {p1, v0, p0, v1}, Lcom/centauri/oversea/api/CTIPayAPI;->pay(Landroid/app/Activity;Lcom/centauri/oversea/api/request/CTIBaseRequest;Lcom/centauri/oversea/api/ICTICallBack;)V

    return-void
.end method

.method private static _Reprovide(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reprovideReq message req: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UnityPayHelper"

    invoke-static {v0, p0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/api/CTIPayAPI;->singleton()Lcom/centauri/oversea/api/CTIPayAPI;

    move-result-object p0

    new-instance v0, Lcom/centauri/api/UnityPayHelper$11;

    invoke-direct {v0}, Lcom/centauri/api/UnityPayHelper$11;-><init>()V

    invoke-virtual {p0, v0}, Lcom/centauri/oversea/api/CTIPayAPI;->reProvide(Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;)V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/centauri/api/UnityPayHelper;->_Initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/centauri/api/UnityPayHelper;->_GetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/centauri/api/UnityPayHelper;->_Reprovide(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/centauri/api/UnityPayHelper;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/centauri/api/UnityPayHelper;->_Pay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/centauri/api/UnityPayHelper;->errAdapter(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static centauriSdkGetGrnProductInfo(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/centauri/api/UnityPayHelper$15;

    invoke-direct {v1, p0}, Lcom/centauri/api/UnityPayHelper$15;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static errAdapter(I)Ljava/lang/String;
    .locals 2

    const/16 v0, -0x7d1

    const/16 v1, -0xbba

    if-eq p0, v1, :cond_5

    const/16 v1, -0xbb9

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_4

    const/4 v1, -0x4

    if-eq p0, v1, :cond_3

    const/4 v1, -0x2

    if-eq p0, v1, :cond_4

    if-eqz p0, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const-string v1, "-1"

    goto :goto_0

    :cond_0
    const-string v1, "9"

    goto :goto_0

    :cond_1
    const-string v1, "2"

    goto :goto_0

    :cond_2
    const-string v1, "0"

    goto :goto_0

    :cond_3
    const-string v1, "3"

    goto :goto_0

    :cond_4
    const-string v1, "1"

    goto :goto_0

    :cond_5
    const-string v1, "4"

    :goto_0
    if-eq v0, p0, :cond_6

    const/16 v0, -0x7d0

    if-gt p0, v0, :cond_6

    const/16 v0, -0xbb8

    if-le p0, v0, :cond_6

    const-string v1, "100"

    :cond_6
    return-object v1
.end method

.method private static getBaseRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIBaseRequest;
    .locals 3

    sget-object v0, Lcom/centauri/api/UnityPayHelper;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pay message req: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bizType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "CTIBaseRequest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "CTIGameRequest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "CTIGoodsRequest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/centauri/api/UnityPayHelper;->getGoodsReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIGoodsRequest;

    move-result-object p0

    goto :goto_2

    :cond_1
    const-string v2, "CTISubscribeRequest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CTIMonthRequest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "not support bizType"

    invoke-static {v0, p0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/centauri/api/UnityPayHelper;->getSubsReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIMonthRequest;

    move-result-object p0

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/centauri/api/UnityPayHelper;->getGameReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIGameRequest;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/centauri/api/UnityPayHelper;->LOGTAG:Ljava/lang/String;

    const-string v0, "payReq error:"

    invoke-static {v0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getGameReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIGameRequest;
    .locals 4

    new-instance v0, Lcom/centauri/oversea/api/request/CTIGameRequest;

    invoke-direct {v0}, Lcom/centauri/oversea/api/request/CTIGameRequest;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "offerId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->offerId:Ljava/lang/String;

    const-string p0, "openId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openId:Ljava/lang/String;

    const-string p0, "openKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openKey:Ljava/lang/String;

    const-string p0, "sessionId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionId:Ljava/lang/String;

    const-string p0, "sessionType"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionType:Ljava/lang/String;

    const-string/jumbo p0, "zoneId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->zoneId:Ljava/lang/String;

    const-string p0, "goodsZoneId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->goodsZoneId:Ljava/lang/String;

    const-string p0, "pf"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pf:Ljava/lang/String;

    const-string p0, "pfKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pfKey:Ljava/lang/String;

    const-string p0, "appExtends"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->reserv:Ljava/lang/String;

    :cond_0
    const-string p0, "channelExtras"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->extras:Ljava/lang/String;

    :cond_1
    const-string p0, "country"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->country:Ljava/lang/String;

    :cond_2
    const-string p0, "currencyType"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->currency_type:Ljava/lang/String;

    :cond_3
    const-string p0, "productId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->productid:Ljava/lang/String;

    :cond_4
    const-string p0, "payChannel"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->payChannel:Ljava/lang/String;

    :cond_5
    const-string p0, "resId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :try_start_0
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->resId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v2, Lcom/centauri/api/UnityPayHelper;->LOGTAG:Ljava/lang/String;

    const-string v3, "resid error:"

    invoke-static {v3}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    const-string p0, "drmInfo"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->drmInfo:Ljava/lang/String;

    :cond_7
    return-object v0
.end method

.method private static getGoodsReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIGoodsRequest;
    .locals 4

    new-instance v0, Lcom/centauri/oversea/api/request/CTIGoodsRequest;

    invoke-direct {v0}, Lcom/centauri/oversea/api/request/CTIGoodsRequest;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "offerId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->offerId:Ljava/lang/String;

    const-string p0, "openId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openId:Ljava/lang/String;

    const-string p0, "openKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openKey:Ljava/lang/String;

    const-string p0, "sessionId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionId:Ljava/lang/String;

    const-string p0, "sessionType"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionType:Ljava/lang/String;

    const-string/jumbo p0, "zoneId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->zoneId:Ljava/lang/String;

    const-string p0, "goodsZoneId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->goodsZoneId:Ljava/lang/String;

    const-string p0, "pf"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pf:Ljava/lang/String;

    const-string p0, "pfKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pfKey:Ljava/lang/String;

    const-string p0, "appExtends"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->reserv:Ljava/lang/String;

    :cond_0
    const-string p0, "channelExtras"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->extras:Ljava/lang/String;

    :cond_1
    const-string p0, "country"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->country:Ljava/lang/String;

    :cond_2
    const-string p0, "currencyType"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->currency_type:Ljava/lang/String;

    :cond_3
    const-string p0, "productId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->productid:Ljava/lang/String;

    :cond_4
    const-string p0, "payChannel"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->payChannel:Ljava/lang/String;

    :cond_5
    const-string p0, "resId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :try_start_0
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->resId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v2, Lcom/centauri/api/UnityPayHelper;->LOGTAG:Ljava/lang/String;

    const-string v3, "resid error:"

    invoke-static {v3}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    const-string p0, "drmInfo"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->drmInfo:Ljava/lang/String;

    :cond_7
    return-object v0
.end method

.method private static getInitReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIGameRequest;
    .locals 3

    new-instance v0, Lcom/centauri/oversea/api/request/CTIGameRequest;

    invoke-direct {v0}, Lcom/centauri/oversea/api/request/CTIGameRequest;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "offerId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->offerId:Ljava/lang/String;

    const-string p0, "openId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openId:Ljava/lang/String;

    const-string p0, "openKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openKey:Ljava/lang/String;

    const-string p0, "sessionId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionId:Ljava/lang/String;

    const-string p0, "sessionType"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionType:Ljava/lang/String;

    const-string/jumbo p0, "zoneId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->zoneId:Ljava/lang/String;

    const-string p0, "goodsZoneId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->goodsZoneId:Ljava/lang/String;

    const-string p0, "pf"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pf:Ljava/lang/String;

    const-string p0, "pfKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pfKey:Ljava/lang/String;

    const-string p0, "appExtends"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->reserv:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    sput-object p0, Lcom/centauri/api/UnityPayHelper;->mAppExtends:Ljava/lang/String;

    const-string p0, "channelExtras"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->extras:Ljava/lang/String;

    :cond_1
    const-string p0, "drmInfo"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->drmInfo:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method private static getMpRequest(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIBaseRequest;
    .locals 3

    new-instance v0, Lcom/centauri/oversea/api/request/CTIGameRequest;

    invoke-direct {v0}, Lcom/centauri/oversea/api/request/CTIGameRequest;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "drmInfo"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->drmInfo:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/centauri/api/UnityPayHelper;->LOGTAG:Ljava/lang/String;

    const-string v2, "mpReq error:"

    invoke-static {v2}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private static getSubsReq(Ljava/lang/String;)Lcom/centauri/oversea/api/request/CTIMonthRequest;
    .locals 4

    new-instance v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;

    invoke-direct {v0}, Lcom/centauri/oversea/api/request/CTIMonthRequest;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "offerId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->offerId:Ljava/lang/String;

    const-string p0, "openId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openId:Ljava/lang/String;

    const-string p0, "openKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->openKey:Ljava/lang/String;

    const-string p0, "sessionId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionId:Ljava/lang/String;

    const-string p0, "sessionType"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->sessionType:Ljava/lang/String;

    const-string/jumbo p0, "zoneId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->zoneId:Ljava/lang/String;

    const-string p0, "goodsZoneId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->goodsZoneId:Ljava/lang/String;

    const-string p0, "pf"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pf:Ljava/lang/String;

    const-string p0, "pfKey"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->pfKey:Ljava/lang/String;

    const-string p0, "appExtends"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->reserv:Ljava/lang/String;

    :cond_0
    const-string p0, "channelExtras"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->extras:Ljava/lang/String;

    :cond_1
    const-string p0, "country"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->country:Ljava/lang/String;

    :cond_2
    const-string v2, "currencyType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->currency_type:Ljava/lang/String;

    :cond_3
    const-string v2, "productId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->productid:Ljava/lang/String;

    :cond_4
    const-string v2, "payChannel"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->payChannel:Ljava/lang/String;

    :cond_5
    const-string v2, "basePlanId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->basePlanId:Ljava/lang/String;

    :cond_6
    const-string v2, "gw_offerId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->gw_offerId:Ljava/lang/String;

    :cond_7
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->country:Ljava/lang/String;

    :cond_8
    const-string p0, "resId"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :try_start_0
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->resId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v2, Lcom/centauri/api/UnityPayHelper;->LOGTAG:Ljava/lang/String;

    const-string v3, "resid error:"

    invoke-static {v3}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_0
    const-string p0, "drmInfo"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/centauri/oversea/api/request/CTIBaseRequest;->mpInfo:Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/centauri/oversea/api/request/CTIBaseRequest$CTIMPInfo;->drmInfo:Ljava/lang/String;

    :cond_a
    const-string p0, "serviceCode"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceCode:Ljava/lang/String;

    const-string p0, "serviceName"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceName:Ljava/lang/String;

    const-string p0, "autoPay"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->autoPay:Z

    const-string p0, "AutoPay: "

    invoke-static {p0}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-boolean v1, v0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->autoPay:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UnityPayHelper"

    invoke-static {v1, p0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
