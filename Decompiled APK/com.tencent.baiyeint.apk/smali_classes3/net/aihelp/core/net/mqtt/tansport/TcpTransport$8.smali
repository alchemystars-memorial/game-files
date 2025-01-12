.class Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$8;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "TcpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->schedualRateAllowanceReset()V
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

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$8;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$8;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    const-class v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;->is(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$8;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->rateLimitingChannel:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$RateLimitingChannel;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$RateLimitingChannel;->resetAllowance()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$8;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$600(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    return-void
.end method
