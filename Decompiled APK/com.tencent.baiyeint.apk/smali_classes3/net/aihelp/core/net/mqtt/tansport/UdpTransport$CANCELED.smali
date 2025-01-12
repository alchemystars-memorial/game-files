.class Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELED;
.super Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;
.source "UdpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CANCELED"
.end annotation


# instance fields
.field private disposed:Z

.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;Z)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;-><init>()V

    iput-boolean p2, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELED;->disposed:Z

    return-void
.end method


# virtual methods
.method onStop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    const-string v1, "CANCELED.onStop"

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;Ljava/lang/String;)V

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELED;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELED;->disposed:Z

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->access$300(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V

    :cond_0
    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    return-void
.end method
