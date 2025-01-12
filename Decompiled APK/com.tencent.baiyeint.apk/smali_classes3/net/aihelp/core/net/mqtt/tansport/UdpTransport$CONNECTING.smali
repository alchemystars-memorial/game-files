.class Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTING;
.super Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;
.source "UdpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CONNECTING"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;-><init>()V

    return-void
.end method


# virtual methods
.method onCanceled()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    const-string v1, "CONNECTING.onCanceled"

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;Ljava/lang/String;)V

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    iput-object v0, v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->onCanceled()V

    return-void
.end method

.method onStop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    const-string v1, "CONNECTING.onStop"

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;Ljava/lang/String;)V

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    iput-object v0, v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->onStop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method
