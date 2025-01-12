.class public Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;
.super Ljava/lang/Object;
.source "TransportFilter.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/tansport/Transport;


# instance fields
.field final next:Lnet/aihelp/core/net/mqtt/tansport/Transport;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/Transport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    return-void
.end method


# virtual methods
.method public drainInbound()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->drainInbound()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->flush()V

    return-void
.end method

.method public full()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->full()Z

    move-result v0

    return v0
.end method

.method public getBlockingExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->getBlockingExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolCodec()Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->getProtocolCodec()Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    move-result-object v0

    return-object v0
.end method

.method public getReadChannel()Ljava/nio/channels/ReadableByteChannel;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->getReadChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getTransportListener()Lnet/aihelp/core/net/mqtt/tansport/TransportListener;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->getTransportListener()Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    move-result-object v0

    return-object v0
.end method

.method public getWriteChannel()Ljava/nio/channels/WritableByteChannel;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->getWriteChannel()Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->isConnected()Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public resumeRead()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->resumeRead()V

    return-void
.end method

.method public setBlockingExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->setBlockingExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public setDispatchQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->setDispatchQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    return-void
.end method

.method public setProtocolCodec(Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->setProtocolCodec(Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;)V

    return-void
.end method

.method public setTransportListener(Lnet/aihelp/core/net/mqtt/tansport/TransportListener;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->setTransportListener(Lnet/aihelp/core/net/mqtt/tansport/TransportListener;)V

    return-void
.end method

.method public start(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->start(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public stop(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->stop(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public suspendRead()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TransportFilter;->next:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->suspendRead()V

    return-void
.end method
