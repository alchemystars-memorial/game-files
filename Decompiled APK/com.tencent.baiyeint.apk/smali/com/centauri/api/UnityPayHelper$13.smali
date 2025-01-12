.class Lcom/centauri/api/UnityPayHelper$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/api/ICTINetCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/api/UnityPayHelper;->_GetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.method public CentauriNetError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    const-string p1, "CentauriPay.CallBackUtils"

    const-string p2, "CentauriGetInfoCallback"

    const-string/jumbo p3, "{\"ret\":-1,\"err_code\":\"\",\"msg\":\"get info failed\"}"

    invoke-static {p1, p2, p3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public CentauriNetFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "CentauriPay.CallBackUtils"

    const-string v0, "CentauriGetInfoCallback"

    invoke-static {p1, v0, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public CentauriNetStop(Ljava/lang/String;)V
    .locals 2

    const-string p1, "CentauriPay.CallBackUtils"

    const-string v0, "CentauriGetInfoCallback"

    const-string/jumbo v1, "{\"ret\":-1,\"err_code\":\"\",\"msg\":\"get info failed\"}"

    invoke-static {p1, v0, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
