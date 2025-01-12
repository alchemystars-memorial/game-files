.class public Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;
.super Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;
.source "UdpTransportServer.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/tansport/TransportServer;


# instance fields
.field private final bindAddress:Ljava/net/InetSocketAddress;

.field private final bindScheme:Ljava/lang/String;

.field private blockingExecutor:Ljava/util/concurrent/Executor;

.field private channel:Ljava/nio/channels/DatagramChannel;

.field private dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

.field private listener:Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;

.field private transport:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->bindScheme:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "::"

    :cond_1
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result p1

    invoke-direct {v1, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->bindAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method private accept()V
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->getServiceState()Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->getServiceState()Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->createTransport()Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->transport:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer$2;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer$2;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;)V

    iput-object v1, v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->onDispose:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->bindAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->transport:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->connected(Ljava/nio/channels/DatagramChannel;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->transport:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;->onAccept(Lnet/aihelp/core/net/mqtt/tansport/Transport;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;

    invoke-interface {v1, v0}, Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;->onAcceptError(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->accept()V

    return-void
.end method

.method static synthetic access$100(Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->queueAccept()V

    return-void
.end method

.method private queueAccept()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer$1;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer$1;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method


# virtual methods
.method protected _start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 1

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->accept()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    :cond_0
    return-void
.end method

.method protected _stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->transport:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method protected createTransport()Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;
    .locals 2

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;-><init>()V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->blockingExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->setBlockingExecutor(Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->setDispatchQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    return-object v0
.end method

.method public getBlockingExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->blockingExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getBoundAddress()Ljava/lang/String;
    .locals 9

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->bindAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v5

    new-instance v0, Ljava/net/URI;

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->bindScheme:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    return-object v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->resume()V

    return-void
.end method

.method public setBlockingExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->blockingExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public setDispatchQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    return-void
.end method

.method public setTransportServerListener(Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;

    return-void
.end method

.method public suspend()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->suspend()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->getBoundAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
