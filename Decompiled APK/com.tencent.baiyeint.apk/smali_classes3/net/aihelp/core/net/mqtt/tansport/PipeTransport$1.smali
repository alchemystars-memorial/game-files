.class Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "PipeTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

.field final synthetic val$onCompleted:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;->val$onCompleted:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-static {}, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators;->linkedList()Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->access$100(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->createSource(Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->access$002(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;-><init>(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->peer:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->access$500(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->peer:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->access$500(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;->val$onCompleted:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    :cond_1
    return-void
.end method
