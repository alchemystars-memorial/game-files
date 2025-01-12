.class public interface abstract Lnet/aihelp/core/net/mqtt/tansport/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# virtual methods
.method public abstract drainInbound()V
.end method

.method public abstract flush()V
.end method

.method public abstract full()Z
.end method

.method public abstract getBlockingExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
.end method

.method public abstract getLocalAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getProtocolCodec()Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;
.end method

.method public abstract getReadChannel()Ljava/nio/channels/ReadableByteChannel;
.end method

.method public abstract getRemoteAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getTransportListener()Lnet/aihelp/core/net/mqtt/tansport/TransportListener;
.end method

.method public abstract getWriteChannel()Ljava/nio/channels/WritableByteChannel;
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract offer(Ljava/lang/Object;)Z
.end method

.method public abstract resumeRead()V
.end method

.method public abstract setBlockingExecutor(Ljava/util/concurrent/Executor;)V
.end method

.method public abstract setDispatchQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
.end method

.method public abstract setProtocolCodec(Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setTransportListener(Lnet/aihelp/core/net/mqtt/tansport/TransportListener;)V
.end method

.method public abstract start(Ljava/lang/Runnable;)V
.end method

.method public abstract start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
.end method

.method public abstract stop(Ljava/lang/Runnable;)V
.end method

.method public abstract stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
.end method

.method public abstract suspendRead()V
.end method
