.class Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$5;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "UdpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$5;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$5;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->drainInbound()V

    return-void
.end method
