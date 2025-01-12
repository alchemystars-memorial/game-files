.class public Lnet/aihelp/core/util/concurrent/NotifyingRunnable;
.super Ljava/lang/Object;
.source "NotifyingRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "NotifyingRunnable"


# instance fields
.field private isFinished:Z

.field private final runnable:Ljava/lang/Runnable;

.field private final syncLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->syncLock:Ljava/lang/Object;

    iput-object p1, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-boolean v1, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->isFinished:Z

    iget-object v1, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->syncLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    iput-boolean v1, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->isFinished:Z

    iget-object v1, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->syncLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public waitForCompletion()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->isFinished:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->syncLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
