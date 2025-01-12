.class public final Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/MetricsCollector;
.source "ActiveMetricsCollector.java"


# instance fields
.field private final dequeued:Ljava/util/concurrent/atomic/AtomicLong;

.field private final enqueued:Ljava/util/concurrent/atomic/AtomicLong;

.field private final max_run_time:Ljava/util/concurrent/atomic/AtomicLong;

.field private final max_wait_time:Ljava/util/concurrent/atomic/AtomicLong;

.field private final queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

.field private final reset_at:Ljava/util/concurrent/atomic/AtomicLong;

.field private final total_run_time:Ljava/util/concurrent/atomic/AtomicLong;

.field private final total_wait_time:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 3

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/MetricsCollector;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->max_run_time:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->max_wait_time:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->enqueued:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->dequeued:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->total_run_time:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->total_wait_time:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->reset_at:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->total_wait_time:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->max_wait_time:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;Ljava/util/concurrent/atomic/AtomicLong;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->setMax(Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method

.method static synthetic access$300(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->dequeued:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$400(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->total_run_time:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$500(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->max_run_time:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method private setMax(Ljava/util/concurrent/atomic/AtomicLong;J)V
    .locals 3

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    invoke-virtual {p1, v0, v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public metrics()Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;
    .locals 11

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->reset_at:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->enqueued:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v7

    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->dequeued:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v9

    cmp-long v4, v7, v5

    if-nez v4, :cond_0

    cmp-long v4, v9, v5

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v4, Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;

    invoke-direct {v4}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;-><init>()V

    sub-long/2addr v0, v2

    iput-wide v0, v4, Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;->durationNS:J

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    iput-object v0, v4, Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;->queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    iput-wide v7, v4, Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;->enqueued:J

    iput-wide v9, v4, Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;->dequeued:J

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->max_wait_time:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    iput-wide v0, v4, Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;->maxWaitTimeNS:J

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->max_run_time:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    iput-wide v0, v4, Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;->maxRunTimeNS:J

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->total_run_time:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    iput-wide v0, v4, Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;->totalRunTimeNS:J

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->total_wait_time:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    iput-wide v0, v4, Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;->totalWaitTimeNS:J

    return-object v4
.end method

.method public track(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->enqueued:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    new-instance v2, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector$1;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;JLnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-object v2
.end method
