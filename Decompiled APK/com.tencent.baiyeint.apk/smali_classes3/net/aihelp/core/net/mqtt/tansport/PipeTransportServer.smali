.class public Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;
.super Ljava/lang/Object;
.source "PipeTransportServer.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/tansport/TransportServer;


# instance fields
.field private acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource<",
            "Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;",
            "Ljava/util/LinkedList<",
            "Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;",
            ">;>;"
        }
    .end annotation
.end field

.field protected connectURI:Ljava/lang/String;

.field protected final connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

.field protected listener:Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;

.field protected marshal:Z

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    return-object p0
.end method


# virtual methods
.method public connect()Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->connectURI:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->createClientTransport()Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    move-result-object v1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->createServerTransport()Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    move-result-object v2

    iput-object v2, v1, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->peer:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    iput-object v1, v2, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->peer:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-virtual {v1, v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->setRemoteAddress(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->setRemoteAddress(Ljava/lang/String;)V

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->marshal:Z

    invoke-virtual {v2, v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->setMarshal(Z)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {v0, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->merge(Ljava/lang/Object;)V

    return-object v1
.end method

.method protected createClientTransport()Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;-><init>(Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;)V

    return-object v0
.end method

.method protected createServerTransport()Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;-><init>(Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;)V

    return-object v0
.end method

.method public getBlockingExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoundAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->connectURI:Ljava/lang/String;

    return-object v0
.end method

.method public getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public isMarshal()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->marshal:Z

    return v0
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->resume()V

    return-void
.end method

.method public setBlockingExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    return-void
.end method

.method public setConnectURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->connectURI:Ljava/lang/String;

    return-void
.end method

.method public setDispatchQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    return-void
.end method

.method public setMarshal(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->marshal:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->name:Ljava/lang/String;

    return-void
.end method

.method public setTransportServerListener(Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;

    return-void
.end method

.method public start(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators;->linkedList()Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->createSource(Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer$1;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer$1;-><init>(Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->resume()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    :cond_0
    return-void
.end method

.method public stop(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportRegistry;->unbind(Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->setCancelHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->cancel()V

    return-void
.end method

.method public suspend()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->suspend()V

    return-void
.end method
