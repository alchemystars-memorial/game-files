.class public Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;
.super Ljava/lang/Object;
.source "Metrics.java"


# instance fields
.field public dequeued:J

.field public durationNS:J

.field public enqueued:J

.field public maxRunTimeNS:J

.field public maxWaitTimeNS:J

.field public queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

.field public totalRunTimeNS:J

.field public totalWaitTimeNS:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;->queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-interface {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->getLabel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;->enqueued:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;->dequeued:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;->maxWaitTimeNS:J

    long-to-float v1, v1

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-wide v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;->maxRunTimeNS:J

    long-to-float v1, v3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iget-wide v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;->totalRunTimeNS:J

    long-to-float v1, v3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    iget-wide v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;->totalWaitTimeNS:J

    long-to-float v1, v3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "{ label:%s, enqueued:%d, dequeued:%d, max_wait_time:%.2f ms, max_run_time:%.2f ms, total_run_time:%.2f ms, total_wait_time:%.2f ms }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
