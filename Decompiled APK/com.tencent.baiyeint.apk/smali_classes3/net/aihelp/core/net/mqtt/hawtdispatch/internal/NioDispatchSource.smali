.class public final Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/AbstractDispatchObject;
.source "NioDispatchSource.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false


# instance fields
.field cancelHandler:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

.field final canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final channel:Ljava/nio/channels/SelectableChannel;

.field eventHandler:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

.field final interestOps:I

.field final keyState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;",
            ">;"
        }
    .end annotation
.end field

.field volatile selectorQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

.field private updateInterestTask:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;Ljava/nio/channels/SelectableChannel;ILnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 1

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/AbstractDispatchObject;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->keyState:Ljava/lang/ThreadLocal;

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$4;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$4;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->updateInterestTask:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    if-eqz p3, :cond_0

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->channel:Ljava/nio/channels/SelectableChannel;

    invoke-static {p1, p4}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->pickThreadQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->selectorQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    iput p3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->interestOps:I

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->suspended:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p0, p4}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid interest ops"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->opsToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->getCurrentNioManager()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->updateInterest()V

    return-void
.end method

.method static synthetic access$300(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->key_cancel()V

    return-void
.end method

.method static synthetic access$400(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->register_on(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    return-void
.end method

.method private getCurrentNioManager()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;
    .locals 1

    invoke-static {}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;->currentWorkerThread()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;->getNioManager()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    move-result-object v0

    return-object v0
.end method

.method private isCurrent(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Z
    .locals 2

    invoke-static {}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;->currentWorkerThread()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;

    move-result-object v0

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private key_cancel()V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->keyState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "canceling source"

    invoke-virtual {p0, v3, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;->attachment:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;->sources:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;->attachment:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;->sources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "canceling key."

    invoke-virtual {p0, v2, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->getCurrentNioManager()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    move-result-object v1

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;->key()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->cancel(Ljava/nio/channels/SelectionKey;)V

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->keyState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method private static opsToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_0

    const-string v1, "ACCEPT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_1

    const-string v1, "CONNECT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_2

    const-string v1, "READ"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_3

    const-string p0, "WRITE"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static pickThreadQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 3

    :goto_0
    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->getQueueType()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    move-result-object v0

    sget-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;->THREAD_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->getTargetQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->getTargetQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->getQueueType()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    move-result-object v0

    sget-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;->THREAD_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    if-eq v0, v1, :cond_3

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->DEFAULT_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->workers:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerPool;

    invoke-interface {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerPool;->getThreads()[Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p1, p0, p1

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;->getNioManager()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->getRegisteredKeyCount()I

    move-result v0

    const/4 v1, 0x1

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;->getNioManager()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->getRegisteredKeyCount()I

    move-result v2

    if-ge v2, v0, :cond_1

    aget-object p1, p0, v1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private register_on(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$2;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$2;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;)V

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method private updateInterest()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->selectorQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->isCurrent(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->updateInterestTask:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->selectorQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->updateInterestTask:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->selectorQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$1;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$1;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

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

.method public fire(I)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->keyState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;->readyOps:I

    or-int/2addr v1, p1

    iput v1, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;->readyOps:I

    iget v1, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;->readyOps:I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->isSuspended()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput v1, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;->readyOps:I

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->targetQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$3;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$3;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;I)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    :cond_1
    return-void
.end method

.method public getData()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method internal_cancel()V
    .locals 2

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->key_cancel()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->cancelHandler:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->targetQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->cancelHandler:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    :cond_0
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onResume"

    invoke-virtual {p0, v1, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->selectorQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->isCurrent(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->keyState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;

    if-eqz v0, :cond_1

    iget v1, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;->readyOps:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$KeyState;->readyOps:I

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->fire(I)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->updateInterest()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->selectorQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$5;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$5;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    :goto_1
    return-void
.end method

.method protected onStartup()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->eventHandler:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->selectorQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->register_on(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eventHandler must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onSuspend()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onSuspend"

    invoke-virtual {p0, v1, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/AbstractDispatchObject;->onSuspend()V

    return-void
.end method

.method public setCancelHandler(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->setCancelHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public setCancelHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->cancelHandler:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-void
.end method

.method public setEventHandler(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->eventHandler:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-void
.end method

.method public setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 3

    invoke-super {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/AbstractDispatchObject;->setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    :goto_0
    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->getQueueType()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    move-result-object v0

    sget-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;->THREAD_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->getTargetQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->getTargetQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->getQueueType()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    move-result-object v0

    sget-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;->THREAD_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->selectorQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->selectorQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->selectorQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    if-eqz v0, :cond_1

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$6;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource$6;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->register_on(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    :cond_2
    :goto_1
    return-void
.end method
