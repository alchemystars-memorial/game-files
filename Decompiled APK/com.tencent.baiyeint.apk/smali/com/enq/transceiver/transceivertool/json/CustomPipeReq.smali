.class public Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;
.super Ljava/lang/Object;
.source "CustomPipeReq.java"


# instance fields
.field private appid:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private customData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRoot:Ljava/lang/String;

.field private mobile_type:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private openid:Ljava/lang/String;

.field private osType:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private xid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->brand:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->model:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->osVersion:Ljava/lang/String;

    const-string v0, "android"

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->osType:Ljava/lang/String;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/util/DeviceInfoUtil;->isRunningOnEmulator()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->mobile_type:Ljava/lang/String;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/util/DeviceInfoUtil;->isRooted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->isRoot:Ljava/lang/String;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/enq/transceiver/TransceiverManager;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->appid:Ljava/lang/String;

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->customData:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object p1

    iget-object p1, p1, Lcom/enq/transceiver/TransceiverManager;->openid:Ljava/lang/String;

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->openid:Ljava/lang/String;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object p1

    iget-object p1, p1, Lcom/enq/transceiver/TransceiverManager;->xid:Ljava/lang/String;

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->xid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generatePostParam()Ljava/lang/String;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ostype"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->osType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->customData:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->customData:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->customData:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const-string v1, "osversion"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "brand"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "model"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mobiletype"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->mobile_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isroot"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->isRoot:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "openid"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->openid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "xid"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->xid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appid"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/CustomPipeReq;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "netprottype"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/enq/transceiver/TransceiverManager;->netprottype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "netaccesstype"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/enq/transceiver/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
