.class Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer$2;
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

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransportServer;->channel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
