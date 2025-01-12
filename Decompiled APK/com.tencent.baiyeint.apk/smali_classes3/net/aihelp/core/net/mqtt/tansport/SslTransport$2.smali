.class Lnet/aihelp/core/net/mqtt/tansport/SslTransport$2;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "SslTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/SslTransport;->secure_read(Ljava/nio/ByteBuffer;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/SslTransport;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/SslTransport;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/SslTransport;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/SslTransport;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/SslTransport;->handshake()V

    return-void
.end method
