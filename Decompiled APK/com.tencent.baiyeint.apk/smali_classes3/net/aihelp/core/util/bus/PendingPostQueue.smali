.class final Lnet/aihelp/core/util/bus/PendingPostQueue;
.super Ljava/lang/Object;
.source "PendingPostQueue.java"


# instance fields
.field private head:Lnet/aihelp/core/util/bus/PendingPost;

.field private tail:Lnet/aihelp/core/util/bus/PendingPost;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized enqueue(Lnet/aihelp/core/util/bus/PendingPost;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/util/bus/PendingPostQueue;->tail:Lnet/aihelp/core/util/bus/PendingPost;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lnet/aihelp/core/util/bus/PendingPost;->next:Lnet/aihelp/core/util/bus/PendingPost;

    iput-object p1, p0, Lnet/aihelp/core/util/bus/PendingPostQueue;->tail:Lnet/aihelp/core/util/bus/PendingPost;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/bus/PendingPostQueue;->head:Lnet/aihelp/core/util/bus/PendingPost;

    if-nez v0, :cond_1

    iput-object p1, p0, Lnet/aihelp/core/util/bus/PendingPostQueue;->tail:Lnet/aihelp/core/util/bus/PendingPost;

    iput-object p1, p0, Lnet/aihelp/core/util/bus/PendingPostQueue;->head:Lnet/aihelp/core/util/bus/PendingPost;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Head present, but no tail"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be enqueued"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized poll()Lnet/aihelp/core/util/bus/PendingPost;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/util/bus/PendingPostQueue;->head:Lnet/aihelp/core/util/bus/PendingPost;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lnet/aihelp/core/util/bus/PendingPost;->next:Lnet/aihelp/core/util/bus/PendingPost;

    iput-object v1, p0, Lnet/aihelp/core/util/bus/PendingPostQueue;->head:Lnet/aihelp/core/util/bus/PendingPost;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/aihelp/core/util/bus/PendingPostQueue;->tail:Lnet/aihelp/core/util/bus/PendingPost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized poll(I)Lnet/aihelp/core/util/bus/PendingPost;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/util/bus/PendingPostQueue;->head:Lnet/aihelp/core/util/bus/PendingPost;

    if-nez v0, :cond_0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/core/util/bus/PendingPostQueue;->poll()Lnet/aihelp/core/util/bus/PendingPost;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
