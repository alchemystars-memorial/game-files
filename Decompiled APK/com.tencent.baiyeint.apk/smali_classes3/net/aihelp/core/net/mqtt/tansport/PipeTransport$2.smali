.class Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$2;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "PipeTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->fireConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->access$602(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;Z)Z

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->resume()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->access$400(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/TransportListener;->onTransportConnected()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->drainInbound()V

    return-void
.end method
