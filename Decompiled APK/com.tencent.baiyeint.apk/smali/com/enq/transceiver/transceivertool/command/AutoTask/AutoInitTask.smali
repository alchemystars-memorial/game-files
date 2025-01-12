.class public Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;
.super Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;
.source "AutoInitTask.java"


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

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->name:Ljava/lang/String;

    iput-object p6, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->taskScene:Ljava/lang/String;

    iput-wide p2, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->taskID:J

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->type:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->data:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->data:Ljava/util/HashMap;

    invoke-virtual {p1, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->result:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->result:Ljava/util/HashMap;

    const-string p2, "response_code"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "taskScene"

    invoke-virtual {p1, p2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private queryTaskFromCloud(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    new-instance v0, Lcom/enq/transceiver/transceivertool/json/TaskConfig;

    invoke-direct {v0}, Lcom/enq/transceiver/transceivertool/json/TaskConfig;-><init>()V

    new-instance v1, Lcom/enq/transceiver/transceivertool/util/HttpUtil;

    invoke-direct {v1}, Lcom/enq/transceiver/transceivertool/util/HttpUtil;-><init>()V

    sget v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_HTTPSTIME:I

    invoke-virtual {v1, v2}, Lcom/enq/transceiver/transceivertool/util/HttpUtil;->setmConnectTimeout(I)V

    sget v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_HTTPSTIME:I

    invoke-virtual {v1, v2}, Lcom/enq/transceiver/transceivertool/util/HttpUtil;->setmReadTimeout(I)V

    invoke-virtual {v1, p1, p2}, Lcom/enq/transceiver/transceivertool/util/HttpUtil;->post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo v4, "taskSvr response:%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    iput p1, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->errorCode:I

    return v3

    :cond_0
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/enq/transceiver/transceivertool/json/TaskConfig;->parseJson(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->result:Ljava/util/HashMap;

    const-string p2, "response_code"

    iget v2, v0, Lcom/enq/transceiver/transceivertool/json/TaskConfig;->code:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object p1

    iget-object p2, v0, Lcom/enq/transceiver/transceivertool/json/TaskConfig;->ip:Ljava/lang/String;

    iput-object p2, p1, Lcom/enq/transceiver/TransceiverManager;->localIp4:Ljava/lang/String;

    iget-object p1, v0, Lcom/enq/transceiver/transceivertool/json/TaskConfig;->task:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget p2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_TASK_NUM:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, v0, Lcom/enq/transceiver/transceivertool/json/TaskConfig;->task:Ljava/util/List;

    invoke-interface {p2, v3, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;

    iget-object v0, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    const-string v2, "log"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    new-instance v11, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;

    iget-object v5, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    iget-wide v6, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->taskID:J

    const-string v8, "log"

    iget-object v9, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->msg:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->taskScene:Ljava/lang/String;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/enq/transceiver/transceivertool/command/TransferFile/TransferFileTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v11}, Lcom/enq/transceiver/TransceiverManager;->addTaskList(ILcom/enq/transceiver/transceivertool/command/TNetCommandTask;)V

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    const-string/jumbo v4, "signal"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    new-instance v11, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;

    iget-object v5, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    iget-wide v6, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->taskID:J

    const-string/jumbo v8, "signal"

    iget-object v9, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->msg:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->taskScene:Ljava/lang/String;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v11}, Lcom/enq/transceiver/TransceiverManager;->addTaskList(ILcom/enq/transceiver/transceivertool/command/TNetCommandTask;)V

    goto :goto_0

    :cond_2
    iget-object v0, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    const-string/jumbo v4, "syslog"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    new-instance v11, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;

    iget-object v5, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    iget-wide v6, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->taskID:J

    const-string/jumbo v8, "syslog"

    iget-object v9, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->msg:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->taskScene:Ljava/lang/String;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v11}, Lcom/enq/transceiver/TransceiverManager;->addTaskList(ILcom/enq/transceiver/transceivertool/command/TNetCommandTask;)V

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    const-string v4, "ping"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    new-instance v11, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;

    iget-object v5, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    iget-wide v6, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->taskID:J

    const-string v8, "ping"

    iget-object v9, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->msg:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->taskScene:Ljava/lang/String;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/enq/transceiver/transceivertool/command/DetectNet/PingTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v11}, Lcom/enq/transceiver/TransceiverManager;->addTaskList(ILcom/enq/transceiver/transceivertool/command/TNetCommandTask;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    const-string v4, "boce"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    new-instance v11, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;

    iget-object v5, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    iget-wide v6, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->taskID:J

    const-string v8, "boce"

    iget-object v9, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->msg:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->taskScene:Ljava/lang/String;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/enq/transceiver/transceivertool/command/DetectNet/BoceTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v11}, Lcom/enq/transceiver/TransceiverManager;->addTaskList(ILcom/enq/transceiver/transceivertool/command/TNetCommandTask;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    const-string v4, "httpboce"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    new-instance v11, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;

    iget-object v5, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    iget-wide v6, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->taskID:J

    const-string v8, "httpboce"

    iget-object v9, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->msg:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->taskScene:Ljava/lang/String;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/enq/transceiver/transceivertool/command/DetectNet/HttpBoceTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v11}, Lcom/enq/transceiver/TransceiverManager;->addTaskList(ILcom/enq/transceiver/transceivertool/command/TNetCommandTask;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    const-string/jumbo v4, "tracert"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    new-instance v11, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;

    iget-object v5, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    iget-wide v6, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->taskID:J

    const-string/jumbo v8, "tracert"

    iget-object v9, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->msg:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->taskScene:Ljava/lang/String;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/enq/transceiver/transceivertool/command/DetectNet/TracertTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v11}, Lcom/enq/transceiver/TransceiverManager;->addTaskList(ILcom/enq/transceiver/transceivertool/command/TNetCommandTask;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unsupport task type %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object p2, p2, Lcom/enq/transceiver/transceivertool/json/TaskConfigSub;->name:Ljava/lang/String;

    aput-object p2, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_8
    return v1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->TAG:Ljava/lang/String;

    const-string v0, "Parse Remote response Fail!"

    invoke-static {p2, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_DATA_INIT_PARSE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result p1

    iput p1, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->errorCode:I

    return v3
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public executeTask()V
    .locals 14

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->executeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->executeCount:I

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->executeCount:I

    sget v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_EXECUTE_COUNT:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->taskID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->executeCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "Taskid=%d Discard: it has run %d times"

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DISCARD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_OVER_MAXIMUM:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->errorCode:I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->taskID:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "Taskid=%d current status %d can not execute here,so this task is discarded!"

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_STATUS_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->errorCode:I

    return-void

    :cond_3
    :goto_0
    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    :goto_1
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->taskID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    iget v8, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v8, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->type:Ljava/lang/String;

    aput-object v8, v7, v3

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->data:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const-string/jumbo v8, "taskid=%d status=%d type=%s msg=%s"

    invoke-static {v2, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->checkParamValid()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_REQ_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->errorCode:I

    return-void

    :cond_4
    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/enq/transceiver/TransceiverManager;->refreshNetworkInfo()V

    new-instance v0, Lcom/enq/transceiver/transceivertool/json/TaskReq;

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->taskScene:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/enq/transceiver/transceivertool/json/TaskReq;-><init>(Ljava/lang/String;)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v7

    iget-object v7, v7, Lcom/enq/transceiver/TransceiverManager;->BASE_URL:Ljava/lang/String;

    aput-object v7, v2, v4

    sget-object v7, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->TASK_LOCATION:Ljava/lang/String;

    aput-object v7, v2, v1

    const-string v7, "https://%s/%s"

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/json/TaskReq;->generatePostParam()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v7, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v9, v1, [Ljava/lang/Object;

    iget-wide v10, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->taskID:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v4

    const-string v10, "Taskid=%d Failed,generate request info failed "

    invoke-static {v2, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_REQ_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->errorCode:I

    goto/16 :goto_2

    :cond_5
    iget-object v9, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    iget-wide v12, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->taskID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v4

    aput-object v0, v11, v1

    const-string v12, "Taskid=%d  request_info:%s "

    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v0}, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->queryTaskFromCloud(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DONE:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->errorCode:I

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->errorCode:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_HTTP_RESP_NULL:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    if-ne v0, v2, :cond_7

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v9, v1, [Ljava/lang/Object;

    iget-wide v10, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->taskID:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v4

    const-string v10, "Taskid=%d Failed,response info is null "

    invoke-static {v2, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v9, v1, [Ljava/lang/Object;

    iget-wide v10, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->taskID:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v4

    const-string v10, "Taskid=%d Failed,parse response info failed "

    invoke-static {v2, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->errorCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "process done,cost %dms,errorCode=%d"

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/enq/transceiver/TransceiverManager;->getTaskListSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "task_num"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->result:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ldns_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->result:Ljava/util/HashMap;

    sub-long v1, v9, v7

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->result:Ljava/util/HashMap;

    iget v1, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->errorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_code"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->result:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_total_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/enq/transceiver/TransceiverManager;->lastQueryTaskCloudTime:J

    return-void
.end method

.method public reportResult()V
    .locals 3

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v0

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;->status:I

    :cond_1
    :goto_0
    return-void
.end method
