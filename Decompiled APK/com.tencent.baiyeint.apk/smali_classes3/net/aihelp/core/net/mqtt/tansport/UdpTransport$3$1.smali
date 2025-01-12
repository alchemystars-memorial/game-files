.class Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "UdpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;

.field final synthetic val$localAddress:Ljava/net/InetSocketAddress;

.field final synthetic val$remoteAddress:Ljava/net/InetSocketAddress;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3$1;->val$localAddress:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3$1;->val$remoteAddress:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3$1;->val$localAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3$1;->val$localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->channel:Ljava/nio/channels/DatagramChannel;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3$1;->val$remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v1}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    new-instance v2, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELED;

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;

    iget-object v3, v3, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELED;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;Z)V

    iput-object v2, v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    invoke-interface {v1, v0}, Lnet/aihelp/core/net/mqtt/tansport/TransportListener;->onTransportFailure(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
