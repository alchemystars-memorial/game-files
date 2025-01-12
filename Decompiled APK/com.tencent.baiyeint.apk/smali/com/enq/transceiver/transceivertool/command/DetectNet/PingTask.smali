.class public Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;
.super Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;
.source "PingTask.java"


# instance fields
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

    iput-boolean v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->hasDevided:Z

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->name:Ljava/lang/String;

    iput-object p6, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskScene:Ljava/lang/String;

    iput-wide p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskID:J

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->type:Ljava/lang/String;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskScene"

    invoke-virtual {p4, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "taskid"

    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object p3

    const-string p4, "event_id"

    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p3, "event_type"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "client_type"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "client_iptype"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "client_addr"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "server_addr"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "local_dns"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "domain"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "network_type"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "ttl"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "send_pkg"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "rece_pkg"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "min_rtt"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "max_rtt"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "avg_rtt"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "pkg_loss_rate"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "dns_resolve_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "event_code"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p2, "event_total_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private doPingCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    sget-object p5, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p5}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ping6"

    goto :goto_0

    :cond_0
    const-string v0, "ping"

    :goto_0
    invoke-virtual {p6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "-c"

    invoke-virtual {p6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p3, "-s"

    invoke-virtual {p6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p3, "-i"

    invoke-virtual {p6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p3, "0.2"

    invoke-virtual {p6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p3, "-w"

    invoke-virtual {p6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    const/4 p2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p3

    new-array p4, p1, [Ljava/lang/String;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance p4, Ljava/io/InputStreamReader;

    invoke-virtual {p3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p6

    invoke-direct {p4, p6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p6, Ljava/io/LineNumberReader;

    invoke-direct {p6, p4}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_1
    :try_start_2
    invoke-virtual {p6}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const-string v0, "\n"

    if-eqz p4, :cond_1

    :try_start_3
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance p4, Ljava/io/InputStreamReader;

    invoke-virtual {p3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    new-instance p2, Ljava/io/LineNumberReader;

    invoke-direct {p2, p4}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    invoke-virtual {p2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_2

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    sget-object p6, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p6}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p4}, Ljava/io/InputStreamReader;->close()V

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Process;->destroy()V

    :cond_3
    invoke-virtual {p2}, Ljava/io/LineNumberReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :catchall_0
    move-exception p1

    move-object p6, p2

    goto :goto_3

    :catch_1
    move-exception p6

    move-object v2, p6

    move-object p6, p2

    move-object p2, p4

    move-object p4, v2

    goto :goto_4

    :catchall_1
    move-exception p1

    :goto_3
    move-object p2, p4

    goto/16 :goto_9

    :catch_2
    move-exception p2

    move-object v2, p4

    move-object p4, p2

    move-object p2, v2

    goto :goto_4

    :catch_3
    move-exception p4

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object p6, p2

    goto/16 :goto_9

    :catch_4
    move-exception p4

    move-object p6, p2

    goto :goto_4

    :catchall_3
    move-exception p1

    move-object p3, p2

    move-object p6, p3

    goto/16 :goto_9

    :catch_5
    move-exception p4

    move-object p3, p2

    move-object p6, p3

    :goto_4
    :try_start_7
    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_READ:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz p2, :cond_4

    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V

    goto :goto_5

    :catch_6
    move-exception p2

    goto :goto_6

    :cond_4
    :goto_5
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Process;->destroy()V

    :cond_5
    if-eqz p6, :cond_6

    invoke-virtual {p6}, Ljava/io/LineNumberReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :goto_6
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_7
    move p6, v0

    :goto_8
    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->TAG:Ljava/lang/String;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, p1

    const-string p1, "ping result:%s "

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->parseDetailFromPing(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->parseStepInfoFromPing(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p3, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "raw_info"

    invoke-virtual {p3, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string/jumbo p3, "ttl"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p3, "send_pkg"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p3, "rece_pkg"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p3, "min_rtt"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p3, "max_rtt"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p3, "avg_rtt"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string p3, "pkg_loss_rate"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p6

    :catchall_4
    move-exception p1

    :goto_9
    if-eqz p2, :cond_7

    :try_start_9
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V

    goto :goto_a

    :catch_7
    move-exception p2

    goto :goto_b

    :cond_7
    :goto_a
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/Process;->destroy()V

    :cond_8
    if-eqz p6, :cond_9

    invoke-virtual {p6}, Ljava/io/LineNumberReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_c

    :goto_b
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_c
    throw p1
.end method

.method private parseDetailFromPing(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 20
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

    const-string v0, "errors"

    const-string v1, "received"

    const-string v2, "packets transmitted"

    const-string v3, "\n"

    const-string/jumbo v4, "statistics"

    const-string v5, "rtt"

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "pkg_loss_rate"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "min_rtt"

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "avg_rtt"

    invoke-virtual {v6, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "max_rtt"

    invoke-virtual {v6, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "send_pkg"

    invoke-virtual {v6, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "rece_pkg"

    invoke-virtual {v6, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v14, "ttl"

    invoke-virtual {v6, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    :try_start_0
    invoke-virtual {v8, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v13

    const-string v13, "="

    const/16 v17, 0x1

    move-object/from16 v18, v12

    if-eqz v15, :cond_0

    :try_start_1
    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v12, v19, 0x1

    invoke-virtual {v15, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-string v15, " "

    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    aget-object v12, v12, v15

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v8, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x2

    add-int/2addr v12, v13

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v12, "/"

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    aget-object v14, v5, v12

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v9, v5, v17

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v5, v5, v13

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v9, 0x0

    if-eqz v5, :cond_6

    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v9

    move v10, v5

    move v11, v10

    move v12, v11

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v4, :cond_7

    aget-object v13, v3, v15

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    :cond_2
    :goto_1
    const/4 v14, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    goto :goto_1

    :cond_4
    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    goto :goto_1

    :cond_5
    const-string v14, "packet loss"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v12, "%"

    invoke-virtual {v13, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_6
    move v5, v9

    move v10, v5

    move v11, v10

    move v12, v11

    :cond_7
    const-string v0, "100%"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "exceed"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    :cond_8
    move-object/from16 v2, v16

    move-object/from16 v1, v18

    cmpl-float v0, v5, v9

    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v0, :cond_9

    mul-float/2addr v3, v10

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    cmpl-float v0, v12, v9

    if-nez v0, :cond_a

    add-float v0, v10, v11

    cmpl-float v4, v0, v9

    if-eqz v4, :cond_a

    mul-float/2addr v10, v3

    div-float/2addr v10, v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-object v6
.end method

.method private parseStepInfoFromPing(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, " "

    const-string/jumbo v1, "time="

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, p1, v5

    const-string/jumbo v7, "ttl"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "icmp_seq"

    if-eqz v7, :cond_0

    :try_start_1
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "exceed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v6, "-1"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "timeout"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "-2"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v2
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 10

    const-string/jumbo v0, "size:16"

    const-string v1, "duration:20"

    const-string v2, "count:3"

    const-string/jumbo v3, "size"

    const-string v4, "duration"

    const-string v5, "count"

    iget-object v6, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return v7

    :cond_0
    iget-object v6, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    const-string/jumbo v8, "type"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    return v7

    :cond_1
    iget-object v6, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    const-string v8, "host"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x1

    if-ge v6, v8, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    iget-object v7, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v9, 0xc8

    if-gt v7, v9, :cond_3

    if-ge v7, v8, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    sget v9, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_PING_COUNT:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v7, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    sget v9, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_PING_COUNT:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v5, 0x28

    if-gt v2, v5, :cond_5

    if-ge v2, v8, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    sget v5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_PING_DURATION:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    sget v5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_PING_DURATION:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x5dc

    if-gt v1, v2, :cond_7

    const/16 v2, 0x10

    if-ge v1, v2, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    sget v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_PING_SIZE:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    sget v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_PING_SIZE:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    const-string/jumbo v1, "v4v6"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    const-string v1, "sensitiveInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    const-string/jumbo v2, "system"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fixedParam"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v8

    :cond_f
    :goto_3
    return v7
.end method

.method public executeTask()V
    .locals 44

    move-object/from16 v8, p0

    const-string/jumbo v9, "size"

    const-string v10, "event_total_time"

    const-string v11, "event_code"

    const-string v12, "Taskid=%d End! "

    const-string/jumbo v13, "v4v6"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    const/4 v7, 0x2

    const/16 v16, 0x0

    const/4 v6, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    iput v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I

    goto :goto_0

    :cond_0
    iget v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    iput v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I

    goto :goto_0

    :cond_1
    iget v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    if-ne v1, v2, :cond_e

    :goto_0
    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->TAG:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v16

    iget v3, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "Taskid=%d Begin,Current status is %d "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->TAG:Ljava/lang/String;

    const/4 v5, 0x5

    new-array v2, v5, [Ljava/lang/Object;

    iget-wide v3, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v16

    iget-wide v3, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->name:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->type:Ljava/lang/String;

    const/16 v17, 0x3

    aput-object v3, v2, v17

    iget-object v3, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-string v3, "Taskid=%d Detail: taskid=%d\n name=%s\n type=%s\n msg=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->executeCount:I

    add-int/2addr v1, v6

    iput v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->executeCount:I

    iget v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->executeCount:I

    sget v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_EXECUTE_COUNT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-le v1, v2, :cond_2

    :try_start_1
    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->TAG:Ljava/lang/String;

    const-string v2, "Taskid=%d Discard: it has run %d times"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v16

    iget v4, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->executeCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DISCARD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    iput v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_OVER_MAXIMUM:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v1

    iput v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->errorCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v16

    invoke-static {v12, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    iget v2, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    sub-long/2addr v1, v14

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    move v2, v6

    move-object v5, v10

    move-object v4, v11

    move-object v3, v12

    move-wide/from16 v23, v14

    goto/16 :goto_f

    :catch_0
    move-exception v0

    move-object v1, v0

    move v2, v6

    move-object v5, v10

    move-object v4, v11

    move-object v3, v12

    move-wide/from16 v23, v14

    goto/16 :goto_d

    :cond_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->checkParamValid()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-nez v1, :cond_3

    :try_start_3
    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->TAG:Ljava/lang/String;

    const-string v2, "Taskid=%d Fail: checkParamValid false"

    new-array v3, v6, [Ljava/lang/Object;

    iget-wide v4, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v16

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    iput v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v1

    iput v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->errorCode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v16

    invoke-static {v12, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    iget v2, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    sub-long/2addr v1, v14

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    :try_start_4
    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/enq/transceiver/TransceiverManager;->refreshNetworkInfo()V

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    const-string v2, "host"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string v2, "domain"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string v2, "send_size"

    iget-object v5, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string v2, "network_type"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v5

    iget-object v5, v5, Lcom/enq/transceiver/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    const-string v2, "client_type"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v5

    iget-object v5, v5, Lcom/enq/transceiver/TransceiverManager;->netprottype:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v3}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->getIPByLocalDns(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v7, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :try_start_5
    const-string v6, "dns_resolve_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v1

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    move-object v6, v1

    move-object v7, v6

    move/from16 v1, v16

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-ge v1, v2, :cond_6

    :try_start_6
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_4

    if-nez v7, :cond_5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_5

    if-nez v6, :cond_5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v5, v10

    move-object v4, v11

    move-object v3, v12

    move-wide/from16 v23, v14

    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_f

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v5, v10

    move-object v4, v11

    move-object v3, v12

    move-wide/from16 v23, v14

    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_d

    :cond_6
    :try_start_7
    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->TAG:Ljava/lang/String;

    const-string v2, "Taskid=%d Parse host: ipv4=%s,ipv6=%s,v4v6=%s"

    new-array v5, v4, [Ljava/lang/Object;

    move-object/from16 v22, v5

    iget-wide v4, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v22, v16
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    const/16 v20, 0x1

    :try_start_8
    aput-object v6, v22, v20

    const/16 v19, 0x2

    aput-object v7, v22, v19

    iget-object v4, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v22, v17

    move-object/from16 v4, v22

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    const-string v2, "4"

    const-string/jumbo v5, "v6"

    const-string v4, "method"

    move-object/from16 v22, v10

    const-string v10, "count"

    move-wide/from16 v23, v14

    const-string v14, "6"

    const-string v15, "duration"

    move-object/from16 v25, v11

    const-string v11, "client_iptype"

    move-object/from16 v26, v12

    const-string v12, "local_dns"

    move-object/from16 v27, v13

    const-string v13, "server_addr"

    move-object/from16 v28, v14

    const-string v14, "client_addr"

    if-nez v1, :cond_a

    if-eqz v6, :cond_7

    :try_start_9
    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    move-object/from16 v29, v3

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/enq/transceiver/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v1, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/enq/transceiver/TransceiverManager;->localDns4:Ljava/lang/String;

    invoke-virtual {v1, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Ljava/lang/String;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, Ljava/lang/String;

    const-string v32, ""

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v33, v1

    check-cast v33, Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v1, p0

    move-object v2, v6

    move-object/from16 v34, v4

    const/16 v21, 0x4

    move-object/from16 v4, v30

    move-object/from16 v35, v5

    move-object/from16 v5, v31

    move-object/from16 v18, v9

    move-object v9, v6

    move-object/from16 v6, v32

    move-object/from16 v20, v10

    move-object v10, v7

    move-object/from16 v7, v33

    :try_start_a
    invoke-direct/range {v1 .. v7}, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->doPingCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->errorCode:I

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v0

    move/from16 v2, v20

    :goto_5
    move-object/from16 v5, v22

    move-object/from16 v4, v25

    move-object/from16 v3, v26

    goto/16 :goto_f

    :catch_2
    move-exception v0

    move-object v1, v0

    move/from16 v2, v20

    :goto_6
    move-object/from16 v5, v22

    move-object/from16 v4, v25

    move-object/from16 v3, v26

    goto/16 :goto_d

    :cond_7
    move-object/from16 v29, v3

    move-object/from16 v34, v4

    move-object/from16 v35, v5

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    const/16 v21, 0x4

    move-object v9, v6

    move-object v10, v7

    :goto_7
    if-eqz v10, :cond_d

    iget-boolean v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->hasDevided:Z

    if-nez v1, :cond_d

    if-nez v9, :cond_9

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/enq/transceiver/TransceiverManager;->localIp6:Ljava/lang/String;

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/enq/transceiver/TransceiverManager;->localDns6:Ljava/lang/String;

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    move-object/from16 v3, v28

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/enq/transceiver/TransceiverManager;->netprottype:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    move-object/from16 v4, v20

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    move-object/from16 v5, v18

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const-string v6, "6"

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    move-object/from16 v7, v34

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct/range {v1 .. v7}, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->doPingCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->errorCode:I

    goto/16 :goto_8

    :cond_8
    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_NETSTACK_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v1

    iput v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->errorCode:I

    goto/16 :goto_8

    :cond_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    move-object/from16 v6, v27

    move-object/from16 v2, v35

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v2

    const/4 v3, -0x1

    new-instance v4, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;

    iget-object v5, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->name:Ljava/lang/String;

    iget-wide v11, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskID:J

    const-string v40, "ping"

    iget-object v7, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskScene:Ljava/lang/String;

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-wide/from16 v38, v11

    move-object/from16 v41, v1

    move-object/from16 v42, v7

    invoke-direct/range {v36 .. v42}, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/enq/transceiver/TransceiverManager;->addTaskList(ILcom/enq/transceiver/transceivertool/command/TNetCommandTask;)V

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->TAG:Ljava/lang/String;

    const-string v2, "Taskid=%d Host %s has v6 ip,so auto add a new task\nipv4=%s,ipv6=%s,v4v6=%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v16
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    const/4 v4, 0x1

    :try_start_b
    aput-object v29, v3, v4

    const/4 v5, 0x2

    aput-object v9, v3, v5

    aput-object v10, v3, v17

    iget-object v7, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v21

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->hasDevided:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/16 :goto_8

    :catchall_3
    move-exception v0

    move-object v1, v0

    move v2, v4

    goto/16 :goto_5

    :catch_3
    move-exception v0

    move-object v1, v0

    move v2, v4

    goto/16 :goto_6

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v5, v22

    move-object/from16 v4, v25

    move-object/from16 v3, v26

    goto/16 :goto_3

    :catch_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v5, v22

    move-object/from16 v4, v25

    move-object/from16 v3, v26

    goto/16 :goto_4

    :cond_a
    move-object/from16 v17, v2

    move-object v1, v5

    move-object v5, v9

    move-object/from16 v3, v28

    move-object v9, v6

    move-object/from16 v6, v27

    move-object/from16 v43, v7

    move-object v7, v4

    move-object v4, v10

    move-object/from16 v10, v43

    :try_start_c
    iget-object v2, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-nez v1, :cond_c

    if-eqz v10, :cond_d

    :try_start_d
    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/enq/transceiver/TransceiverManager;->localIp6:Ljava/lang/String;

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/enq/transceiver/TransceiverManager;->localDns6:Ljava/lang/String;

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/enq/transceiver/TransceiverManager;->netprottype:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const-string v6, "6"

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct/range {v1 .. v7}, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->doPingCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->errorCode:I

    goto :goto_8

    :cond_b
    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_NETSTACK_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v1

    iput v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->errorCode:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_8

    :cond_c
    :try_start_e
    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "v4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-nez v1, :cond_d

    if-eqz v9, :cond_d

    :try_start_f
    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/enq/transceiver/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v1, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/enq/transceiver/TransceiverManager;->localDns4:Ljava/lang/String;

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    move-object/from16 v2, v17

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->data:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct/range {v1 .. v7}, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->doPingCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->errorCode:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :cond_d
    :goto_8
    :try_start_10
    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DONE:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    iput v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v16

    move-object/from16 v3, v26

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    iget v2, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v25

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    sub-long v1, v1, v23

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v22

    goto/16 :goto_e

    :catchall_5
    move-exception v0

    move-object/from16 v5, v22

    move-object/from16 v4, v25

    move-object/from16 v3, v26

    goto :goto_9

    :catch_5
    move-exception v0

    move-object/from16 v5, v22

    move-object/from16 v4, v25

    move-object/from16 v3, v26

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object v5, v10

    move-object v4, v11

    move-object v3, v12

    move-wide/from16 v23, v14

    move/from16 v2, v20

    goto :goto_b

    :catch_6
    move-exception v0

    move-object v5, v10

    move-object v4, v11

    move-object v3, v12

    move-wide/from16 v23, v14

    move/from16 v2, v20

    goto :goto_c

    :catchall_7
    move-exception v0

    move-object v5, v10

    move-object v4, v11

    move-object v3, v12

    move-wide/from16 v23, v14

    :goto_9
    const/4 v2, 0x1

    goto :goto_b

    :catch_7
    move-exception v0

    move-object v5, v10

    move-object v4, v11

    move-object v3, v12

    move-wide/from16 v23, v14

    :goto_a
    const/4 v2, 0x1

    goto :goto_c

    :catchall_8
    move-exception v0

    move v2, v6

    move-object v5, v10

    move-object v4, v11

    move-object v3, v12

    move-wide/from16 v23, v14

    :goto_b
    move-object v1, v0

    goto :goto_f

    :catch_8
    move-exception v0

    move v2, v6

    move-object v5, v10

    move-object v4, v11

    move-object v3, v12

    move-wide/from16 v23, v14

    :goto_c
    move-object v1, v0

    :goto_d
    :try_start_11
    sget-object v6, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v6}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v6

    iput v6, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I

    sget-object v6, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v6}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v6

    iput v6, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->errorCode:I

    iget-object v6, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->TAG:Ljava/lang/String;

    const-string v7, "Taskid=%d Fail:\n%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v10, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskID:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v16

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v2

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v6, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v16

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    iget v2, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    sub-long v1, v1, v23

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :goto_e
    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_9
    move-exception v0

    goto :goto_b

    :goto_f
    iget-object v6, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v9, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskID:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v16

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    iget v3, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v23

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    :cond_e
    move v2, v6

    move v9, v7

    iget-object v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->TAG:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Object;

    iget-wide v4, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v16

    iget v4, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Taskid=%d current status %d can not execute here,so this task is discarded!"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    iput v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_STATUS_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v1

    iput v1, v8, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->errorCode:I

    return-void
.end method

.method public reportResult()V
    .locals 3

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v0

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;->status:I

    :cond_1
    :goto_0
    return-void
.end method
