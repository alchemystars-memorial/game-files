.class Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "HawtDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->shutdownState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->access$000(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;J)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->DEFAULT_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->shutdown()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->access$100(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->access$100(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->shutdown()V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->access$200(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->access$200(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;->shutdown()V

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->shutdownState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
