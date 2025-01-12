.class Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "PipeTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;

.field final synthetic val$commands:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;Ljava/util/LinkedList;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1$1;->this$2:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1$1;->val$commands:Ljava/util/LinkedList;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1$1;->this$2:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    iget v1, v0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->outbound:I

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1$1;->val$commands:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->outbound:I

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1$1;->this$2:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->drainInbound()V

    return-void
.end method
