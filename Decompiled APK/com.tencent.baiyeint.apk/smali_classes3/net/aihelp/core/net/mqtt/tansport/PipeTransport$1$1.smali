.class Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "PipeTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->access$200()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;

    iget-object v3, v3, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-static {v3}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->access$308(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)J

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;

    iget-object v3, v3, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-static {v3}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->access$400(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lnet/aihelp/core/net/mqtt/tansport/TransportListener;->onTransportCommand(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->peer:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->access$100(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v1

    new-instance v2, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1$1;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1$1;-><init>(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;Ljava/util/LinkedList;)V

    invoke-interface {v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->access$400(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/aihelp/core/net/mqtt/tansport/TransportListener;->onTransportFailure(Ljava/io/IOException;)V

    :goto_1
    return-void
.end method
