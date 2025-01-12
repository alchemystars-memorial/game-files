.class public Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;
.super Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;
.source "SignalPipeTask.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;-><init>()V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->name:Ljava/lang/String;

    iput-object p6, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskScene:Ljava/lang/String;

    iput-wide p2, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->type:Ljava/lang/String;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string/jumbo p5, "taskScene"

    invoke-virtual {p4, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "taskid"

    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object p3

    const-string p4, "event_id"

    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string p3, "event_type"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string p2, "client_addr"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string p2, "network_type"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "signal_name"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "signal_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "signal_result"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string p2, "event_code"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string p2, "event_total_time"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private checkOSVerion()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MIN_OSVERSON:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private closeSDKLogMode()I
    .locals 4

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/enq/transceiver/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_DATA_INIT_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/util/FileUtil;->getExFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s/ENQSDK/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    sget-object v3, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEBUG_LOG_FILE:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-static {}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->closeAllLogMode()V

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u5173\u95edSDK\u65e5\u5fd7\u6a21\u5f0f\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0
.end method

.method private openSDKLogMode()I
    .locals 7

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/enq/transceiver/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_DATA_INIT_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/util/FileUtil;->getExFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s/ENQSDK/%s"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    sget-object v5, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEBUG_LOG_FILE:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%s/ENQSDK/"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/util/FileUtil;->createDirs(Ljava/lang/String;)Z

    invoke-static {v1}, Lcom/enq/transceiver/transceivertool/util/FileUtil;->createFile(Ljava/lang/String;)Z

    invoke-static {v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->checkDebugLogFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found log file. logfile path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->setLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u5f00\u542fSDK\u65e5\u5fd7\u6a21\u5f0f\u6210\u529f"

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 4

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    const-string/jumbo v2, "signal"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_5

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-le v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    const-string v1, "sensitiveInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return v3

    :cond_5
    :goto_0
    return v1
.end method

.method public executeTask()V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "event_total_time"

    const-string v3, "event_code"

    const-string v4, "Taskid=%d End "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    sget-object v7, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v7}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v0, v7, :cond_0

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    goto :goto_0

    :cond_0
    iget v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    sget-object v7, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v7}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v7

    if-ne v0, v7, :cond_1

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    goto :goto_0

    :cond_1
    iget v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    sget-object v7, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v7}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v7

    if-ne v0, v7, :cond_a

    :goto_0
    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/enq/transceiver/TransceiverManager;->getControlConfig()Lcom/enq/transceiver/transceivertool/json/ControlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->getSignalpipeAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const-string v2, "[SignalPipeTask.executeTask] failed,callback func is closed"

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_CONFIG_FUNC_CLOSE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->errorCode:I

    return-void

    :cond_2
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    new-array v7, v8, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v9

    iget v11, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    const-string v11, "Taskid=%d Begin,Current status is %d "

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v9

    iget-wide v11, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v10

    iget-object v11, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->name:Ljava/lang/String;

    aput-object v11, v7, v8

    const/4 v11, 0x3

    iget-object v12, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->type:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x4

    iget-object v12, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    const-string v11, "Taskid=%d Detail: \ntaskid=%d\n name=%s\n type=%s\n msg=%s"

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->executeCount:I

    add-int/2addr v0, v10

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->executeCount:I

    iget v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->executeCount:I

    sget v7, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_EXECUTE_COUNT:I

    if-le v0, v7, :cond_3

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const-string v7, "Taskid=%d Discard: it has run %d times"

    new-array v11, v8, [Ljava/lang/Object;

    iget-wide v12, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v9

    iget v12, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->executeCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v10

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DISCARD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_OVER_MAXIMUM:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/Object;

    iget-wide v10, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    iget v4, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->errorCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->checkParamValid()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const-string v7, "Taskid=%d Failed: CheckParamValid fail"

    new-array v11, v10, [Ljava/lang/Object;

    iget-wide v12, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->errorCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/Object;

    iget-wide v10, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    iget v4, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->errorCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->checkOSVerion()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const-string v7, "Taskid=%d Failed: CheckOSVerion fail"

    new-array v11, v10, [Ljava/lang/Object;

    iget-wide v12, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_OSVERSION_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->errorCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/Object;

    iget-wide v10, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    iget v4, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->errorCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    :try_start_3
    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/enq/transceiver/TransceiverManager;->refreshNetworkInfo()V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->data:Ljava/util/HashMap;

    const-string/jumbo v7, "signal"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const-string v7, "Taskid=%d Failed: CheckContext fail"

    new-array v11, v10, [Ljava/lang/Object;

    iget-wide v12, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_AUTH_DECRYPT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->errorCode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/Object;

    iget-wide v10, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    iget v4, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->errorCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    :try_start_4
    sget-object v7, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->SDK_OPEN_LOG:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string/jumbo v11, "signal_result"

    const-string/jumbo v12, "signal_time"

    if-nez v7, :cond_7

    :try_start_5
    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const-string v13, "Taskid=%d signalName=%s:sdk openSDKLogMode execute begin "

    new-array v14, v8, [Ljava/lang/Object;

    move-object/from16 v16, v11

    iget-wide v10, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v14, v9

    const/4 v10, 0x1

    aput-object v0, v14, v10

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->openSDKLogMode()I

    move-result v7

    iget-object v13, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v10

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const-string v11, "Taskid=%d signalName=%s:sdk openSDKLogMode execute end "

    new-array v12, v8, [Ljava/lang/Object;

    iget-wide v13, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v9

    const/4 v13, 0x1

    aput-object v0, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v11, v16

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v7}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v7

    iput v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->errorCode:I

    goto/16 :goto_1

    :cond_7
    sget-object v7, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->SDK_CLOSE_LOG:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const-string v10, "Taskid=%d signalName=%s:sdk closeSDKLogMode execute begin "

    new-array v13, v8, [Ljava/lang/Object;

    iget-wide v8, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v13, v9

    const/4 v8, 0x1

    aput-object v0, v13, v8

    invoke-static {v10, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->closeSDKLogMode()I

    move-result v9

    iget-object v10, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const-string v8, "Taskid=%d signalName=%s:sdk closeSDKLogMode execute end "

    const/4 v10, 0x2

    new-array v12, v10, [Ljava/lang/Object;

    iget-wide v14, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v12, v15

    const/4 v10, 0x1

    aput-object v0, v12, v10

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v7}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v7

    iput v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->errorCode:I

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v7

    iget-object v7, v7, Lcom/enq/transceiver/TransceiverManager;->signalPipeCallback:Lcom/enq/transceiver/VmpCallback;

    if-nez v7, :cond_9

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const-string v8, "Taskid=%d Fail:game callback unregisted "

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    iget-wide v13, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v10, v14

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string v8, "0"

    invoke-virtual {v7, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    sget-object v8, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PROCESS_NO_CMD:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v8}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKeyStr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PROCESS_NO_CMD:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v7}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v7

    iput v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->errorCode:I

    goto :goto_1

    :cond_9
    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const-string v8, "Taskid=%d signalCtx=%s:game callback execute begin "

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    iget-wide v14, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v10, v15

    const/4 v13, 0x1

    aput-object v0, v10, v13

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v13, "signalpipe"

    invoke-virtual {v10, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v13

    iget-object v13, v13, Lcom/enq/transceiver/TransceiverManager;->signalPipeCallback:Lcom/enq/transceiver/VmpCallback;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v13, v10}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I

    move-result v10

    iget-object v13, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const-string v8, "Taskid=%d signalCtx=%s:game callback execute end "

    const/4 v9, 0x2

    new-array v12, v9, [Ljava/lang/Object;

    iget-wide v14, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v12, v15

    const/4 v13, 0x1

    aput-object v0, v12, v13

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v7}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v7

    iput v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->errorCode:I

    :goto_1
    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string v8, "client_addr"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v10

    iget-object v10, v10, Lcom/enq/transceiver/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string v8, "network_type"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v10

    iget-object v10, v10, Lcom/enq/transceiver/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    const-string/jumbo v8, "signal_name"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DONE:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_6
    sget-object v7, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v7}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v7

    iput v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    sget-object v7, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v7}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v7

    iput v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->errorCode:I

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const-string v8, "Taskid=%d Fail:%s "

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v10, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/Object;

    iget-wide v8, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-static {v0, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    iget v4, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->errorCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_3
    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-wide v9, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    iget v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->errorCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v7, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :cond_a
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "Taskid=%d current status %d can not execute here,so this task is discarded!"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_STATUS_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->errorCode:I

    return-void
.end method

.method public reportResult()V
    .locals 3

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v0

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/Pipeline/SignalPipeTask;->status:I

    :cond_1
    :goto_0
    return-void
.end method
