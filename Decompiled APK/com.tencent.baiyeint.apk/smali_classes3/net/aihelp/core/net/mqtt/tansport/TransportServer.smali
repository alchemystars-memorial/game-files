.class public interface abstract Lnet/aihelp/core/net/mqtt/tansport/TransportServer;
.super Ljava/lang/Object;
.source "TransportServer.java"


# virtual methods
.method public abstract getBlockingExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract getBoundAddress()Ljava/lang/String;
.end method

.method public abstract getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
.end method

.method public abstract getSocketAddress()Ljava/net/SocketAddress;
.end method

.method public abstract resume()V
.end method

.method public abstract setBlockingExecutor(Ljava/util/concurrent/Executor;)V
.end method

.method public abstract setDispatchQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
.end method

.method public abstract setTransportServerListener(Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;)V
.end method

.method public abstract start(Ljava/lang/Runnable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract stop(Ljava/lang/Runnable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract suspend()V
.end method
