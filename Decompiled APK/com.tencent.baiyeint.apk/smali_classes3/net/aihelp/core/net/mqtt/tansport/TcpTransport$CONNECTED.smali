.class Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;
.super Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;
.source "TcpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CONNECTED"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V
    .locals 1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;-><init>()V

    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->localAddress:Ljava/net/SocketAddress;

    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->remoteAddress:Ljava/net/SocketAddress;

    return-void
.end method


# virtual methods
.method createDisconnectTask()Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED$1;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED$1;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;)V

    return-object v0
.end method

.method onCanceled()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    const-string v1, "CONNECTED.onCanceled"

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Ljava/lang/String;)V

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iput-object v0, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;->createDisconnectTask()Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->add(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->onCanceled()V

    return-void
.end method

.method onStop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    const-string v1, "CONNECTED.onStop"

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Ljava/lang/String;)V

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iput-object v0, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;->createDisconnectTask()Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->add(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->onStop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method
