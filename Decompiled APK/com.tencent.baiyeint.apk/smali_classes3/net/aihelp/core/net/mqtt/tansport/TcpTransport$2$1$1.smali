.class Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "TcpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1$1;->this$2:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1$1;->this$2:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->getServiceState()Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    move-result-object v0

    sget-object v1, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->STARTED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1$1;->this$2:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    const-string v1, "connected."

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1$1;->this$2:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1$1;->this$2:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$100(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setCancelHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1$1;->this$2:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$100(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->cancel()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1$1;->this$2:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$102(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1$1;->this$2:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1$1;->this$2:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-direct {v1, v2}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    iput-object v1, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1$1;->this$2:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->onConnected()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1$1;->this$2:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-virtual {v1, v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->onTransportFailure(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
