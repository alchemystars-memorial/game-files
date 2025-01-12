.class public final Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/AbstractDispatchObject;
.source "HawtCustomDispatchSource.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Event:",
        "Ljava/lang/Object;",
        "MergedEvent:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/AbstractDispatchObject;",
        "Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource<",
        "TEvent;TMergedEvent;>;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false


# instance fields
.field private final aggregator:Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator<",
            "TEvent;TMergedEvent;>;"
        }
    .end annotation
.end field

.field private cancelHandler:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

.field final canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private eventHandler:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

.field protected final externalQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "TMergedEvent;>;"
        }
    .end annotation
.end field

.field private final firedEvent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "TMergedEvent;>;"
        }
    .end annotation
.end field

.field private final ordered:Z

.field private final outboundEvent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "TMergedEvent;>;"
        }
    .end annotation
.end field

.field private pendingEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMergedEvent;"
        }
    .end annotation
.end field

.field protected final size:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator<",
            "TEvent;TMergedEvent;>;",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/AbstractDispatchObject;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->outboundEvent:Ljava/lang/ThreadLocal;

    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->firedEvent:Ljava/lang/ThreadLocal;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->externalQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->size:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->aggregator:Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->suspended:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    instance-of p1, p2, Lnet/aihelp/core/net/mqtt/hawtdispatch/OrderedEventAggregator;

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->ordered:Z

    invoke-virtual {p0, p3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->pendingEvent:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$002(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->pendingEvent:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->aggregator:Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Ljava/lang/ThreadLocal;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->firedEvent:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method static synthetic access$300(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->eventHandler:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-object p0
.end method

.method static synthetic access$400(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->cancelHandler:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-object p0
.end method

.method private fireEvent(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMergedEvent;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->targetQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->targetQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$2;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$2;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    :cond_0
    return-void
.end method

.method protected varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected varargs debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getData()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMergedEvent;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->firedEvent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->firedEvent:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public merge(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEvent;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "merge called"

    invoke-virtual {p0, v2, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;->currentWorkerThread()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->outboundEvent:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->aggregator:Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;

    invoke-interface {v3, v2, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;->mergeEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "merge resulted in cancel"

    invoke-virtual {p0, v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->outboundEvent:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->outboundEvent:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    if-nez v2, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "first merge, posting deferred fire event"

    invoke-virtual {p0, v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->ordered:Z

    if-eqz p1, :cond_1

    sget-object p1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->CURRENT_QUEUE:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;->getSourceQueue()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;->getSourceQueue()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "there was a previous merge, no need to post deferred fire event"

    invoke-virtual {p0, v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "merge not called from a worker thread.. triggering fire event now"

    invoke-virtual {p0, v1, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->aggregator:Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;->mergeEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->fireEvent(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onResume"

    invoke-virtual {p0, v1, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->targetQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$3;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$3;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method protected onStartup()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->eventHandler:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->onResume()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eventHandler must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "deferred fire event executing"

    invoke-virtual {p0, v1, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->outboundEvent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->fireEvent(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->outboundEvent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public setCancelHandler(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->setCancelHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public setCancelHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->cancelHandler:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-void
.end method

.method public setEventHandler(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->eventHandler:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-void
.end method
