.class public final Li/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Li/c;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    new-instance v0, Li/b;

    invoke-direct {v0}, Li/b;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Li/c;->a:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Li/c;->a:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iput-object v0, p0, Li/c;->a:Ljava/util/concurrent/ExecutorService;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
