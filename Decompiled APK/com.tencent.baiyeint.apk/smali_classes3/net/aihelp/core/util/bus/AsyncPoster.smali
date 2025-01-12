.class Lnet/aihelp/core/util/bus/AsyncPoster;
.super Ljava/lang/Object;
.source "AsyncPoster.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lnet/aihelp/core/util/bus/Poster;


# instance fields
.field private final eventBus:Lnet/aihelp/core/util/bus/EventBus;

.field private final queue:Lnet/aihelp/core/util/bus/PendingPostQueue;


# direct methods
.method constructor <init>(Lnet/aihelp/core/util/bus/EventBus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/bus/AsyncPoster;->eventBus:Lnet/aihelp/core/util/bus/EventBus;

    new-instance p1, Lnet/aihelp/core/util/bus/PendingPostQueue;

    invoke-direct {p1}, Lnet/aihelp/core/util/bus/PendingPostQueue;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/bus/AsyncPoster;->queue:Lnet/aihelp/core/util/bus/PendingPostQueue;

    return-void
.end method


# virtual methods
.method public enqueue(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lnet/aihelp/core/util/bus/PendingPost;->obtainPendingPost(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;)Lnet/aihelp/core/util/bus/PendingPost;

    move-result-object p1

    iget-object p2, p0, Lnet/aihelp/core/util/bus/AsyncPoster;->queue:Lnet/aihelp/core/util/bus/PendingPostQueue;

    invoke-virtual {p2, p1}, Lnet/aihelp/core/util/bus/PendingPostQueue;->enqueue(Lnet/aihelp/core/util/bus/PendingPost;)V

    iget-object p1, p0, Lnet/aihelp/core/util/bus/AsyncPoster;->eventBus:Lnet/aihelp/core/util/bus/EventBus;

    invoke-virtual {p1}, Lnet/aihelp/core/util/bus/EventBus;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/bus/AsyncPoster;->queue:Lnet/aihelp/core/util/bus/PendingPostQueue;

    invoke-virtual {v0}, Lnet/aihelp/core/util/bus/PendingPostQueue;->poll()Lnet/aihelp/core/util/bus/PendingPost;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/aihelp/core/util/bus/AsyncPoster;->eventBus:Lnet/aihelp/core/util/bus/EventBus;

    invoke-virtual {v1, v0}, Lnet/aihelp/core/util/bus/EventBus;->invokeSubscriber(Lnet/aihelp/core/util/bus/PendingPost;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No pending post available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
