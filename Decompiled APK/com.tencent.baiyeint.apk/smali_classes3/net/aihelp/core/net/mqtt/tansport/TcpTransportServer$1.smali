.class Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "TcpTransportServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->channel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;

    invoke-virtual {v1, v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->handleSocket(Ljava/nio/channels/SocketChannel;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->channel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;

    invoke-interface {v1, v0}, Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;->onAcceptError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
