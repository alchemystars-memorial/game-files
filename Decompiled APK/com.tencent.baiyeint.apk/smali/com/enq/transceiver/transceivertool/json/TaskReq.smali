.class public Lcom/enq/transceiver/transceivertool/json/TaskReq;
.super Ljava/lang/Object;
.source "TaskReq.java"


# instance fields
.field private accesstoken:Ljava/lang/String;

.field private appid:Ljava/lang/String;

.field private gameid:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private netaccesstype:Ljava/lang/String;

.field private netprottype:Ljava/lang/String;

.field private openid:Ljava/lang/String;

.field private osversion:Ljava/lang/String;

.field private scene:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private xid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/enq/transceiver/TransceiverManager;->openid:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->openid:Ljava/lang/String;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/enq/transceiver/TransceiverManager;->xid:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->xid:Ljava/lang/String;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/enq/transceiver/TransceiverManager;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->version:Ljava/lang/String;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    iget-object v0, v0, Lcom/enq/transceiver/TransceiverManager;->appid:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->appid:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->gameid:Ljava/lang/String;

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->scene:Ljava/lang/String;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object p1

    iget-object p1, p1, Lcom/enq/transceiver/TransceiverManager;->netprottype:Ljava/lang/String;

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->netprottype:Ljava/lang/String;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object p1

    iget-object p1, p1, Lcom/enq/transceiver/TransceiverManager;->netaccesstype:Ljava/lang/String;

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->netaccesstype:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->accesstoken:Ljava/lang/String;

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->manufacturer:Ljava/lang/String;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->model:Ljava/lang/String;

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->osversion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generatePostParam()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "openid"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->openid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "xid"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->xid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appid"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "netprottype"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->netprottype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "netaccesstype"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "accesstoken"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->accesstoken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gameid"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->gameid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "scene"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->scene:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "manufacturer"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "model"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "osversion"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/json/TaskReq;->osversion:Ljava/lang/String;

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
