.class public Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;
.super Ljava/lang/Object;
.source "SimplePool.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerPool;


# static fields
.field public static final DEBUG:Z = false


# instance fields
.field final globalQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

.field final group:Ljava/lang/ThreadGroup;

.field final name:Ljava/lang/String;

.field final priority:I

.field volatile shutdown:Z

.field final tasks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;",
            ">;"
        }
    .end annotation
.end field

.field final threads:[Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;ILnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->tasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->shutdown:Z

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->globalQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->dispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->name:Ljava/lang/String;

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtThreadGroup;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->dispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    invoke-direct {v1, p1, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtThreadGroup;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;Ljava/lang/String;)V

    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->group:Ljava/lang/ThreadGroup;

    invoke-static {p3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->priority(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;)I

    move-result p1

    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->priority:I

    new-array p1, p2, [Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->threads:[Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;

    return-void
.end method

.method private createWorker(I)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;
    .locals 4

    :try_start_0
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->setDaemon(Z)V

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->priority:I

    invoke-virtual {v0, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->setPriority(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->setName(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static priority(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;)I
    .locals 2

    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool$1;->$SwitchMap$net$aihelp$core$net$mqtt$hawtdispatch$DispatchPriority:[I

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/16 p0, 0xa

    return p0
.end method


# virtual methods
.method protected varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected varargs debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 3

    invoke-static {}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;->currentWorkerThread()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->tasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->threads:[Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;

    array-length v2, v1

    if-ge p1, v2, :cond_2

    aget-object v1, v1, p1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->getNioManager()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->wakeupIfSelecting()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public getThreads()[Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->threads:[Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;

    return-object v0
.end method

.method public park(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;)V
    .locals 5

    :try_start_0
    const-string v0, "parking thread: %s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->getNioManager()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->select(J)I

    const-string v0, "unparking thread: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public shutdown()V
    .locals 4

    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->tasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->shutdown:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->threads:[Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->unpark()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->threads:[Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->shutdown:Z

    :goto_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->threads:[Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->createWorker(I)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->threads:[Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
