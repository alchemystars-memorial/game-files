.class Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "ActiveMetricsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->track(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;

.field final synthetic val$enqueuedAt:J

.field final synthetic val$runnable:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;JLnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;

    iput-wide p2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector$1;->val$enqueuedAt:J

    iput-object p4, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector$1;->val$runnable:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector$1;->val$enqueuedAt:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;

    invoke-static {v4}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->access$000(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;

    invoke-static {v4}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->access$100(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v5

    invoke-static {v4, v5, v2, v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->access$200(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;Ljava/util/concurrent/atomic/AtomicLong;J)V

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->access$300(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    :try_start_0
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector$1;->val$runnable:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->access$400(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->access$500(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-static {v0, v1, v2, v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->access$200(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->access$400(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->access$500(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-static {v0, v1, v3, v4}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;->access$200(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;Ljava/util/concurrent/atomic/AtomicLong;J)V

    throw v2
.end method
