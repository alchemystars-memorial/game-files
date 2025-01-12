.class Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$2;
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

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$2;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$2;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$2;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$2;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELED;

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$2;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELED;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Z)V

    iput-object v1, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$2;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$2;->val$e:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TransportListener;->onTransportFailure(Ljava/io/IOException;)V

    return-void
.end method
