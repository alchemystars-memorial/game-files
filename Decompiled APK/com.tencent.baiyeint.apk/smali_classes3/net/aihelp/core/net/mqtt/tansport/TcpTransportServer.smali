.class public Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;
.super Ljava/lang/Object;
.source "TcpTransportServer.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/tansport/TransportServer;


# instance fields
.field protected acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

.field protected backlog:I

.field protected final bindAddress:Ljava/net/InetSocketAddress;

.field protected final bindScheme:Ljava/lang/String;

.field protected blockingExecutor:Ljava/util/concurrent/Executor;

.field protected channel:Ljava/nio/channels/ServerSocketChannel;

.field protected dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

.field protected listener:Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;

.field protected receiveBufferSize:I

.field protected sendBufferSize:I


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->backlog:I

    const/high16 v0, 0x10000

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->receiveBufferSize:I

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->sendBufferSize:I

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->bindScheme:Ljava/lang/String;

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

    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->bindAddress:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method protected createTransport()Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;
    .locals 2

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;-><init>()V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->blockingExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->setBlockingExecutor(Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->setDispatchQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    return-object v0
.end method

.method public getBacklog()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->backlog:I

    return v0
.end method

.method public getBlockingExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->blockingExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getBoundAddress()Ljava/lang/String;
    .locals 9

    :try_start_0
    new-instance v8, Ljava/net/URI;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->bindScheme:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->bindAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->channel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

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

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->receiveBufferSize:I

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->sendBufferSize:I

    return v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->channel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected final handleSocket(Ljava/nio/channels/SocketChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->createTransport()Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->connected(Ljava/nio/channels/SocketChannel;)V

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;->onAccept(Lnet/aihelp/core/net/mqtt/tansport/Transport;)V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->resume()V

    return-void
.end method

.method public setBacklog(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->backlog:I

    return-void
.end method

.method public setBlockingExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->blockingExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public setDispatchQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 1

    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->receiveBufferSize:I

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->channel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 1

    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->sendBufferSize:I

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->channel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setTransportServerListener(Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;

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

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->channel:Ljava/nio/channels/ServerSocketChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->channel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    iget v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->receiveBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_0
    :try_start_2
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->channel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    iget v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->sendBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_1
    :try_start_3
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->channel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->bindAddress:Ljava/net/InetSocketAddress;

    iget v2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->backlog:I

    invoke-virtual {v0, v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->channel:Ljava/nio/channels/ServerSocketChannel;

    const/16 v1, 0x10

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-static {v0, v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->createSource(Ljava/nio/channels/SelectableChannel;ILnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer$1;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer$1;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer$2;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer$2;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setCancelHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->resume()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    :cond_0
    return-void

    :catch_2
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to bind to server socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->bindAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer$3;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer$3;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setCancelHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->cancel()V

    :goto_0
    return-void
.end method

.method public suspend()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->acceptSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->suspend()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->getBoundAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
