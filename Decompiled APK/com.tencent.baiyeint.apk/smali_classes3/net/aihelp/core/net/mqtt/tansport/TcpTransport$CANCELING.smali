.class Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;
.super Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;
.source "TcpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;
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

.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V
    .locals 1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->runnables:Ljava/util/LinkedList;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$100(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->remaining:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->remaining:I

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$100(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->cancel()V

    :cond_0
    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$200(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->remaining:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->remaining:I

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$200(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object p1

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->cancel()V

    :cond_1
    return-void
.end method


# virtual methods
.method add(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->runnables:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method onCanceled()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    const-string v1, "CANCELING.onCanceled"

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Ljava/lang/String;)V

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->remaining:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-boolean v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->closeOnCancel:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELED;

    iget-boolean v2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->dispose:Z

    invoke-direct {v1, v0, v2}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELED;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Z)V

    iput-object v1, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->runnables:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->dispose:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$300(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    :cond_3
    return-void
.end method

.method onStop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->this$0:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    const-string v1, "CANCELING.onCompleted"

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->add(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;->dispose:Z

    return-void
.end method
