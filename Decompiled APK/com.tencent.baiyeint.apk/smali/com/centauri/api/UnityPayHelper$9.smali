.class Lcom/centauri/api/UnityPayHelper$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/newapi/response/InfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/api/UnityPayHelper;->_GetIntroPriceInfo(Ljava/lang/String;Ljava/util/HashMap;)V
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
.method public callback(Ljava/lang/String;)V
    .locals 2

    const-string v0, "_GetIntroPriceInfo CallBack"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CentauriPay.CallBackUtils"

    const-string v1, "CentauriGetIntroPriceCallback"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
