.class public Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;
.super Lcom/enq/transceiver/transceivertool/command/TNetCommandTask;
.source "SysLogTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;,
        Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;
    }
.end annotation


# static fields
.field private static final logCatDir:Ljava/lang/String; = "/ENQSDK/logcat/"

.field private static final maxFileSize:J = 0x400L


# instance fields
.field private countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

.field private executeThread:Ljava/lang/Thread;

.field private logCatDirPath:Ljava/lang/String;

.field private logCatZipPath:Ljava/lang/String;

.field private resultBuffer:Ljava/lang/StringBuffer;

.field private threadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;",
            ">;"
        }
    .end annotation
.end field

.field private zipFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
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

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    const-string v1, ""

    iput-object v1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->logCatDirPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->logCatZipPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->executeThread:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->resultBuffer:Ljava/lang/StringBuffer;

    iput-object v1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->zipFilePath:Ljava/lang/String;

    iput-object p6, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->taskScene:Ljava/lang/String;

    iput-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->name:Ljava/lang/String;

    iput-wide p2, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->taskID:J

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->type:Ljava/lang/String;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->threadMap:Ljava/util/Map;

    iget-object p4, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "taskid"

    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/util/CosSigUtil;->getUUID()Ljava/lang/String;

    move-result-object p3

    const-string p4, "event_id"

    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p3, "event_type"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "network_type"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "client_addr"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "type_filter"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "duration"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "threads_result"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "threads_status"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "exec_time"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "filename"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "filesize"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "client_path"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "server_path"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    const-string/jumbo p2, "upload_time"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "event_code"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    const-string p2, "event_total_time"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)I
    .locals 0

    invoke-direct {p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->startLogCatThread()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->zipFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)Ljava/lang/StringBuffer;
    .locals 0

    iget-object p0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->resultBuffer:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->logCatDirPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$500(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private initLogCatThread()I
    .locals 11

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string/jumbo v1, "type_filter"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    array-length v8, v6

    if-le v8, v4, :cond_0

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    const-string v6, ""

    :goto_1
    :try_start_0
    invoke-static {v7}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->valueOf(Ljava/lang/String;)Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;

    move-result-object v7

    iget-object v8, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v6, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "type[%s]\u5df2\u5b58\u5728"

    invoke-static {v6, v7}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v8, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;

    invoke-direct {v8, p0, v6, v7}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;-><init>(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;Ljava/lang/String;Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;)V

    invoke-virtual {v8, v4}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->setDaemon(Z)V

    const-string v6, "enq_log_%s_thread"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->setName(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogCatType;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object v6, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v2

    const-string/jumbo v5, "\u65e5\u5fd7\u7c7b\u578b[%s]\u4e0d\u5b58\u5728"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v4, :cond_3

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_REQ_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0

    :cond_3
    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0
.end method

.method private startLogCatThread()I
    .locals 9

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;

    iget-object v4, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "\u7ebf\u7a0b[%s]\u542f\u52a8"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->start()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v3, "duration"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u6240\u6709\u5b50\u7ebf\u7a0b\u5df2\u505c\u6b62"

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u8fbe\u5230\u6267\u884c\u8d85\u65f6\u65f6\u95f4\uff0c\u4e3b\u52a8\u505c\u6b62\u5b50\u7ebf\u7a0b"

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->stop()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u6536\u5230\u4e2d\u65ad\u4fe1\u53f7"

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->stop()V

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "exec_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0
.end method

.method private zipFiles()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->logCatDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->logCatZipPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v1, "destName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->logCatZipPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->zipFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->logCatDirPath:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/enq/transceiver/transceivertool/util/FileUtil;->compress(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public checkParamValid()Z
    .locals 10

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v2, "authCode"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v3, "destName"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string/jumbo v3, "tdm-binary"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string/jumbo v1, "type_filter"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v3, "base:"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v3, "3600"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v3, "max_size"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v4, 0x400

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v0, v6, v8

    if-ltz v0, :cond_c

    cmp-long v0, v6, v4

    if-lez v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xe10

    if-gt v0, v3, :cond_e

    if-ge v0, v2, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v1, "sensitiveInfo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return v2

    :cond_12
    :goto_0
    return v1
.end method

.method public executeTask()V
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "/ENQSDK/logcat/"

    const-string/jumbo v2, "type_filter"

    const-string v3, "duration"

    const-string v4, "created"

    const-string v5, "failed"

    const-string/jumbo v6, "\u6240\u6709\u5b50\u7ebf\u7a0b\u5df2\u521b\u5efa"

    const-string/jumbo v7, "\u8fbe\u5230\u7b49\u5f85\u8d85\u65f6\u65f6\u95f4\uff0c\u53ef\u80fd\u521b\u5efa\u5b50\u7ebf\u7a0b\u5931\u8d25"

    const-string v8, "event_total_time"

    const-string v9, "event_code"

    const-string v10, "Taskid=%d End "

    const-string/jumbo v11, "\u6536\u5230\u4e2d\u65ad\u4fe1\u53f7"

    const-string/jumbo v12, "threads_status"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget v15, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v16, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    move-object/from16 v16, v2

    const/16 v18, 0x0

    const/4 v2, 0x1

    if-ne v15, v0, :cond_0

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    goto :goto_1

    :cond_0
    iget v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v15, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v15}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v15

    if-eq v0, v15, :cond_2

    iget v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v15, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v15}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v15

    if-ne v0, v15, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v18

    iget v4, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Taskid=%d current status %d can not execute here,so this task is discarded!"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_STATUS_UNSUPPORT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    return-void

    :cond_2
    :goto_0
    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    :goto_1
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const/4 v15, 0x2

    new-array v2, v15, [Ljava/lang/Object;

    move-wide/from16 v19, v13

    iget-wide v13, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->taskID:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v2, v18

    iget v13, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v2, v14

    const-string v13, "Taskid=%d Begin,Current status is %d "

    invoke-static {v13, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v13, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->taskID:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v2, v18

    iget-wide v13, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->taskID:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v2, v14

    iget-object v13, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->name:Ljava/lang/String;

    const/4 v14, 0x2

    aput-object v13, v2, v14

    const/4 v13, 0x3

    iget-object v14, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->type:Ljava/lang/String;

    aput-object v14, v2, v13

    const/4 v13, 0x4

    iget-object v14, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v13

    const-string v13, "Taskid=%d Detail: \ntaskid=%d\n name=%s\n type=%s\n msg=%s"

    invoke-static {v13, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->executeCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->executeCount:I

    iget v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->executeCount:I

    sget v2, Lcom/enq/transceiver/transceivertool/constant/ConfigConsts;->MAX_EXECUTE_COUNT:I

    if-le v0, v2, :cond_4

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string v2, "Taskid=%d Discard: it has run %d times"

    const/4 v3, 0x2

    new-array v15, v3, [Ljava/lang/Object;

    iget-wide v13, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->taskID:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v15, v18

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->executeCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v13, 0x1

    aput-object v3, v15, v13

    invoke-static {v2, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DISCARD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_OVER_MAXIMUM:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_3

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v13, 0x5

    invoke-virtual {v0, v13, v14, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DONE:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->stop()V

    :goto_2
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v18

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    iget v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v19

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->checkParamValid()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string v2, "Taskid=%d Failed: CheckParamValid fail"

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/Object;

    iget-wide v14, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->taskID:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v13, v18

    invoke-static {v2, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PARAM_TASK_INVALID:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v13, 0x5

    invoke-virtual {v0, v13, v14, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DONE:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->stop()V

    :goto_3
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v18

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    iget v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v19

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    :try_start_4
    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/enq/transceiver/TransceiverManager;->refreshNetworkInfo()V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    const-string v2, "network_type"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/enq/transceiver/TransceiverManager;->netaccesstype:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    const-string v2, "client_addr"

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v3

    iget-object v3, v3, Lcom/enq/transceiver/TransceiverManager;->localIp4:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/enq/transceiver/TransceiverManager;->getInstance()Lcom/enq/transceiver/TransceiverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/enq/transceiver/TransceiverManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/util/FileUtil;->getExFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->taskID:J

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->logCatDirPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/enq/transceiver/transceivertool/util/FileUtil;->createDirs(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u521b\u5efa\u4efb\u52a1\u65e5\u5fd7\u6587\u4ef6\u5939\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->logCatDirPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_7

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v13, 0x5

    invoke-virtual {v0, v13, v14, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DONE:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->stop()V

    :goto_4
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v18

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    iget v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v19

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_8
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "zipFiles/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->logCatZipPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/enq/transceiver/transceivertool/util/FileUtil;->createDirs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u521b\u5efa\u4efb\u52a1\u65e5\u5fd7\u538b\u7f29\u5305\u6587\u4ef6\u5939\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->logCatZipPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_9

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v13, 0x5

    invoke-virtual {v0, v13, v14, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DONE:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->stop()V

    :goto_5
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v18

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    iget v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v19

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_a
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->initLogCatThread()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    iget v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    if-ne v0, v2, :cond_c

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    :cond_b
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->executeThread:Ljava/lang/Thread;

    if-nez v0, :cond_d

    new-instance v0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$1;

    invoke-direct {v0, v1}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$1;-><init>(Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;)V

    iput-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->executeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_6

    :cond_c
    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "\u6267\u884c\u5931\u8d25"

    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_d
    :goto_6
    :try_start_9
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_e

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v13, 0x5

    invoke-virtual {v0, v13, v14, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DONE:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_7

    :catch_4
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->stop()V

    :goto_7
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v18

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :catch_5
    move-exception v0

    :try_start_a
    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_TASK_FAIL_UNKNOWN:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string v3, "Taskid=%d Fail:\n%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    iget-wide v14, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->taskID:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v18

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x1

    aput-object v0, v13, v14

    invoke-static {v3, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_f

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v13, 0x5

    invoke-virtual {v0, v13, v14, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DONE:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_f
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    iput v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_8

    :catch_6
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->stop()V

    :goto_8
    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->taskID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v18

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-static {v0, v2}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    iget v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v19

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_a
    :try_start_c
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->countDownLatchAfterCreateThread:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_10

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v13, 0x5

    invoke-virtual {v2, v13, v14, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DONE:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->SUCCESS:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v2, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_10
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->FAILED:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v2, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_PROCESS_EXECUTE_TIMEOUT:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v2}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v2

    iput v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v2, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_b

    :catch_7
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    invoke-static {v2, v11}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->stop()V

    :goto_b
    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->taskID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v18

    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    iget v3, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->errorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    sub-long v2, v2, v19

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public reportResult()V
    .locals 3

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->REDO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->DOING:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    sget-object v1, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->TODO:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v0

    iget-object v1, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->report2Tdm(Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->UPLOAD:Lcom/enq/transceiver/transceivertool/constant/TaskStatus;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/TaskStatus;->getKey()I

    move-result v0

    iput v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->status:I

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask$LogcatThread;->interrupt()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->threadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public uploadFiles()I
    .locals 7

    invoke-direct {p0}, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->zipFiles()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u751f\u6210\u538b\u7f29\u6587\u4ef6\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/enq/transceiver/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->ERROR_SYSTEM_IO:Lcom/enq/transceiver/transceivertool/constant/ErrorCode;

    invoke-virtual {v0}, Lcom/enq/transceiver/transceivertool/constant/ErrorCode;->getKey()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v1, "destName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v1, "authCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->getInstance()Lcom/enq/transceiver/transceivertool/report/ReportBase;

    move-result-object v1

    iget-object v2, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->zipFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/enq/transceiver/transceivertool/command/SysLog/SysLogTask;->data:Ljava/util/HashMap;

    const-string/jumbo v4, "url"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/enq/transceiver/transceivertool/report/ReportBase;->upload2Tdm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
