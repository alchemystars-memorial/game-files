.class Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;
.super Ljava/lang/Object;
.source "TcpTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->_start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->localLocation:Ljava/net/URI;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->localLocation:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->localLocation:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v2, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->remoteLocation:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->resolveHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v3, v3, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->remoteLocation:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-direct {v2, v1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    new-instance v3, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;

    invoke-direct {v3, p0, v0, v2}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$1;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    invoke-interface {v1, v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    new-instance v2, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$2;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2$2;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;Ljava/io/IOException;)V

    invoke-interface {v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    :goto_1
    return-void
.end method
