.class public Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;
.super Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;
.source "BoceTask.java"


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

    iput-boolean v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->hasDevided:Z

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->name:Ljava/lang/String;

    iput-object p6, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->taskScene:Ljava/lang/String;

    iput-wide p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->taskID:J

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->type:Ljava/lang/String;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskScene"

    invoke-virtual {p4, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "taskid"

    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object p3

    const-string p4, "event_id"

    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p3, "event_type"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "client_type"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "client_iptype"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "client_addr"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "server_addr"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "local_dns"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "domain"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "protocol"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "port"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "network_type"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "send_pkg"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "rece_pkg"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "send_pkg_total_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "rece_pkg_total_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "send_pkg_avg_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "rece_pkg_avg_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "dns_resolve_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "connect_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "event_code"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string p2, "event_total_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 6

    const-string v0, "count:3"

    const-string v1, "count"

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    const-string v4, "method"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    const-string v4, "host"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_3

    goto/16 :goto_2

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    const-string v5, "port"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const v5, 0xffff

    if-gt v2, v5, :cond_d

    if-ge v2, v4, :cond_4

    goto/16 :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_1
    iget-object v3, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0x64

    if-gt v3, v5, :cond_5

    if-ge v3, v4, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    sget v5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_PING_COUNT:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    iget-object v3, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    sget v5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEFAULT_PING_COUNT:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x80

    if-gt v0, v3, :cond_7

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    const-string v3, "boce"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content:boce"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    const-string/jumbo v1, "v4v6"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    const-string v3, "all"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    const-string v1, "sensitiveInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fixedParam"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_d
    :goto_1
    return v3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_2
    return v3
.end method

.method public executeTask()V
    .locals 33

    move-object/from16 v1, p0

    const-string v2, "host"

    const-string/jumbo v3, "v4v6"

    const-string v4, "event_total_time"

    const-string v5, "event_code"

    const-string v6, "Taskid=%d End! "

    const-string v7, "method"

    const-string v8, "port"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget v11, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I

    sget-object v12, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v12}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v12

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ne v11, v12, :cond_0

    sget-object v11, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v11}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v11

    iput v11, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I

    goto :goto_0

    :cond_0
    iget v11, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I

    sget-object v12, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v12}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v12

    if-ne v11, v12, :cond_1

    sget-object v11, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v11}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v11

    iput v11, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I

    goto :goto_0

    :cond_1
    iget v11, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I

    sget-object v12, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v12}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v12

    if-ne v11, v12, :cond_18

    :goto_0
    iget-object v11, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->TAG:Ljava/lang/String;

    new-array v12, v13, [Ljava/lang/Object;

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    iget-wide v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->taskID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v12, v14

    iget v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v15

    const-string v7, "Taskid=%d Begin,Current status is %d "

    invoke-static {v7, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->TAG:Ljava/lang/String;

    const/4 v8, 0x5

    new-array v11, v8, [Ljava/lang/Object;

    move-wide/from16 v18, v9

    iget-wide v8, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->taskID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v11, v14

    iget-wide v8, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->taskID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v11, v15

    iget-object v8, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->name:Ljava/lang/String;

    aput-object v8, v11, v13

    iget-object v8, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->type:Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v8, v11, v9

    const/4 v8, 0x4

    iget-object v12, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    const-string v8, "Taskid=%d Detail: taskid=%d\n name=%s\n type=%s\n msg=%s"

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->executeCount:I

    add-int/2addr v7, v15

    iput v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->executeCount:I

    iget v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->executeCount:I

    sget v8, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_EXECUTE_COUNT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-le v7, v8, :cond_2

    :try_start_1
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->TAG:Ljava/lang/String;

    const-string v3, "Taskid=%d Discard: it has run %d times"

    new-array v7, v13, [Ljava/lang/Object;

    iget-wide v8, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->taskID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v14

    iget v8, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->executeCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v15

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DISCARD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_OVER_MAXIMUM:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->errorCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->TAG:Ljava/lang/String;

    new-array v3, v15, [Ljava/lang/Object;

    iget-wide v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->taskID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v14

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v4

    move-object v4, v6

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v3, v4

    move-object v4, v6

    goto/16 :goto_b

    :cond_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->checkParamValid()Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v7, :cond_3

    :try_start_3
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->TAG:Ljava/lang/String;

    const-string v3, "Taskid=%d Failed: checkParamValid false"

    new-array v7, v15, [Ljava/lang/Object;

    iget-wide v8, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->taskID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v14

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->errorCode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->TAG:Ljava/lang/String;

    new-array v3, v15, [Ljava/lang/Object;

    iget-wide v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->taskID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v14

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    :try_start_4
    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/enq/transceiver/TransceiverManager;->refreshNetworkInfo()V

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string v8, "domain"

    iget-object v11, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string v8, "protocol"

    iget-object v11, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    move-object/from16 v12, v16

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    move-object/from16 v11, v17

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string v8, "network_type"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v10

    iget-object v10, v10, Lcom/enq/transceiver/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string v8, "client_type"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v10

    iget-object v10, v10, Lcom/enq/transceiver/TransceiverManager;->netprottype:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->getIPByLocalDns(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string v8, "dns_resolve_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v18

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v9, v14

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ge v9, v13, :cond_6

    :try_start_5
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    instance-of v13, v13, Ljava/net/Inet6Address;

    if-eqz v13, :cond_4

    if-nez v8, :cond_5

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_2

    :cond_4
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    instance-of v13, v13, Ljava/net/Inet4Address;

    if-eqz v13, :cond_5

    if-nez v7, :cond_5

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    :try_start_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v13, "all"

    invoke-virtual {v10, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const-string v13, "TCP"

    const-string v15, "UDP"

    const-string v14, "6"

    move-object/from16 v21, v9

    const-string v9, "client_iptype"

    move-object/from16 v22, v4

    const-string v4, "local_dns"

    move-object/from16 v23, v5

    const-string v5, "server_addr"

    move-object/from16 v24, v6

    const-string v6, "client_addr"

    move-object/from16 v25, v2

    const-string v2, "content"

    move-object/from16 v26, v3

    const-string v3, "count"

    if-nez v10, :cond_d

    if-eqz v7, :cond_8

    :try_start_7
    iget-object v10, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    move-object/from16 v27, v14

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v14

    iget-object v14, v14, Lcom/enq/transceiver/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v10, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v14

    iget-object v14, v14, Lcom/enq/transceiver/TransceiverManager;->localDns4:Ljava/lang/String;

    invoke-virtual {v10, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string v14, "4"

    invoke-virtual {v10, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v14, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v28, v15

    iget-object v15, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v7, v10, v14, v15}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->sendUDPClient(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_3

    :cond_7
    move-object/from16 v28, v15

    iget-object v10, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v14, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v15, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v7, v10, v14, v15}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->sendTCPClient(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    goto/16 :goto_d

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    goto/16 :goto_b

    :cond_8
    move-object/from16 v27, v14

    move-object/from16 v28, v15

    :cond_9
    move-object/from16 v10, v21

    :goto_3
    if-eqz v8, :cond_c

    iget-boolean v14, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->hasDevided:Z

    if-nez v14, :cond_c

    if-nez v7, :cond_b

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v14

    iget-object v14, v14, Lcom/enq/transceiver/TransceiverManager;->localIp6:Ljava/lang/String;

    invoke-virtual {v7, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v6

    iget-object v6, v6, Lcom/enq/transceiver/TransceiverManager;->localDns6:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    move-object/from16 v14, v27

    invoke-virtual {v4, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v4

    iget-object v4, v4, Lcom/enq/transceiver/TransceiverManager;->netprottype:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v15, v28

    invoke-virtual {v4, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v8, v4, v3, v2}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->sendUDPClient(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    goto/16 :goto_4

    :cond_a
    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v8, v4, v3, v2}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->sendTCPClient(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    goto/16 :goto_4

    :cond_b
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string/jumbo v3, "v6"

    move-object/from16 v4, v26

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v3

    const/4 v5, -0x1

    new-instance v6, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;

    iget-object v9, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->name:Ljava/lang/String;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->taskID:J

    const-string v30, "boce"

    iget-object v13, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->taskScene:Ljava/lang/String;

    move-object/from16 v26, v6

    move-object/from16 v27, v9

    move-wide/from16 v28, v11

    move-object/from16 v31, v2

    move-object/from16 v32, v13

    invoke-direct/range {v26 .. v32}, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Lcom/enq/transceiver/TransceiverManager;->addTaskList(ILcom/enq/transceiver/transceivertool/command/TNetCommandTask;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->TAG:Ljava/lang/String;

    const-string v3, "Taskid=%d Host %s has v6 ip,so auto add a new task\nipv4=%s,ipv6=%s,v4v6=%s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v5, v9

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    move-object/from16 v9, v25

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v5, v9

    const/4 v6, 0x2

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v8, v5, v6

    const/4 v6, 0x4

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->hasDevided:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_c
    move-object v9, v10

    goto/16 :goto_4

    :cond_d
    move-object/from16 v16, v7

    move-object/from16 v10, v26

    :try_start_8
    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v26, v10

    const-string/jumbo v10, "v6"

    invoke-virtual {v7, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v7, :cond_f

    if-eqz v8, :cond_11

    :try_start_9
    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v10

    iget-object v10, v10, Lcom/enq/transceiver/TransceiverManager;->localIp6:Ljava/lang/String;

    invoke-virtual {v7, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v6

    iget-object v6, v6, Lcom/enq/transceiver/TransceiverManager;->localDns6:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v4, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v4

    iget-object v4, v4, Lcom/enq/transceiver/TransceiverManager;->netprottype:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v8, v4, v3, v2}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->sendUDPClient(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    goto/16 :goto_4

    :cond_e
    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v8, v4, v3, v2}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->sendTCPClient(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_4

    :cond_f
    :try_start_a
    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    move-object/from16 v8, v26

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v8, "v4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-nez v7, :cond_11

    if-eqz v16, :cond_11

    :try_start_b
    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v8

    iget-object v8, v8, Lcom/enq/transceiver/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    move-object/from16 v7, v16

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v6

    iget-object v6, v6, Lcom/enq/transceiver/TransceiverManager;->localDns4:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string v5, "4"

    invoke-virtual {v4, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v7, v4, v3, v2}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->sendUDPClient(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_4

    :cond_10
    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->data:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v7, v4, v3, v2}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->sendTCPClient(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    :cond_11
    move-object/from16 v9, v21

    :goto_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/4 v5, 0x1

    if-lt v4, v5, :cond_17

    :try_start_d
    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string v5, "connect_time"

    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_16

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const-string v8, "0"

    if-ge v4, v7, :cond_13

    :try_start_e
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v10, ";"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    aget-object v7, v7, v10

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v10, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_12

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v2, v7

    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_13
    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string v7, "send_pkg"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string v7, "rece_pkg"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string v7, "send_pkg_total_time"

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string v7, "rece_pkg_total_time"

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v5, :cond_14

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string v7, "send_pkg_avg_time"

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_14
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string v4, "send_pkg_avg_time"

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    if-lez v6, :cond_15

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string v4, "rece_pkg_avg_time"

    int-to-float v5, v6

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_15
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    const-string v3, "rece_pkg_avg_time"

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    :goto_7
    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->errorCode:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_8

    :cond_17
    :try_start_f
    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_NETSTACK_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->errorCode:I

    :goto_8
    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DONE:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    move-object/from16 v4, v24

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v23

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v22

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move-object/from16 v4, v24

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v3, v4

    move-object v4, v6

    :goto_9
    move-object v2, v0

    goto :goto_d

    :catch_3
    move-exception v0

    move-object v3, v4

    move-object v4, v6

    :goto_a
    move-object v2, v0

    :goto_b
    :try_start_10
    sget-object v6, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v6}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v6

    iput v6, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I

    sget-object v6, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v6}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v6

    iput v6, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->errorCode:I

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->TAG:Ljava/lang/String;

    const-string v7, "Taskid=%d Fail:\n%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-wide v9, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->taskID:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->TAG:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/Object;

    iget-wide v7, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->taskID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    iget v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->errorCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    sub-long v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    return-void

    :catchall_4
    move-exception v0

    goto :goto_9

    :goto_d
    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->taskID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    iget v6, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->errorCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    sub-long v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    :cond_18
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "Taskid=%d current status %d can not execute here,so this task is discarded!"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_STATUS_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->errorCode:I

    return-void
.end method

.method public reportResult()V
    .locals 3

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v0

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;->status:I

    :cond_1
    :goto_0
    return-void
.end method
