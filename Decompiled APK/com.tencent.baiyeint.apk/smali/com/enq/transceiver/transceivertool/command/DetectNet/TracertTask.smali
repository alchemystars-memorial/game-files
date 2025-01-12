.class public Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;
.super Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;
.source "TracertTask.java"


# instance fields
.field final MATCH_TARGET_PKG_LOSS:Ljava/lang/String;

.field final MATCH_TARGET_PKG_RTT:Ljava/lang/String;

.field final MATCH_TARGET_PKG_TRANS:Ljava/lang/String;

.field final MATCH_TTL_EXCEEDED_4:Ljava/lang/String;

.field final MATCH_TTL_EXCEEDED_6:Ljava/lang/String;

.field final MATCH_TTL_IP:Ljava/lang/String;

.field private hasDevided:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
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

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->hasDevided:Z

    const-string/jumbo v0, "time to live exceeded"

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->MATCH_TTL_EXCEEDED_4:Ljava/lang/String;

    const-string/jumbo v0, "time exceeded: hop limit"

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->MATCH_TTL_EXCEEDED_6:Ljava/lang/String;

    const-string v0, "icmp_seq=1 ttl="

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->MATCH_TTL_IP:Ljava/lang/String;

    const-string v0, "packet loss"

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->MATCH_TARGET_PKG_LOSS:Ljava/lang/String;

    const-string v0, "packets transmitted"

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->MATCH_TARGET_PKG_TRANS:Ljava/lang/String;

    const-string v0, "min/avg/max"

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->MATCH_TARGET_PKG_RTT:Ljava/lang/String;

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->name:Ljava/lang/String;

    iput-object p6, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskScene:Ljava/lang/String;

    iput-wide p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskID:J

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->type:Ljava/lang/String;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskScene"

    invoke-virtual {p4, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "taskid"

    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object p3

    const-string p4, "event_id"

    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string p3, "event_type"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "client_type"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "client_iptype"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "client_addr"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "server_addr"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "local_dns"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "domain"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "network_type"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "size"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "count"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "maxHops"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "method"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "trace_info"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "dns_resolve_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "event_code"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string p2, "event_total_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private doTraceCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-ge v2, p5, :cond_6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    const-string v5, "32"

    invoke-direct {p0, v4, v5, v3, p1}, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->pingCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {p0, v3}, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->parseIpFromPing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "30"

    invoke-direct {p0, p2, p3, v5, v3}, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->pingCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->parseDelayFromPing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    :goto_1
    sget v3, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_TRACERT_METHOD:I

    if-ne p4, v3, :cond_3

    goto :goto_4

    :cond_3
    const-string v5, "*"

    const-string v3, "***"

    :goto_2
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v3, v6, v1

    const/4 v4, 0x2

    aput-object v5, v6, v4

    const-string v4, "%d %s %s;"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->TAG:Ljava/lang/String;

    new-array p2, v4, [Ljava/lang/Object;

    const-string/jumbo p3, "\u8c03\u7528\u6267\u884cping\u547d\u4ee4\u5f02\u5e38"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseDelayFromPing(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string/jumbo v0, "time="

    const-string v1, ""

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v2, "\\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    const-string v6, "icmp_seq="

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "ttl="

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "%s %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v3

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aget-object v5, v5, v8

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method private parseIpFromPing(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "icmp_seq=1 ttl="

    const-string/jumbo v1, "time exceeded: hop limit"

    const-string/jumbo v2, "time to live exceeded"

    const-string v3, ""

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ":"

    const-string v6, " "

    const-string v7, "\n"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v8

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_2

    array-length v0, p1

    sub-int/2addr v0, v9

    aget-object p1, p1, v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v8

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v3, p1, v9

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v8

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_2

    array-length v0, p1

    sub-int/2addr v0, v9

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v3, p1, v9

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "time="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v8

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_2

    array-length v0, p1

    sub-int/2addr v0, v9

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    sub-int/2addr v0, v9

    aget-object v3, p1, v0

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v9

    invoke-virtual {v3, v8, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v3
.end method

.method private pingCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ":"

    invoke-virtual {p4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ping6"

    goto :goto_0

    :cond_0
    const-string v2, "ping"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "-c"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "-s"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "-i"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "0.2"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "-w"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "1"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "-t"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance p3, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p4, Ljava/io/LineNumberReader;

    invoke-direct {p4, p3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_1
    :try_start_2
    invoke-virtual {p4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const-string v1, "\n"

    if-eqz p3, :cond_1

    :try_start_3
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    new-instance p1, Ljava/io/LineNumberReader;

    invoke-direct {p1, p3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_2
    :try_start_6
    invoke-virtual {p3}, Ljava/io/InputStreamReader;->close()V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    :cond_3
    invoke-virtual {p1}, Ljava/io/LineNumberReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_6

    :catchall_0
    move-exception p4

    move-object v3, p4

    move-object p4, p1

    move-object p1, p3

    move-object p3, v3

    goto :goto_7

    :catch_0
    move-exception p4

    move-object v3, p4

    move-object p4, p1

    move-object p1, p3

    move-object p3, v3

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v3, p3

    move-object p3, p1

    move-object p1, v3

    goto :goto_7

    :catch_1
    move-exception p1

    move-object v3, p3

    move-object p3, p1

    move-object p1, v3

    goto :goto_3

    :catch_2
    move-exception p3

    goto :goto_3

    :catchall_2
    move-exception p3

    move-object p4, p1

    goto :goto_7

    :catch_3
    move-exception p3

    move-object p4, p1

    goto :goto_3

    :catchall_3
    move-exception p3

    move-object p2, p1

    move-object p4, p2

    goto :goto_7

    :catch_4
    move-exception p3

    move-object p2, p1

    move-object p4, p2

    :goto_3
    :try_start_7
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz p1, :cond_4

    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    goto :goto_4

    :catch_5
    move-exception p1

    goto :goto_5

    :cond_4
    :goto_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/io/LineNumberReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_6

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_4
    move-exception p3

    :goto_7
    if-eqz p1, :cond_7

    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    goto :goto_8

    :catch_6
    move-exception p1

    goto :goto_9

    :cond_7
    :goto_8
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    :cond_8
    if-eqz p4, :cond_9

    invoke-virtual {p4}, Ljava/io/LineNumberReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_a

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_a
    throw p3
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 12

    const-string/jumbo v0, "size:16"

    const-string v1, "count:3"

    const-string v2, "method:1"

    const-string v3, "maxHops:30"

    const-string/jumbo v4, "size"

    const-string v5, "count"

    const-string v6, "method"

    const-string v7, "maxHops"

    iget-object v8, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    const/4 v9, 0x0

    if-nez v8, :cond_0

    return v9

    :cond_0
    iget-object v8, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    const-string/jumbo v10, "type"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    return v9

    :cond_1
    iget-object v8, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    const-string v10, "host"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x1

    if-ge v8, v10, :cond_2

    goto/16 :goto_4

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    iget-object v9, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v11, 0x20

    if-gt v9, v11, :cond_3

    if-ge v9, v10, :cond_4

    :cond_3
    iget-object v9, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    sget v11, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_TRACERT_MAX_HOP:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v9, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    sget v11, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_TRACERT_MAX_HOP:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v7, 0x9

    if-gt v3, v7, :cond_5

    if-ge v3, v10, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    sget v7, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_TRACERT_METHOD:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iget-object v3, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    sget v7, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_TRACERT_METHOD:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-gt v2, v3, :cond_7

    if-ge v2, v10, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    sget v3, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_PING_COUNT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    sget v3, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_PING_COUNT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x5dc

    if-gt v1, v2, :cond_9

    if-ge v1, v10, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    sget v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_PING_SIZE:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    sget v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_PING_SIZE:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    const-string/jumbo v1, "v4v6"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    const-string v1, "sensitiveInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fixedParam"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v10

    :cond_f
    :goto_4
    return v9
.end method

.method public executeTask()V
    .locals 38

    move-object/from16 v7, p0

    const-string v0, "maxHops"

    const-string v1, "method"

    const-string v8, "event_total_time"

    const-string v9, "event_code"

    const-string v10, "Taskid=%d End! "

    const-string/jumbo v11, "v4v6"

    const-string v12, "count"

    const-string/jumbo v13, "size"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I

    sget-object v3, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v3

    const/4 v6, 0x2

    const/16 v16, 0x0

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I

    goto :goto_0

    :cond_0
    iget v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I

    sget-object v3, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v3

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I

    goto :goto_0

    :cond_1
    iget v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I

    sget-object v3, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v3

    if-ne v2, v3, :cond_e

    :goto_0
    iget-object v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    iget-wide v5, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v16

    iget v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "Taskid=%d Begin,Current status is %d "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->TAG:Ljava/lang/String;

    const/4 v6, 0x5

    new-array v3, v6, [Ljava/lang/Object;

    iget-wide v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v16

    iget-wide v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->name:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->type:Ljava/lang/String;

    const/16 v19, 0x3

    aput-object v4, v3, v19

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string v4, "Taskid=%d Detail: taskid=%d\n name=%s\n type=%s\n msg=%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    :try_start_0
    iget v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->executeCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->executeCount:I

    iget v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->executeCount:I

    sget v4, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_EXECUTE_COUNT:I

    if-le v3, v4, :cond_2

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->TAG:Ljava/lang/String;

    const-string v1, "Taskid=%d Discard: it has run %d times"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/4 v2, 0x2

    :try_start_1
    new-array v3, v2, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    iget-wide v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v16

    iget v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->executeCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    const/4 v4, 0x1

    :try_start_3
    aput-object v2, v3, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DISCARD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_OVER_MAXIMUM:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->errorCode:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v16

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    iget v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->errorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    sub-long/2addr v0, v14

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v8

    move-object v3, v9

    move-object v2, v10

    move-wide/from16 v25, v14

    move v8, v4

    goto/16 :goto_11

    :catch_0
    move-exception v0

    move-object v1, v8

    move-object v3, v9

    move-object v2, v10

    move-wide/from16 v25, v14

    const/4 v11, 0x2

    move v8, v4

    goto/16 :goto_f

    :catch_1
    move-exception v0

    move v11, v2

    move-object v1, v8

    move-object v3, v9

    move-object v2, v10

    move-wide/from16 v25, v14

    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_f

    :cond_2
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->checkParamValid()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->TAG:Ljava/lang/String;

    const-string v1, "Taskid=%d Fail: checkParamValid false"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    const/4 v2, 0x1

    :try_start_6
    new-array v3, v2, [Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-wide v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v16

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->errorCode:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v16

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    iget v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->errorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    sub-long/2addr v0, v14

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v8

    move-object v3, v9

    move-wide/from16 v25, v14

    move v8, v2

    move-object v2, v10

    goto/16 :goto_11

    :catch_2
    move-exception v0

    move-object v1, v8

    move-object v3, v9

    move-wide/from16 v25, v14

    const/4 v11, 0x2

    move v8, v2

    move-object v2, v10

    goto/16 :goto_f

    :cond_3
    :try_start_8
    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/enq/transceiver/TransceiverManager;->refreshNetworkInfo()V

    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v21

    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    iget-object v3, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    const-string v1, "host"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string v3, "domain"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string v3, "network_type"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v4

    iget-object v4, v4, Lcom/enq/transceiver/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string v3, "client_type"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v4

    iget-object v4, v4, Lcom/enq/transceiver/TransceiverManager;->netprottype:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->getIPByLocalDns(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v6, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string v5, "dns_resolve_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v23, v23, v3

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v5, v3

    move-object v6, v5

    move/from16 v3, v16

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet6Address;

    if-eqz v4, :cond_4

    if-nez v6, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_5

    if-nez v5, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->TAG:Ljava/lang/String;

    const-string v3, "Taskid=%d Parse host: ipv4=%s,ipv6=%s,v4v6=%s"

    move-object/from16 v22, v2

    const/4 v4, 0x4

    new-array v2, v4, [Ljava/lang/Object;

    move-object/from16 v23, v5

    iget-wide v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v16
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    const/4 v5, 0x1

    :try_start_9
    aput-object v23, v2, v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    const/16 v17, 0x2

    :try_start_a
    aput-object v6, v2, v17

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v19

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    const-string v4, "6"

    const-string v2, "4"

    const-string/jumbo v3, "v6"

    move-object/from16 v18, v8

    const-string v8, "client_iptype"

    move-wide/from16 v25, v14

    const-string v14, "local_dns"

    const-string v15, "server_addr"

    move-object/from16 v27, v9

    const-string v9, "client_addr"

    if-nez v1, :cond_a

    if-eqz v23, :cond_7

    :try_start_b
    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v5

    iget-object v5, v5, Lcom/enq/transceiver/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    move-object/from16 v5, v23

    invoke-virtual {v1, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    move-object/from16 v23, v3

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/enq/transceiver/TransceiverManager;->localDns4:Ljava/lang/String;

    invoke-virtual {v1, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v29, v10

    move-object/from16 v10, v23

    move-object/from16 v23, v0

    move-object v0, v4

    const/16 v24, 0x4

    move-object/from16 v4, v22

    move-object/from16 v30, v10

    move-object v10, v5

    move/from16 v5, v20

    move-object/from16 v28, v11

    move-object v11, v6

    move/from16 v6, v21

    :try_start_d
    invoke-direct/range {v1 .. v6}, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->doTraceCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v10

    move-object/from16 v1, v18

    move-object/from16 v3, v27

    goto/16 :goto_c

    :catch_3
    move-exception v0

    move-object v2, v10

    move/from16 v11, v17

    move-object/from16 v1, v18

    move-object/from16 v3, v27

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    move v8, v5

    move-object v2, v10

    move-object/from16 v1, v18

    move-object/from16 v3, v27

    goto/16 :goto_11

    :catch_4
    move-exception v0

    move v8, v5

    move-object v2, v10

    move/from16 v11, v17

    move-object/from16 v1, v18

    move-object/from16 v3, v27

    goto/16 :goto_f

    :cond_7
    move-object/from16 v30, v3

    move-object/from16 v29, v10

    move-object/from16 v28, v11

    move-object/from16 v10, v23

    const/16 v24, 0x4

    move-object/from16 v23, v0

    move-object v0, v4

    move-object v11, v6

    move-object/from16 v2, v22

    :goto_4
    if-eqz v11, :cond_9

    iget-boolean v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->hasDevided:Z

    if-nez v1, :cond_9

    if-nez v10, :cond_8

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/enq/transceiver/TransceiverManager;->localIp6:Ljava/lang/String;

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/enq/transceiver/TransceiverManager;->localDns6:Ljava/lang/String;

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v11

    move/from16 v5, v20

    move/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->doTraceCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    const/4 v11, 0x2

    goto/16 :goto_7

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    move-object/from16 v1, v28

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v3

    const/4 v4, -0x1

    new-instance v5, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;

    iget-object v6, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->name:Ljava/lang/String;

    iget-wide v8, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskID:J

    const-string/jumbo v35, "tracert"

    iget-object v12, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskScene:Ljava/lang/String;

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-wide/from16 v33, v8

    move-object/from16 v36, v0

    move-object/from16 v37, v12

    invoke-direct/range {v31 .. v37}, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/enq/transceiver/TransceiverManager;->addTaskList(ILcom/enq/transceiver/transceivertool/command/TNetCommandTask;)V

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->TAG:Ljava/lang/String;

    const-string v3, "Taskid=%d Host %s has v6 ip,so auto add a new task\nipv4=%s,ipv6=%s,v4v6=%s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v16
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    const/4 v6, 0x1

    :try_start_e
    aput-object v23, v4, v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    const/4 v5, 0x2

    :try_start_f
    aput-object v10, v4, v5

    aput-object v11, v4, v19

    iget-object v8, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v24

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->hasDevided:Z

    goto :goto_5

    :catch_5
    move-exception v0

    move v8, v6

    move-object/from16 v1, v18

    move-object/from16 v3, v27

    move-object/from16 v2, v29

    goto/16 :goto_e

    :catchall_4
    move-exception v0

    move-object/from16 v1, v18

    move-object/from16 v3, v27

    move-object/from16 v2, v29

    goto/16 :goto_c

    :catch_6
    move-exception v0

    move-object/from16 v1, v18

    move-object/from16 v3, v27

    move-object/from16 v2, v29

    goto/16 :goto_d

    :cond_9
    const/4 v5, 0x2

    const/4 v6, 0x1

    :goto_5
    move v11, v5

    move v8, v6

    goto/16 :goto_7

    :cond_a
    move-object v0, v4

    move-object/from16 v29, v10

    move-object v1, v11

    move-object/from16 v10, v23

    move-object v11, v6

    move v6, v5

    move/from16 v5, v17

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_d

    if-eqz v11, :cond_b

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/enq/transceiver/TransceiverManager;->localIp6:Ljava/lang/String;

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/enq/transceiver/TransceiverManager;->localDns6:Ljava/lang/String;

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move-object/from16 v1, p0

    move-object v2, v11

    move v11, v5

    move/from16 v5, v20

    move v8, v6

    move/from16 v6, v21

    :try_start_10
    invoke-direct/range {v1 .. v6}, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->doTraceCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_7

    :cond_b
    move v11, v5

    :cond_c
    move v8, v6

    goto :goto_6

    :cond_d
    move v11, v5

    :try_start_11
    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "v4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    if-eqz v10, :cond_c

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/enq/transceiver/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/enq/transceiver/TransceiverManager;->localDns4:Ljava/lang/String;

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move-object/from16 v1, p0

    move-object v2, v10

    move/from16 v5, v20

    move v8, v6

    move/from16 v6, v21

    :try_start_12
    invoke-direct/range {v1 .. v6}, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->doTraceCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :goto_6
    move-object/from16 v2, v22

    :goto_7
    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    const-string/jumbo v1, "trace_info"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DONE:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->TAG:Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/Object;

    iget-wide v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v16

    move-object/from16 v2, v29

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    iget v1, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->errorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v27

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    sub-long v0, v0, v25

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    :catchall_5
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    goto :goto_9

    :catchall_6
    move-exception v0

    move v8, v6

    :goto_8
    move-object/from16 v1, v18

    move-object/from16 v3, v27

    move-object/from16 v2, v29

    goto/16 :goto_11

    :catch_9
    move-exception v0

    move v11, v5

    :goto_9
    move v8, v6

    :goto_a
    move-object/from16 v1, v18

    move-object/from16 v3, v27

    move-object/from16 v2, v29

    goto :goto_f

    :catch_a
    move-exception v0

    move-object v1, v8

    move-object v3, v9

    move-object v2, v10

    move-wide/from16 v25, v14

    move/from16 v11, v17

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object v1, v8

    move-object v3, v9

    move-object v2, v10

    move-wide/from16 v25, v14

    move v8, v5

    goto/16 :goto_11

    :catch_b
    move-exception v0

    move-object v1, v8

    move-object v3, v9

    move-object v2, v10

    move-wide/from16 v25, v14

    const/4 v11, 0x2

    :goto_b
    move v8, v5

    goto :goto_f

    :catchall_8
    move-exception v0

    move-object v1, v8

    move-object v3, v9

    move-object v2, v10

    move-wide/from16 v25, v14

    :goto_c
    const/4 v8, 0x1

    goto :goto_11

    :catch_c
    move-exception v0

    move-object v1, v8

    move-object v3, v9

    move-object v2, v10

    move-wide/from16 v25, v14

    :goto_d
    const/4 v8, 0x1

    :goto_e
    const/4 v11, 0x2

    :goto_f
    :try_start_13
    sget-object v4, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v4}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v4

    iput v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I

    sget-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v4

    iput v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->errorCode:I

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->TAG:Ljava/lang/String;

    const-string v5, "Taskid=%d Fail:\n%s"

    new-array v6, v11, [Ljava/lang/Object;

    iget-wide v9, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskID:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v16

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    iget-wide v5, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v16

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    iget v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v25

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    return-void

    :catchall_9
    move-exception v0

    :goto_11
    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->TAG:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/Object;

    iget-wide v8, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v16

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    iget v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->errorCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v25

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :cond_e
    move v11, v6

    const/4 v8, 0x1

    iget-object v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->TAG:Ljava/lang/String;

    new-array v1, v11, [Ljava/lang/Object;

    iget-wide v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->taskID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v16

    iget v2, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "Taskid=%d current status %d can not execute here,so this task is discarded!"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_STATUS_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v7, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->errorCode:I

    return-void
.end method

.method public reportResult()V
    .locals 3

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v0

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;->status:I

    :cond_1
    :goto_0
    return-void
.end method
