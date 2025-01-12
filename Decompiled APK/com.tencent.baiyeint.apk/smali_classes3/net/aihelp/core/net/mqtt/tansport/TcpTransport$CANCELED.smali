.class Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELED;
.super Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;
.source "TcpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CANCELED"
.end annotation


# instance fields
.field private disposed:Z

.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Z)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;-><init>()V

    iput-boolean p2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELED;->disposed:Z

    return-void
.end method


# virtual methods
.method onStop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    const-string v1, "CANCELED.onStop"

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Ljava/lang/String;)V

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELED;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELED;->disposed:Z

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$300(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    :cond_0
    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    return-void
.end method
