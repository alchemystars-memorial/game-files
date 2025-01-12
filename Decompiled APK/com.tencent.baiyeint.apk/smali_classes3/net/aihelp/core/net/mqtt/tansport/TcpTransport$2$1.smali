.class Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "TcpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

.field final synthetic val$localAddress:Ljava/net/InetSocketAddress;

.field final synthetic val$remoteAddress:Ljava/net/InetSocketAddress;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->val$localAddress:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->val$remoteAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    const-class v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTING;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;->is(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->val$localAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->val$localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    const-string v1, "connecting..."

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->val$remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-direct {v1, v2}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    iput-object v1, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->onConnected()V

    return-void

    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    const/16 v2, 0x8

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v3, v3, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v3, v3, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-static {v1, v2, v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->createSource(Ljava/nio/channels/SelectableChannel;ILnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$102(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$100(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1$1;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1$1;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$100(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$500(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setCancelHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$100(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    new-instance v2, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELED;

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v3, v3, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELED;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Z)V

    iput-object v2, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :cond_3
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    check-cast v0, Ljava/io/IOException;

    invoke-interface {v1, v0}, Lnet/aihelp/core/net/mqtt/tansport/TransportListener;->onTransportFailure(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
