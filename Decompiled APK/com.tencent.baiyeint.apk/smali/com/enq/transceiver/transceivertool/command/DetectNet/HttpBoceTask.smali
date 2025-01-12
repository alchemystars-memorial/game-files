.class public Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;
.super Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;
.source "HttpBoceTask.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;-><init>()V

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->name:Ljava/lang/String;

    iput-object p6, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskScene:Ljava/lang/String;

    iput-wide p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskID:J

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->type:Ljava/lang/String;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskScene"

    invoke-virtual {p4, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "taskid"

    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object p3

    const-string p4, "event_id"

    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p3, "event_type"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "client_addr"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "network_type"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "server_addr"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "local_dns"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "domain_url"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "file_range"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "method"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "src_md5"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "src_filesize"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "src_filetotal"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "src_nwsinfo"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "dst_md5"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "dst_filesize"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "dst_location"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "dst_filetotal"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "dst_nwsinfo"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "dns_resolve_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "connect_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "download_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "dst_httpcode"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "event_code"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p2, "event_total_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private generateHeaderMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private getPartRange(Ljava/lang/String;IILjava/util/HashMap;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const-string/jumbo v0, "x-nws-log-uuid"

    const-string v1, "content-range"

    sget v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_RANGE_SIZE:I

    sub-int v3, p3, p2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-le v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    new-array v2, v2, [B

    const/4 v3, 0x0

    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v8, "dns_resolve_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    sget v5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_HTTPTIME:I

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_HTTPSTIME:I

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p4, "Range"

    const-string v5, "bytes=%d-%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    iget-object p3, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p4, "server_addr"

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, p4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string p3, "client_addr"

    if-eqz p2, :cond_2

    :try_start_1
    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object p4

    iget-object p4, p4, Lcom/enq/transceiver/TransceiverManager;->localIp6:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object p4

    iget-object p4, p4, Lcom/enq/transceiver/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v4, "connect_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, p2

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p4

    iget-object v4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v5, "dst_filesize"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, v5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v4, "dst_location"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v4, "dst_httpcode"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v4, "dst_filetotal"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v1, "dst_nwsinfo"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance p4, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p4, v2}, Ljava/io/InputStream;->read([B)I

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v0, "download_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v3, p4

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v3, p4

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_3
    :try_start_4
    sget-object p2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    iput p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->errorCode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_4
    return-object v2

    :goto_5
    if-eqz v3, :cond_6

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_6
    throw p1
.end method

.method private postPartRange(Ljava/lang/String;IILjava/util/HashMap;Ljava/lang/String;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    sget v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_RANGE_SIZE:I

    sub-int v1, p3, p2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v6, "dns_resolve_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    sget v3, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_HTTPTIME:I

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v3, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_HTTPTIME:I

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p4, "Range"

    const-string v3, "bytes=%d-%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "POST"

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v2, "connect_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    new-instance p4, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p4

    iget-object p5, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v2, "dst_filesize"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p5, "dst_location"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, p5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p5, "dst_httpcode"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, p5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p5

    invoke-direct {p4, p5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p4, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p4}, Ljava/io/InputStream;->close()V

    iget-object p5, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v1, "download_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string p3, "server_addr"

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, p4

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v1, p4

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_2
    :try_start_3
    sget-object p2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    return-object v0

    :goto_4
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_5
    throw p1
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 5

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v2, "method"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v2, "md5"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_f

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "http://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_2

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v2, "rangeStart"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_RANGE_SIZE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-gt v0, v2, :cond_e

    if-gez v0, :cond_5

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v2, "rangeEnd"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_RANGE_SIZE:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-gt v0, v2, :cond_d

    if-gez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v2, "headInfo"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v1, "extraInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ""

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string/jumbo v1, "srcFileTotal"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string/jumbo v1, "srcNwsInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v1, "sensitiveInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return v3

    :cond_d
    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_1
    return v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_2
    return v1
.end method

.method public executeTask()V
    .locals 20

    move-object/from16 v7, p0

    const-string v0, "dst_md5"

    const-string v8, "network_type"

    const-string v1, "method"

    const-string v9, "event_total_time"

    const-string v10, "event_code"

    const-string v11, "Taskid=%d End! "

    const-string v2, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    sget-object v4, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v4}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v4

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v3

    iput v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    goto :goto_0

    :cond_0
    iget v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    sget-object v4, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v4}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v4

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v3

    iput v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    goto :goto_0

    :cond_1
    iget v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    sget-object v4, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v4}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v4

    if-ne v3, v4, :cond_a

    :goto_0
    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->TAG:Ljava/lang/String;

    new-array v4, v14, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object v5, v1

    iget-wide v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskID:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v15

    iget v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    const-string v0, "Taskid=%d Begin,Current status is %d "

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->TAG:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v15

    iget-wide v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v6

    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->name:Ljava/lang/String;

    aput-object v3, v1, v14

    const/4 v3, 0x3

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->type:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x4

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "Taskid=%d Detail: taskid=%d\n name=%s\n type=%s\n msg=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->executeCount:I

    add-int/2addr v0, v6

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->executeCount:I

    iget v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->executeCount:I

    sget v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_EXECUTE_COUNT:I

    if-le v0, v1, :cond_2

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->TAG:Ljava/lang/String;

    const-string v1, "Taskid=%d Discard: it has run %d times"

    new-array v2, v14, [Ljava/lang/Object;

    iget-wide v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v15

    iget v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->executeCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DISCARD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_OVER_MAXIMUM:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->TAG:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    iget-wide v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v15

    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    iget v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->errorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    sub-long/2addr v0, v12

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->checkParamValid()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->TAG:Ljava/lang/String;

    const-string v1, "Taskid=%d Failed: checkParamValid false"

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v15

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->errorCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->TAG:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    iget-wide v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v15

    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    iget v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->errorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    sub-long/2addr v0, v12

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    :try_start_2
    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/enq/transceiver/TransceiverManager;->refreshNetworkInfo()V

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v1, "rangeStart"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v1, "rangeEnd"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    iget-object v6, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v15

    iget-object v15, v15, Lcom/enq/transceiver/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v6, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v15, "server_addr"

    invoke-virtual {v6, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v15, "local_dns"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v14

    iget-object v14, v14, Lcom/enq/transceiver/TransceiverManager;->localDns4:Ljava/lang/String;

    invoke-virtual {v6, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v14, "domain_url"

    invoke-virtual {v6, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v14, "file_range"

    const-string v15, "%d-%d"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v17, v9

    move-wide/from16 v18, v12

    const/4 v9, 0x2

    :try_start_4
    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v13, 0x0

    aput-object v9, v12, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v13, 0x1

    :try_start_5
    aput-object v9, v12, v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v15, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string/jumbo v6, "src_md5"

    iget-object v9, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v12, "md5"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string/jumbo v6, "src_filesize"

    sub-int v9, v4, v3

    add-int/lit8 v12, v9, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string/jumbo v6, "src_filetotal"

    iget-object v12, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string/jumbo v13, "srcFileTotal"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string/jumbo v6, "src_nwsinfo"

    iget-object v12, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string/jumbo v13, "srcNwsInfo"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    move-object/from16 v12, v16

    invoke-virtual {v5, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v6, "dst_filesize"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v6, "dst_location"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v6, "dst_filetotal"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v6, "dst_nwsinfo"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v6, "dns_resolve_time"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v6, "connect_time"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v6, "download_time"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    const-string v5, "client_addr"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v6

    iget-object v6, v6, Lcom/enq/transceiver/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v9, :cond_9

    sget v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_RANGE_SIZE:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    if-le v9, v2, :cond_4

    move v9, v6

    move-object/from16 v1, v17

    goto/16 :goto_2

    :cond_4
    :try_start_7
    iget-object v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v5, "headInfo"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v7, v2}, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->generateHeaderMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const-string v9, "-1"

    const-string v13, "206"

    const-string v14, "dst_httpcode"

    if-nez v2, :cond_6

    :try_start_8
    invoke-direct {v7, v0, v3, v4, v5}, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->getPartRange(Ljava/lang/String;IILjava/util/HashMap;)[B

    move-result-object v0

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/util/CosSigUtil;->md5([B)Ljava/lang/String;

    move-result-object v9

    :cond_5
    move-object v0, v9

    move v9, v6

    goto :goto_1

    :cond_6
    const-string v2, "post"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->data:Ljava/util/HashMap;

    const-string v2, "extraInfo"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v0, v9

    move v9, v6

    move-object v6, v15

    :try_start_9
    invoke-direct/range {v1 .. v6}, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->postPartRange(Ljava/lang/String;IILjava/util/HashMap;Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Lcom/enq/transceiver/transceivertool/util/CosSigUtil;->md5([B)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_1
    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/enq/transceiver/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DONE:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->errorCode:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->TAG:Ljava/lang/String;

    new-array v1, v9, [Ljava/lang/Object;

    iget-wide v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    iget v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->errorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    sub-long v0, v0, v18

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_8
    move v9, v6

    move-object/from16 v1, v17

    :try_start_a
    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->TAG:Ljava/lang/String;

    const-string v2, "Taskid=%d Failed: unsupport method"

    new-array v3, v9, [Ljava/lang/Object;

    iget-wide v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->errorCode:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->TAG:Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/Object;

    iget-wide v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v11, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    iget v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception v0

    move v9, v6

    goto :goto_3

    :catch_1
    move-exception v0

    move v9, v6

    goto :goto_4

    :cond_9
    move-object/from16 v1, v17

    const/4 v9, 0x1

    :goto_2
    :try_start_b
    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->TAG:Ljava/lang/String;

    const-string v2, "Taskid=%d Failed: response range error"

    new-array v3, v9, [Ljava/lang/Object;

    iget-wide v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->errorCode:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->TAG:Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/Object;

    iget-wide v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v11, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    iget v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_2
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move v9, v13

    :goto_3
    move-object/from16 v1, v17

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move v9, v13

    :goto_4
    move-object/from16 v1, v17

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v1, v17

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v1, v17

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v1, v9

    move-wide/from16 v18, v12

    :goto_5
    const/4 v9, 0x1

    goto/16 :goto_9

    :catch_5
    move-exception v0

    move-object v1, v9

    move-wide/from16 v18, v12

    :goto_6
    const/4 v9, 0x1

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v1, v9

    move-wide/from16 v18, v12

    move v9, v6

    goto :goto_9

    :catch_6
    move-exception v0

    move-object v1, v9

    move-wide/from16 v18, v12

    move v9, v6

    :goto_7
    :try_start_c
    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->errorCode:I

    iget-object v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->TAG:Ljava/lang/String;

    const-string v3, "Taskid=%d Fail:\n%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->TAG:Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/Object;

    iget-wide v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v11, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    iget v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    return-void

    :catchall_6
    move-exception v0

    :goto_9
    iget-object v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->TAG:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Object;

    iget-wide v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    iget v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :cond_a
    move v9, v6

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "Taskid=%d current status %d can not execute here,so this task is discarded!"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_STATUS_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->errorCode:I

    return-void
.end method

.method public reportResult()V
    .locals 3

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v0

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;->status:I

    :cond_1
    :goto_0
    return-void
.end method
