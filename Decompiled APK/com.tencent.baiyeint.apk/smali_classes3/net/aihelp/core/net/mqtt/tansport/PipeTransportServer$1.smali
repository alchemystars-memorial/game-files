.class Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "PipeTransportServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->access$000(Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    :try_start_0
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;

    invoke-interface {v2, v1}, Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;->onAccept(Lnet/aihelp/core/net/mqtt/tansport/Transport;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;

    invoke-interface {v2, v1}, Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;->onAcceptError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method
