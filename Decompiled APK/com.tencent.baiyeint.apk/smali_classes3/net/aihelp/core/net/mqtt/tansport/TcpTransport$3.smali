.class Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$3;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "TcpTransport.java"


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

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    const-string v1, "was connected."

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->onConnected()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-virtual {v1, v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->onTransportFailure(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
