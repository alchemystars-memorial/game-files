.class public Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/QueueSupport;
.super Ljava/lang/Object;
.source "QueueSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchApply(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;ILjava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0, p1, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/QueueSupport;->dispatchApply(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;ILnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public static dispatchApply(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;ILnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/QueueSupport$1;

    invoke-direct {v1, p2, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/QueueSupport$1;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;Ljava/util/concurrent/CountDownLatch;)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-interface {p0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method
