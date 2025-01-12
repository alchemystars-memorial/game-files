.class public Lcom/enq/transceiver/transceivertool/json/ControlConfig;
.super Ljava/lang/Object;
.source "ControlConfig.java"


# instance fields
.field private transceiver:Z

.field private transceiverDbm:Z

.field private transceiverLocalMonitor:Z

.field private transceiverLocalTask:Z

.field private transceiverLocation:Z

.field private transceiverNetChange:Z

.field private transceiverSignalpipe:Z

.field private transceiverStation:Z

.field private transceiverTask:Z

.field private transceiverWifi:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiver:Z

    iput-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverTask:Z

    iput-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverSignalpipe:Z

    iput-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverLocalTask:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverLocalMonitor:Z

    iput-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverNetChange:Z

    iput-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverLocation:Z

    iput-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverStation:Z

    iput-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverDbm:Z

    iput-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverWifi:Z

    return-void
.end method


# virtual methods
.method public getDbmAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverDbm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLocalMonitorAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverLocalMonitor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLocalTaskAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverLocalTask:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLocationAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverLocation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNetChangeAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverNetChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSignalpipeAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverSignalpipe:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStationAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverStation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTaskAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverTask:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWifiAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiver:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverWifi:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseJson(Lorg/json/JSONObject;)Z
    .locals 14

    const-string/jumbo v0, "transceiverWifi"

    const-string/jumbo v1, "transceiverDbm"

    const-string/jumbo v2, "transceiverStation"

    const-string/jumbo v3, "transceiverLocation"

    const-string/jumbo v4, "transceiverNetChange"

    const-string/jumbo v5, "transceiverLocalMonitor"

    const-string/jumbo v6, "transceiverLocalTask"

    const-string/jumbo v7, "transceiverSignalpipe"

    const-string/jumbo v8, "transceiverTask"

    const-string/jumbo v9, "transceiver"

    const-string v10, "ret"

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v13, "switch"

    if-eqz v12, :cond_1

    :try_start_1
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    return v11

    :cond_0
    const-string v10, "data"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {p1, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiver:Z

    :cond_2
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverTask:Z

    :cond_3
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverSignalpipe:Z

    :cond_4
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverLocalTask:Z

    :cond_5
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverLocalMonitor:Z

    :cond_6
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverNetChange:Z

    :cond_7
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverLocation:Z

    :cond_8
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverStation:Z

    :cond_9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverDbm:Z

    :cond_a
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->transceiverWifi:Z

    :cond_b
    const/4 p1, 0x1

    return p1

    :cond_c
    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "tgpacloud has no ret or switch,parse error"

    invoke-static {p1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return v11

    :catch_0
    move-exception p1

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v11
.end method
