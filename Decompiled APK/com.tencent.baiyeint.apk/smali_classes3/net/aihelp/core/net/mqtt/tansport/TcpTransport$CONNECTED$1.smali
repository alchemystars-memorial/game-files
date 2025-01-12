.class Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "TcpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;->createDisconnectTask()Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/TransportListener;->onTransportDisconnected()V

    return-void
.end method
