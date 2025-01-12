.class Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "TcpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;
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

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;->onCanceled()V

    return-void
.end method
