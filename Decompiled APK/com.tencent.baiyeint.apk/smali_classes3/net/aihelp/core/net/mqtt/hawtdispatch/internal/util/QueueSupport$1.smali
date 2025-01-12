.class final Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/QueueSupport$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "QueueSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/QueueSupport;->dispatchApply(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;ILnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$done:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$task:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/QueueSupport$1;->val$task:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/QueueSupport$1;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/QueueSupport$1;->val$task:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/QueueSupport$1;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/QueueSupport$1;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
