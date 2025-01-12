.class public final Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;
.super Ljava/lang/Object;
.source "HawtDispatcher.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;


# static fields
.field public static final CURRENT_QUEUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;",
            ">;"
        }
    .end annotation
.end field

.field public static final queues:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final DEFAULT_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

.field private final HIGH_MUTEX:Ljava/lang/Object;

.field private HIGH_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

.field private final LOW_MUTEX:Ljava/lang/Object;

.field private LOW_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

.field final drains:I

.field final jmx:Z

.field private final label:Ljava/lang/String;

.field private volatile profile:Z

.field final shutdownState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final threads:I

.field volatile timerThread:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;

.field volatile uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->CURRENT_QUEUE:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->queues:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->HIGH_MUTEX:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->LOW_MUTEX:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->shutdownState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->getThreads()I

    move-result v0

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->threads:I

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->label:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->isProfile()Z

    move-result v0

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->profile:Z

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->getDrains()I

    move-result v0

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->drains:I

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->isJmx()Z

    move-result v0

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->jmx:Z

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    sget-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;->DEFAULT:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->getThreads()I

    move-result p1

    invoke-direct {v0, p0, v1, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;I)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->DEFAULT_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->start()V

    iget-boolean p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->profile:Z

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->profile(Z)V

    new-instance p1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;

    invoke-direct {p1, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;)V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->timerThread:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->timerThread:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->start()V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->sleep(J)V

    return-void
.end method

.method static synthetic access$100(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->LOW_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->HIGH_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    return-object p0
.end method

.method private sleep(J)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method assertMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatch queue \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<no-label>"

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, "\' was not executing, (currently executing: \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->getCurrentQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string p1, "<not-dispatched>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string p1, "\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createQueue(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->createQueue(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;

    move-result-object p1

    return-object p1
.end method

.method public createQueue(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->getGlobalQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    iget-boolean p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->profile:Z

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->profile(Z)V

    return-object v0
.end method

.method public createSource(Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Event:",
            "Ljava/lang/Object;",
            "MergedEvent:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator<",
            "TEvent;TMergedEvent;>;",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;",
            ")",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource<",
            "TEvent;TMergedEvent;>;"
        }
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-direct {v0, p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    return-object v0
.end method

.method public createSource(Ljava/nio/channels/SelectableChannel;ILnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;Ljava/nio/channels/SelectableChannel;ILnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    return-object v0
.end method

.method public getCurrentQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->CURRENT_QUEUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    return-object v0
.end method

.method public bridge synthetic getCurrentThreadQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->getCurrentThreadQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentThreadQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;
    .locals 1

    invoke-static {}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;->currentWorkerThread()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;->DEFAULT:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->getGlobalQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGlobalQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->getGlobalQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    move-result-object p1

    return-object p1
.end method

.method public getGlobalQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;
    .locals 3

    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher$2;->$SwitchMap$net$aihelp$core$net$mqtt$hawtdispatch$DispatchPriority:[I

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->LOW_MUTEX:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->LOW_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    if-nez v0, :cond_0

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    sget-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;->LOW:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->threads:I

    invoke-direct {v0, p0, v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;I)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->LOW_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->start()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->LOW_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    iget-boolean v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->profile:Z

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->profile(Z)V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->LOW_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "switch missing case"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->HIGH_MUTEX:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->HIGH_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    if-nez v0, :cond_3

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    sget-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;->HIGH:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->threads:I

    invoke-direct {v0, p0, v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;I)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->HIGH_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->start()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->HIGH_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    iget-boolean v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->profile:Z

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->profile(Z)V

    :cond_3
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->HIGH_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    monitor-exit p1

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_4
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->DEFAULT_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    return-object p1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadQueues(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;)[Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->getGlobalQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->getThreadQueues()[Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object p1

    return-object p1
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public metrics()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->queues:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;->metrics()Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public profile(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->profile:Z

    return-void
.end method

.method public profile()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->profile:Z

    return v0
.end method

.method public restart()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->shutdownState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->timerThread:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->timerThread:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->start()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->DEFAULT_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->start()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->LOW_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->start()V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->HIGH_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->start()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not shutdown yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public shutdown()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->shutdownState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    invoke-direct {p0, v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->sleep(J)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->timerThread:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher$1;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher$1;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;)V

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->DEFAULT_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->shutdown(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    :cond_0
    return-void
.end method

.method track(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;)V
    .locals 2

    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->queues:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method untrack(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;)V
    .locals 1

    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->queues:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
