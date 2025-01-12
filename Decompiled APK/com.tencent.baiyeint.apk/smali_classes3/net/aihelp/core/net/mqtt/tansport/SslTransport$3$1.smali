.class Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "SslTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/SslTransport;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/SslTransport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3$1;->this$1:Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/SslTransport;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/SslTransport;->handshake()V

    :cond_0
    return-void
.end method
