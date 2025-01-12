.class Lcom/centauri/api/UnityPayHelper$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/centauri/oversea/api/ICTIPayUpdateCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/api/UnityPayHelper;->_Reprovide(Ljava/lang/String;)V
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
.method public onUpdate(ILjava/lang/String;)V
    .locals 4

    const-string v0, "CentauriReProvidetCallback"

    const-string v1, "CentauriPay.CallBackUtils"

    if-nez p1, :cond_2

    :try_start_0
    new-instance p1, Lorg/json/JSONTokener;

    invoke-direct {p1, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    instance-of v2, p1, Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "paychannelid"

    if-eqz v2, :cond_0

    :try_start_1
    check-cast p1, Lorg/json/JSONArray;

    const-string v2, "ret"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "msg"

    goto :goto_0

    :cond_0
    :try_start_2
    move-object p2, p1

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "gwallet"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p1, :cond_1

    const-string p1, "os_offical"

    :goto_0
    :try_start_3
    invoke-virtual {p2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {}, Lcom/centauri/api/UnityPayHelper;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reprovide result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_2
    const/4 p2, 0x6

    if-ne p1, p2, :cond_3

    const-string/jumbo p1, "{\"ret\":6,\"msg\":\"No items to be reprovided\"}"

    goto :goto_1

    :cond_3
    const-string/jumbo p1, "{\"ret\":-1,\"msg\":\"provide error\"}"

    :goto_1
    invoke-static {v1, v0, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
