.class Lcom/centauri/api/UnityPayHelper$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/api/ICTICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/api/UnityPayHelper;->_Pay(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CentauriPayCallBack(Lcom/centauri/oversea/business/pay/CTIResponse;)V
    .locals 6

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getResultCode()I

    move-result v0

    invoke-static {v0}, Lcom/centauri/api/UnityPayHelper;->access$500(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getResultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getInnerCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "100"

    if-nez v3, :cond_0

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-object v0, v4

    move-object v2, v0

    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "innerCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " resultMsg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UnityPayHelper"

    invoke-static {v4, v3}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/centauri/api/UnityResponse;

    invoke-direct {v3}, Lcom/centauri/api/UnityResponse;-><init>()V

    iput-object v0, v3, Lcom/centauri/api/UnityResponse;->resultCode:Ljava/lang/String;

    iput-object v2, v3, Lcom/centauri/api/UnityResponse;->resultInerCode:Ljava/lang/String;

    iput-object v1, v3, Lcom/centauri/api/UnityResponse;->resultMsg:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/centauri/api/UnityResponse;->extra:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getAPPExtends()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/centauri/api/UnityResponse;->appExtends:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/centauri/oversea/business/pay/CTIResponse;->getExtendJson()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/centauri/api/UnityResponse;->extendJson:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/centauri/api/UnityResponse;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CentauriPay.CallBackUtils"

    const-string v1, "CentauriPayCallback"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public CentauriPayNeedLogin()V
    .locals 3

    const-string v0, "UnityPayHelper"

    const-string v1, "CTIPayNeedLogin callback"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CentauriPay.CallBackUtils"

    const-string v1, "CentauriLoginExpiredCallback"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
