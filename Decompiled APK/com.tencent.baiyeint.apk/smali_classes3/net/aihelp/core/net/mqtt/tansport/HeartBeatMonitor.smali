.class public Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;
.super Ljava/lang/Object;
.source "HeartBeatMonitor.java"


# instance fields
.field initialReadCheckDelay:J

.field initialWriteCheckDelay:J

.field lock:Ljava/lang/Object;

.field onDead:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

.field onKeepAlive:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

.field readInterval:J

.field readSuspendCount:S

.field readSuspendedInterval:Z

.field volatile session:S

.field transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

.field writeInterval:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->NOOP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->onKeepAlive:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->NOOP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->onDead:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    const/4 v0, 0x0

    iput-short v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->session:S

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->lock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;S)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->scheduleCheckWrites(S)V

    return-void
.end method

.method static synthetic access$100(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;S)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->scheduleCheckReads(S)V

    return-void
.end method

.method private schedule(SJLnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 3

    iget-short v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->session:S

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$1;

    invoke-direct {v2, p0, p1, p4}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$1;-><init>(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;SLnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    invoke-interface {v0, p2, p3, v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->executeAfter(JLjava/util/concurrent/TimeUnit;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    :cond_0
    return-void
.end method

.method private scheduleCheckReads(S)V
    .locals 7

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->getProtocolCodec()Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$4;

    invoke-direct {v0, p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$4;-><init>(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;S)V

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->getReadCounter()J

    move-result-wide v3

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$5;

    move-object v1, v0

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$5;-><init>(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;JLnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;S)V

    :goto_0
    iget-wide v1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->readInterval:J

    invoke-direct {p0, p1, v1, v2, v0}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->schedule(SJLnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method private scheduleCheckWrites(S)V
    .locals 7

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->getProtocolCodec()Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$2;

    invoke-direct {v0, p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$2;-><init>(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;S)V

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->getWriteCounter()J

    move-result-wide v3

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$3;

    move-object v1, v0

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$3;-><init>(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;JLnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;S)V

    :goto_0
    iget-wide v1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->writeInterval:J

    invoke-direct {p0, p1, v1, v2, v0}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->schedule(SJLnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method


# virtual methods
.method public getInitialReadCheckDelay()J
    .locals 2

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->initialReadCheckDelay:J

    return-wide v0
.end method

.method public getInitialWriteCheckDelay()J
    .locals 2

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->initialWriteCheckDelay:J

    return-wide v0
.end method

.method public getOnDead()Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->onDead:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-object v0
.end method

.method public getOnKeepAlive()Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->onKeepAlive:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-object v0
.end method

.method public getReadInterval()J
    .locals 2

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->readInterval:J

    return-wide v0
.end method

.method public getTransport()Lnet/aihelp/core/net/mqtt/tansport/Transport;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    return-object v0
.end method

.method public getWriteInterval()J
    .locals 2

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->writeInterval:J

    return-wide v0
.end method

.method public resumeRead()V
    .locals 1

    iget-short v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->readSuspendCount:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->readSuspendCount:S

    return-void
.end method

.method public setInitialReadCheckDelay(J)V
    .locals 0

    iput-wide p1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->initialReadCheckDelay:J

    return-void
.end method

.method public setInitialWriteCheckDelay(J)V
    .locals 0

    iput-wide p1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->initialWriteCheckDelay:J

    return-void
.end method

.method public setOnDead(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->onDead:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-void
.end method

.method public setOnKeepAlive(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->onKeepAlive:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-void
.end method

.method public setReadInterval(J)V
    .locals 0

    iput-wide p1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->readInterval:J

    return-void
.end method

.method public setTransport(Lnet/aihelp/core/net/mqtt/tansport/Transport;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    return-void
.end method

.method public setWriteInterval(J)V
    .locals 0

    iput-wide p1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->writeInterval:J

    return-void
.end method

.method public start()V
    .locals 7

    iget-short v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->session:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->session:S

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->readSuspendedInterval:Z

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->writeInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->initialWriteCheckDelay:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    iget-wide v4, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->initialWriteCheckDelay:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$6;

    invoke-direct {v6, p0}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$6;-><init>(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;)V

    invoke-interface {v0, v4, v5, v1, v6}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->executeAfter(JLjava/util/concurrent/TimeUnit;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    goto :goto_0

    :cond_0
    iget-short v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->session:S

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->scheduleCheckWrites(S)V

    :cond_1
    :goto_0
    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->readInterval:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->initialReadCheckDelay:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    iget-wide v1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->initialReadCheckDelay:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v4, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$7;

    invoke-direct {v4, p0}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$7;-><init>(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->executeAfter(JLjava/util/concurrent/TimeUnit;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    goto :goto_1

    :cond_2
    iget-short v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->session:S

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->scheduleCheckReads(S)V

    :cond_3
    :goto_1
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-short v1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->session:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->session:S

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public suspendRead()V
    .locals 2

    iget-short v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->readSuspendCount:S

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->readSuspendCount:S

    iput-boolean v1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->readSuspendedInterval:Z

    return-void
.end method
