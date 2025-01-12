.class Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "AggregatingExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor$1;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor;->source:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
