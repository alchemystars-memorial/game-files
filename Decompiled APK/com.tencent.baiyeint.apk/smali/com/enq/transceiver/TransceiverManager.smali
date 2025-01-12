.class public Lcom/enq/transceiver/TransceiverManager;
.super Ljava/lang/Object;
.source "TransceiverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/enq/transceiver/TransceiverManager$TaskManagerInstance;
    }
.end annotation


# instance fields
.field public BASE_URL:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private _context:Landroid/content/Context;

.field public appid:Ljava/lang/String;

.field private controlConfig:Lcom/enq/transceiver/transceivertool/json/ControlConfig;

.field public lastQueryTaskCloudTime:J

.field public localDns4:Ljava/lang/String;

.field public localDns6:Ljava/lang/String;

.field public localIp4:Ljava/lang/String;

.field public localIp6:Ljava/lang/String;

.field private mThread:Ljava/lang/Thread;

.field public netaccesstype:Ljava/lang/String;

.field public netprottype:Ljava/lang/String;

.field public openid:Ljava/lang/String;

.field private runningFlag:Z

.field public scene:Ljava/lang/String;

.field public signalPipeCallback:Lcom/enq/transceiver/VmpCallback;

.field private taskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;",
            ">;"
        }
    .end annotation
.end field

.field public version:Ljava/lang/String;

.field public xid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->openid:Ljava/lang/String;

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->VERSION:Ljava/lang/String;

    iput-object v1, p0, Lcom/enq/transceiver/TransceiverManager;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->appid:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->xid:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->netprottype:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->netaccesstype:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->BASE_URL:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->localDns4:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->localDns6:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->localIp4:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->localIp6:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->_context:Landroid/content/Context;

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/enq/transceiver/TransceiverManager;->taskList:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/enq/transceiver/TransceiverManager;->lastQueryTaskCloudTime:J

    iput-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->signalPipeCallback:Lcom/enq/transceiver/VmpCallback;

    iput-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->mThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/enq/transceiver/TransceiverManager;->runningFlag:Z

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/SceneID;->START:Lcom/enq/transceiver/transceivertool/constant/SceneID;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->scene:Ljava/lang/String;

    new-instance v0, Lcom/enq/transceiver/transceivertool/json/ControlConfig;

    invoke-direct {v0}, Lcom/enq/transceiver/transceivertool/json/ControlConfig;-><init>()V

    iput-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->controlConfig:Lcom/enq/transceiver/transceivertool/json/ControlConfig;

    return-void
.end method

