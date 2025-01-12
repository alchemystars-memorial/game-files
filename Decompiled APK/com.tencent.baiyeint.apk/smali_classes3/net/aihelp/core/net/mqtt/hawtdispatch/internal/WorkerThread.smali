.class public abstract Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;
.super Ljava/lang/Thread;
.source "WorkerThread.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    return-void
.end method

.method public static currentWorkerThread()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;
.end method

.method public abstract getNioManager()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;->getDispatcher()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public abstract unpark()V
.end method
