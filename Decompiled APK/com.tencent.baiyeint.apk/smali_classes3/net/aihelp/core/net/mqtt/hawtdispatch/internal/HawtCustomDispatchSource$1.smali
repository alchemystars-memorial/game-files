.class Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "HawtCustomDispatchSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->fireEvent(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

.field final synthetic val$event:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->isCanceled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    const-string v2, "canceled"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    const-string v2, "fired.. but suspended"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$000(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->val$event:Ljava/lang/Object;

    invoke-static {v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$002(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$100(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;

    move-result-object v2

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-static {v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$000(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->val$event:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;->mergeEvents(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$002(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$000(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$002(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    const-string v3, "fired.. mergined with previous pending event.."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$100(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;

    move-result-object v0

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->val$event:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;->mergeEvents(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    const-string v2, "fired.. no previous pending event.."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->val$event:Ljava/lang/Object;

    :goto_1
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$200(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :try_start_2
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$300(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_2
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$200(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    const-string v2, "eventHandler done"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method
