.class Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTING;
.super Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;
.source "TcpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CONNECTING"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;-><init>()V

    return-void
.end method


# virtual methods
.method onCanceled()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    const-string v1, "CONNECTING.onCanceled"

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Ljava/lang/String;)V

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iput-object v0, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->onCanceled()V

    return-void
.end method

.method onStop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    const-string v1, "CONNECTING.onStop"

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Ljava/lang/String;)V

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iput-object v0, v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->onStop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method
