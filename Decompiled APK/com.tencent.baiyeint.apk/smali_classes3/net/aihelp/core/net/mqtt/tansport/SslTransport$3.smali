.class Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "SslTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/SslTransport;->handshake()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/SslTransport;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/SslTransport;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/SslTransport;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/SslTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3$1;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3$1;-><init>(Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method
