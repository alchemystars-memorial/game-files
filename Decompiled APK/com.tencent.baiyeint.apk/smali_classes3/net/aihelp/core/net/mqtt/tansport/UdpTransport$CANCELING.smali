.class Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;
.super Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;
.source "UdpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CANCELING"
.end annotation


# instance fields
.field private dispose:Z

.field private remaining:I

.field private runnables:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V
    .locals 1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->runnables:Ljava/util/LinkedList;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->access$100(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->remaining:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->remaining:I

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->access$100(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->cancel()V

    :cond_0
    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->access$200(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->remaining:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->remaining:I

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->access$200(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object p1

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->cancel()V

    :cond_1
    return-void
.end method


# virtual methods
.method add(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->runnables:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method onCanceled()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    const-string v1, "CANCELING.onCanceled"

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;Ljava/lang/String;)V

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->remaining:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELED;

    iget-boolean v2, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->dispose:Z

    invoke-direct {v1, v0, v2}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELED;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;Z)V

    iput-object v1, v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->runnables:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->dispose:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->access$300(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V

    :cond_2
    return-void
.end method

.method onStop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    const-string v1, "CANCELING.onCompleted"

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->add(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->dispose:Z

    return-void
.end method
