.class Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$3;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "HawtCustomDispatchSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$3;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$3;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$3;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$3;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$3;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$000(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$3;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$002(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$3;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$200(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$3;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$300(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$3;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$200(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
