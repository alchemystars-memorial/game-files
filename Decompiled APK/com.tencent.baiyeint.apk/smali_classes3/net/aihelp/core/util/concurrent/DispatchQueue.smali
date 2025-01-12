.class public Lnet/aihelp/core/util/concurrent/DispatchQueue;
.super Ljava/lang/Object;
.source "DispatchQueue.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AIHelp_DispatchQueue"


# instance fields
.field private afterThreads:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private tasks:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field private threadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/concurrent/DispatchQueue;->tasks:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/concurrent/DispatchQueue;->afterThreads:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz p1, :cond_0

    new-instance p1, Lnet/aihelp/core/util/concurrent/AIHelpThreadFactory;

    const-string v0, "cmdpq-a"

    invoke-direct {p1, v0}, Lnet/aihelp/core/util/concurrent/AIHelpThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/concurrent/DispatchQueue;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/aihelp/core/util/concurrent/AIHelpThreadFactory;

    const-string v0, "cmdpq-b"

    invoke-direct {p1, v0}, Lnet/aihelp/core/util/concurrent/AIHelpThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/concurrent/DispatchQueue;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    :goto_0
    return-void
.end method

.method private trackTask(Ljava/util/concurrent/Future;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/concurrent/DispatchQueue;->tasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public dispatchAfter(Ljava/lang/Runnable;J)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/aihelp/core/util/concurrent/DispatchQueue$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lnet/aihelp/core/util/concurrent/DispatchQueue$1;-><init>(Lnet/aihelp/core/util/concurrent/DispatchQueue;JLjava/lang/Runnable;)V

    const-string p1, "HS-cmdpq-trig"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lnet/aihelp/core/util/concurrent/DispatchQueue;->afterThreads:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchAsync(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/concurrent/DispatchQueue;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/core/util/concurrent/DispatchQueue;->trackTask(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public dispatchSync(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/concurrent/DispatchQueue;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method public join()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/util/concurrent/DispatchQueue;->afterThreads:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/concurrent/DispatchQueue;->tasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/util/concurrent/DispatchQueue;->tasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_2
    return-void
.end method
