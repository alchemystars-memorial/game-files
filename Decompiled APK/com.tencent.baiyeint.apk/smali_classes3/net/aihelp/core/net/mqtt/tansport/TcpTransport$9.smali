.class Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$9;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "TcpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->_resumeRead()V
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

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$9;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$9;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->drainInbound()V

    return-void
.end method
