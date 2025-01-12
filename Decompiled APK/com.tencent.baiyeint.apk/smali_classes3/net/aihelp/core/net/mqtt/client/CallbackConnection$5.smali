.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5;
.super Lnet/aihelp/core/net/mqtt/tansport/DefaultTransportListener;
.source "CallbackConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->createTransport(Lnet/aihelp/core/net/mqtt/client/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

.field final synthetic val$onConnect:Lnet/aihelp/core/net/mqtt/client/Callback;

.field final synthetic val$transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/client/Callback;Lnet/aihelp/core/net/mqtt/tansport/Transport;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5;->val$onConnect:Lnet/aihelp/core/net/mqtt/client/Callback;

    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5;->val$transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/DefaultTransportListener;-><init>()V

    return-void
.end method

.method private onFailure(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5;->val$transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5;->val$transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    new-instance v1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5$1;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5$1;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onTransportConnected()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v0

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Transport connected"

    invoke-virtual {v0, v2, v1}, Lnet/aihelp/core/net/mqtt/client/Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$1200(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$1300()Ljava/lang/IllegalStateException;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5;->val$onConnect:Lnet/aihelp/core/net/mqtt/client/Callback;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5;->val$transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onTransportFailure(Ljava/io/IOException;)V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v0

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Transport failure: %s"

    invoke-virtual {v0, v2, v1}, Lnet/aihelp/core/net/mqtt/client/Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method
