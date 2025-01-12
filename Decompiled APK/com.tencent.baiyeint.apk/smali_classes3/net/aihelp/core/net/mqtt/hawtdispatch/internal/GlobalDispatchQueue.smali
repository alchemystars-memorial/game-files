.class public final Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;
.super Ljava/lang/Object;
.source "GlobalDispatchQueue.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;


# instance fields
.field public final dispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

.field volatile label:Ljava/lang/String;

.field private final priority:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

.field final workers:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerPool;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->dispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->priority:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    invoke-virtual {p2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->label:Ljava/lang/String;

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;

    invoke-direct {v0, p0, p3, p2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;ILnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->workers:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerPool;

    invoke-virtual {p1, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->track(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;)V

    return-void
.end method


# virtual methods
.method public assertExecuting()V
    .locals 0

    return-void
.end method

.method public createQueue(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->dispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->createQueue(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;

    move-result-object p1

    invoke-interface {p1, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    return-object p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->dispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->shutdownState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->workers:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerPool;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerPool;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void

    :cond_0
    new-instance p1, Lnet/aihelp/core/net/mqtt/hawtdispatch/ShutdownException;

    invoke-direct {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/ShutdownException;-><init>()V

    throw p1
.end method

.method public executeAfter(JLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p4}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->executeAfter(JLjava/util/concurrent/TimeUnit;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public executeAfter(JLjava/util/concurrent/TimeUnit;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 7

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->dispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->shutdownState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->dispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    iget-object v1, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->timerThread:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;

    move-object v2, p4

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->addRelative(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;JLjava/util/concurrent/TimeUnit;)V

    return-void

    :cond_0
    new-instance p1, Lnet/aihelp/core/net/mqtt/hawtdispatch/ShutdownException;

    invoke-direct {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/ShutdownException;-><init>()V

    throw p1
.end method

.method public getDispatcher()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->dispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->priority:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    return-object v0
.end method

.method public getQueueType()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;
    .locals 1

    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;->GLOBAL_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    return-object v0
.end method

.method public getSourceQueue()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->dispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->getCurrentThreadQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;->getSourceQueue()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getTargetQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->getTargetQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTargetQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->getTargetQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;

    move-result-object v0

    return-object v0
.end method

.method public getTargetQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getThreadQueues()[Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 4

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->workers:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerPool;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerPool;->getThreads()[Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public isExecuting()Z
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->dispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->getCurrentThreadQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;->globalQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    if-ne v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isGlobalDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;
    .locals 0

    return-object p0
.end method

.method public isSerialDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isSuspended()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isThreadDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public metrics()Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public profile(Z)V
    .locals 0

    return-void
.end method

.method public profile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resume()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->label:Ljava/lang/String;

    return-void
.end method

.method public setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->workers:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerPool;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerPool;->shutdown()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->workers:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerPool;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerPool;->start()V

    return-void
.end method

.method public suspend()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntrospectionSupport;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
