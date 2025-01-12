.class public Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableCountDownLatch;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "RunnableCountDownLatch.java"


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableCountDownLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public await()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableCountDownLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableCountDownLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public countDown()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableCountDownLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public getCount()J
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableCountDownLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableCountDownLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableCountDownLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