.method synthetic constructor <init>(Lcom/enq/transceiver/TransceiverManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/enq/transceiver/TransceiverManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/enq/transceiver/TransceiverManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/enq/transceiver/TransceiverManager;->rebuildTaskList()V

    return-void
.end method

.method static synthetic access$300(Lcom/enq/transceiver/TransceiverManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/enq/transceiver/TransceiverManager;->runningFlag:Z

    return p0
.end method

.method static synthetic access$400(Lcom/enq/transceiver/TransceiverManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/enq/transceiver/TransceiverManager;->getUnExecuteTaskNum()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/enq/transceiver/TransceiverManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/enq/transceiver/TransceiverManager;->executeSingleTask()V

    return-void
.end method

.method private executeSingleTask()V
    .locals 4

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;

    iget v2, v1, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->status:I

    sget-object v3, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->status:I

    sget-object v3, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->status:I

    sget-object v3, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_1
    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->executeTask()V

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->reportResult()V

    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/enq/transceiver/TransceiverManager;
    .locals 1

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager$TaskManagerInstance;->access$100()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    return-object v0
.end method

.method private getUnExecuteTaskNum()I
    .locals 5

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;

    iget v3, v2, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->status:I

    sget-object v4, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v4}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v4

    if-eq v3, v4, :cond_1

    iget v3, v2, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->status:I

    sget-object v4, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v4}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v4

    if-eq v3, v4, :cond_1

    iget v2, v2, Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;->status:I

    sget-object v3, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private initLogMode()V
    .locals 5

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/util/FileUtil;->getExFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->DEBUG_LOG_FILE:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "%s/ENQSDK/%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->checkDebugLogFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found log file. logfile path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->setLevel(I)V

    :cond_0
    return-void
.end method

.method private rebuildTaskList()V
    .locals 12

    invoke-direct {p0}, Lcom/enq/transceiver/TransceiverManager;->getUnExecuteTaskNum()I

    move-result v0

    invoke-direct {p0}, Lcom/enq/transceiver/TransceiverManager;->getUnExecuteTaskNum()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "failed, unexecuteTaskNum(%d) is not 0"

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_TASKLIST_SIZE:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/enq/transceiver/TransceiverManager;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "failed, tasklist size(%d) is too long"

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/enq/transceiver/TransceiverManager;->lastQueryTaskCloudTime:J

    sget v6, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MIN_QUERY_TASKCLOUD_INTERVAL:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v4, v0

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/enq/transceiver/TransceiverManager;->lastQueryTaskCloudTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v3

    const/4 v0, 0x2

    sget v1, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MIN_QUERY_TASKCLOUD_INTERVAL:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v0, "failed, query too frequently; last is %d, current is %d, min is %d"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->taskList:Ljava/util/ArrayList;

    new-instance v1, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;

    const-wide/16 v7, 0x0

    iget-object v11, p0, Lcom/enq/transceiver/TransceiverManager;->scene:Ljava/lang/String;

    const-string v6, "sdk"

    const-string v9, "sdk"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "success"

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addTaskList(ILcom/enq/transceiver/transceivertool/command/TNetCommandTask;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->taskList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->_context:Landroid/content/Context;

    return-object v0
.end method

.method public getControlConfig()Lcom/enq/transceiver/transceivertool/json/ControlConfig;
    .locals 1

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->controlConfig:Lcom/enq/transceiver/transceivertool/json/ControlConfig;

    return-object v0
.end method

.method public getExFileDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/util/FileUtil;->getExFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGamePackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->_context:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaskListSize()I
    .locals 1

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    sget v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->VERSIONCODE:I

    return v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 10

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->openid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string p2, "repeat init,so quit"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p3, :cond_4

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/enq/transceiver/TransceiverManager;->_context:Landroid/content/Context;

    iput-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->openid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/enq/transceiver/TransceiverManager;->getGamePackageName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/enq/transceiver/TransceiverManager;->appid:Ljava/lang/String;

    sget-object p3, Lcom/enq/transceiver/transceivertool/constant/SceneID;->MAIN_UI:Lcom/enq/transceiver/transceivertool/constant/SceneID;

    invoke-virtual {p3}, Lcom/enq/transceiver/transceivertool/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/enq/transceiver/TransceiverManager;->scene:Ljava/lang/String;

    iget-object p3, p0, Lcom/enq/transceiver/TransceiverManager;->BASE_URL:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p3, v2, :cond_3

    :cond_2
    const-string p3, "://"

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p3, p2

    sub-int/2addr p3, v1

    aget-object p2, p2, p3

    iput-object p2, p0, Lcom/enq/transceiver/TransceiverManager;->BASE_URL:Ljava/lang/String;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/enq/transceiver/TransceiverManager;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/enq/transceiver/TransceiverManager;->BASE_URL:Ljava/lang/String;

    :cond_3
    invoke-direct {p0}, Lcom/enq/transceiver/TransceiverManager;->initLogMode()V

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->init()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 p2, -0x1

    new-instance p3, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;

    const-wide/16 v5, 0x0

    iget-object v9, p0, Lcom/enq/transceiver/TransceiverManager;->scene:Ljava/lang/String;

    const-string v4, "sdk"

    const-string v7, "sdk"

    move-object v3, p3

    invoke-direct/range {v3 .. v9}, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/enq/transceiver/TransceiverManager;->addTaskList(ILcom/enq/transceiver/transceivertool/command/TNetCommandTask;)V

    iget-object p2, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const/4 p3, 0x6

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/enq/transceiver/TransceiverManager;->getVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v0

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->BASE_URL:Ljava/lang/String;

    aput-object v0, p3, v1

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->xid:Ljava/lang/String;

    aput-object v0, p3, v2

    const/4 v0, 0x3

    aput-object p1, p3, v0

    const/4 p1, 0x4

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->appid:Ljava/lang/String;

    aput-object v0, p3, p1

    const/4 p1, 0x5

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->scene:Ljava/lang/String;

    aput-object v0, p3, p1

    const-string p1, "init over:version=%s,url=%s,xid=%s,openid=%s,appid=%s,scene=%s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string p2, " invalid params"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initByXid(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 10

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string p2, "repeat init,so quit "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p3, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/enq/transceiver/TransceiverManager;->_context:Landroid/content/Context;

    iput-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->xid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/enq/transceiver/TransceiverManager;->getGamePackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->appid:Ljava/lang/String;

    sget-object p1, Lcom/enq/transceiver/transceivertool/constant/SceneID;->START:Lcom/enq/transceiver/transceivertool/constant/SceneID;

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/constant/SceneID;->getSceneID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->scene:Ljava/lang/String;

    iget-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->BASE_URL:Ljava/lang/String;

    const/4 p3, 0x0

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v0, :cond_3

    :cond_2
    const-string p1, "://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    sub-int/2addr p2, v2

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->BASE_URL:Ljava/lang/String;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->BASE_URL:Ljava/lang/String;

    :cond_3
    invoke-direct {p0}, Lcom/enq/transceiver/TransceiverManager;->initLogMode()V

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->init()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 p1, -0x1

    new-instance p2, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;

    const-wide/16 v5, 0x0

    iget-object v9, p0, Lcom/enq/transceiver/TransceiverManager;->scene:Ljava/lang/String;

    const-string v4, "sdk"

    const-string v7, "sdk"

    move-object v3, p2

    invoke-direct/range {v3 .. v9}, Lcom/enq/transceiver/transceivertool/command/AutoTask/AutoInitTask;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/enq/transceiver/TransceiverManager;->addTaskList(ILcom/enq/transceiver/transceivertool/command/TNetCommandTask;)V

    iget-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const/4 p2, 0x6

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/enq/transceiver/TransceiverManager;->getVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, p3

    iget-object p3, p0, Lcom/enq/transceiver/TransceiverManager;->BASE_URL:Ljava/lang/String;

    aput-object p3, p2, v2

    iget-object p3, p0, Lcom/enq/transceiver/TransceiverManager;->xid:Ljava/lang/String;

    aput-object p3, p2, v0

    iget-object p3, p0, Lcom/enq/transceiver/TransceiverManager;->openid:Ljava/lang/String;

    aput-object p3, p2, v1

    const/4 p3, 0x4

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->appid:Ljava/lang/String;

    aput-object v0, p2, p3

    const/4 p3, 0x5

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->scene:Ljava/lang/String;

    aput-object v0, p2, p3

    const-string p3, "init over:version=%s,url=%s,xid=%s,openid=%s,appid=%s,scene=%s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string p2, "invalid params"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public localTaskApi(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->signalPipeCallback:Lcom/enq/transceiver/VmpCallback;

    invoke-virtual {p0, p1, v0}, Lcom/enq/transceiver/TransceiverManager;->localTaskApi(Ljava/lang/String;Lcom/enq/transceiver/VmpCallback;)V

    return-void
.end method

.method public localTaskApi(Ljava/lang/String;Lcom/enq/transceiver/VmpCallback;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "parse params failed or has not init"

    const-string v5, "data"

    const-string v6, "msg"

    const-string v7, "code"

    const-string v8, "localTaskApi"

    const-string v9, ""

    const-string v10, "param"

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v11

    :try_start_0
    iget-object v0, v1, Lcom/enq/transceiver/TransceiverManager;->controlConfig:Lcom/enq/transceiver/transceivertool/json/ControlConfig;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->getLocalTaskAvailable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v4, "localTaskApi \u529f\u80fd\u672a\u6253\u5f00"

    invoke-static {v0, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_CONFIG_FUNC_CLOSE:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v11

    const-string v0, "config func is closed"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    if-eqz v11, :cond_0

    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v12, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v12, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v12, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v12, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v12, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_9

    :cond_1
    :try_start_3
    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "src param is \n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;

    invoke-direct {v12}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;-><init>()V

    invoke-virtual {v12, v0}, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->parseJson(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/enq/transceiver/TransceiverManager;->_context:Landroid/content/Context;

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-static {}, Lcom/enq/transceiver/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v12, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    const-string v13, "localTask"

    invoke-virtual {v4, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v4, :cond_a

    :try_start_4
    iget-object v4, v12, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v15

    const v13, -0x69a0453e

    const/4 v14, 0x2

    if-eq v15, v13, :cond_5

    const v13, 0x1c3c1

    if-eq v15, v13, :cond_4

    const v13, 0x348172

    if-eq v15, v13, :cond_3

    goto :goto_1

    :cond_3
    const-string v13, "ping"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v15, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v13, "udp"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v15, v14

    goto :goto_2

    :cond_5
    const-string v13, "customepipe"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v15, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v15, -0x1

    :goto_2
    if-eqz v15, :cond_9

    const/4 v4, 0x1

    if-eq v15, v4, :cond_8

    if-eq v15, v14, :cond_7

    sget-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v4

    goto :goto_3

    :cond_7
    new-instance v4, Lcom/enq/transceiver/transceivertool/local/UdpDetect;

    invoke-direct {v4}, Lcom/enq/transceiver/transceivertool/local/UdpDetect;-><init>()V

    invoke-virtual {v4, v12, v0, v3}, Lcom/enq/transceiver/transceivertool/local/UdpDetect;->exceuteLocalTask(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/enq/transceiver/VmpCallback;)I

    move-result v4

    goto :goto_3

    :cond_8
    new-instance v4, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;

    invoke-direct {v4}, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;-><init>()V

    invoke-virtual {v4, v12, v0, v3}, Lcom/enq/transceiver/transceivertool/local/IcmpDetect;->exceuteLocalTask(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/enq/transceiver/VmpCallback;)I

    move-result v4

    goto :goto_3

    :cond_9
    new-instance v4, Lcom/enq/transceiver/transceivertool/local/CustomPipe;

    invoke-direct {v4}, Lcom/enq/transceiver/transceivertool/local/CustomPipe;-><init>()V

    invoke-virtual {v4, v12, v0, v3}, Lcom/enq/transceiver/transceivertool/local/CustomPipe;->exceuteLocalTask(Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;Ljava/lang/String;Lcom/enq/transceiver/VmpCallback;)I

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_a
    :try_start_5
    sget-object v4, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v4}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v4

    :goto_3
    sget-object v13, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    const-string v15, "call localTask done:errorCode=%d"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move/from16 v16, v11

    const/4 v1, 0x1

    :try_start_6
    new-array v11, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v17, 0x0

    aput-object v1, v11, v17

    invoke-static {v14, v15, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v4, :cond_b

    :try_start_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v11, "invokeCode is %d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v1, v11, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v11, v4

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    move v11, v4

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move v11, v4

    goto/16 :goto_9

    :cond_b
    move-object v1, v9

    move/from16 v11, v16

    :goto_4
    :try_start_8
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v14, "type"

    iget-object v15, v12, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->type:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "cmd"

    iget-object v15, v12, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->cmd:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "name"

    iget-object v12, v12, Lcom/enq/transceiver/transceivertool/json/LocalTaskParam;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v12, "taskUuid"

    invoke-virtual {v13, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "invokeCode"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "executeCode"

    invoke-virtual {v13, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "executeTime"

    invoke-virtual {v13, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "executeResult"

    invoke-virtual {v13, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v0

    invoke-virtual {v0, v8, v13}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_e

    if-eqz v11, :cond_e

    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    move-object v4, v1

    goto/16 :goto_c

    :catch_3
    move-exception v0

    move-object v4, v1

    goto :goto_a

    :cond_c
    :goto_5
    move/from16 v16, v11

    :try_start_a
    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v11
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v3, :cond_d

    if-eqz v11, :cond_d

    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_6
    return-void

    :catch_5
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v4, v9

    move/from16 v11, v16

    goto :goto_d

    :catch_6
    move-exception v0

    move-object v4, v9

    move/from16 v11, v16

    goto :goto_a

    :catchall_4
    move-exception v0

    move/from16 v16, v11

    :goto_7
    move-object v1, v0

    :goto_8
    move-object v4, v9

    goto :goto_d

    :catch_7
    move-exception v0

    move/from16 v16, v11

    :goto_9
    move-object v4, v9

    :goto_a
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v3, :cond_e

    if-eqz v11, :cond_e

    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_b

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_b
    return-void

    :catchall_5
    move-exception v0

    :goto_c
    move-object v1, v0

    :goto_d
    if-eqz v3, :cond_f

    if-eqz v11, :cond_f

    :try_start_f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v12, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v12, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v12, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v12, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v12, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/enq/transceiver/VmpCallback;->notifySystemInfo(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_e

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_e
    throw v1
.end method

.method public refreshNetworkInfo()V
    .locals 1

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->getNetworkState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/util/NetUtil;->getNetworkProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->netprottype:Ljava/lang/String;

    return-void
.end method

.method public registerCallback(Lcom/enq/transceiver/VmpCallback;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->signalPipeCallback:Lcom/enq/transceiver/VmpCallback;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->signalPipeCallback:Lcom/enq/transceiver/VmpCallback;

    iget-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "success"

    invoke-static {p1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string v0, "failed,repeat registe"

    invoke-static {p1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string v0, "failed,callback is null"

    invoke-static {p1, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public start()I
    .locals 6

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->controlConfig:Lcom/enq/transceiver/transceivertool/json/ControlConfig;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->getTaskAvailable()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string v2, "sdkValidable is false"

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mThread is not null; mThread.isAlive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/enq/transceiver/TransceiverManager;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string v2, "mThread is null"

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->_context:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->openid:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->appid:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/enq/transceiver/TransceiverManager;->mThread:Ljava/lang/Thread;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iput-boolean v0, p0, Lcom/enq/transceiver/TransceiverManager;->runningFlag:Z

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/enq/transceiver/TransceiverManager$1;

    invoke-direct {v4, p0}, Lcom/enq/transceiver/TransceiverManager$1;-><init>(Lcom/enq/transceiver/TransceiverManager;)V

    const-string/jumbo v5, "tranceiverTask"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/enq/transceiver/TransceiverManager;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v3, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u4efb\u52a1\u7ebf\u7a0b\u5df2\u7ecf\u88ab\u5f00\u542f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/enq/transceiver/TransceiverManager;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v2

    :catch_0
    move-exception v3

    iput-boolean v2, p0, Lcom/enq/transceiver/TransceiverManager;->runningFlag:Z

    iget-object v4, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string/jumbo v2, "\u4efb\u52a1\u7ebf\u7a0b\u5f00\u542f\u51fa\u73b0\u5f02\u5e38%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string v2, "please init first!"

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public startNetLatencyMonitor(ILjava/util/List;Ljava/util/List;Lcom/enq/transceiver/LocalTGPACallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/enq/transceiver/LocalTGPACallback;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    iget-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string p2, "freq must more than 100"

    invoke-static {p1, p2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    iget-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string p2, "ipList.size must less than 11"

    invoke-static {p1, p2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string p2, "ipList.size must be the same as contentList.size "

    invoke-static {p1, p2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    if-nez p4, :cond_3

    iget-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string p2, "callback is null "

    invoke-static {p1, p2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    invoke-static {}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->getInstance()Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->init(ILjava/util/List;Ljava/util/List;Lcom/enq/transceiver/LocalTGPACallback;)V

    iget-object p1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string p2, "begin to start NetLatency monitor"

    invoke-static {p1, p2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->getInstance()Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->start()Z

    move-result p1

    return p1
.end method

.method public stop()I
    .locals 6

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->controlConfig:Lcom/enq/transceiver/transceivertool/json/ControlConfig;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/json/ControlConfig;->getTaskAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string v1, "sdkValidable is false"

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/enq/transceiver/TransceiverManager;->runningFlag:Z

    iget-object v1, p0, Lcom/enq/transceiver/TransceiverManager;->mThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u4efb\u52a1\u7ebf\u7a0b\u5e76\u6ca1\u6709\u88ab\u5f00\u542f"

    invoke-static {v1, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/enq/transceiver/TransceiverManager;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iget-object v1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u4efb\u52a1\u7ebf\u7a0b\u88ab\u5f3a\u5236\u7ec8\u6b62,alive:%s,interrupt:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/enq/transceiver/TransceiverManager;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/enq/transceiver/TransceiverManager;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u4efb\u52a1\u7ebf\u7a0b\u5df2\u7ecf\u81ea\u52a8\u9000\u51fa"

    invoke-static {v1, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v3, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const-string/jumbo v0, "\u4efb\u52a1\u7ebf\u7a0b\u7ec8\u6b62\u5f02\u5e38:%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public stopNetLatencyMonitor()Z
    .locals 2

    iget-object v0, p0, Lcom/enq/transceiver/TransceiverManager;->TAG:Ljava/lang/String;

    const-string v1, "begin to stop NetLatency monitor"

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->getInstance()Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/local/NetLatencyMonitor;->stop()Z

    move-result v0

    return v0
.end method
