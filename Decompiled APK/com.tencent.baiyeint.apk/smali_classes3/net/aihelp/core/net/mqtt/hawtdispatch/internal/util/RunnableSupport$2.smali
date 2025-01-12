.class final Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$2;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "RunnableSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport;->runOnceAfter(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;I)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$runnable:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$2;->val$counter:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$2;->val$runnable:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$2;->val$counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$2;->val$runnable:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$2;->val$runnable:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
