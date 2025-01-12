.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;
.super Lnet/aihelp/core/net/mqtt/tansport/DefaultTransportListener;
.source "CallbackConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->onSuccess(Lnet/aihelp/core/net/mqtt/tansport/Transport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

.field final synthetic val$transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;Lnet/aihelp/core/net/mqtt/tansport/Transport;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->val$transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/DefaultTransportListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransportCommand(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v0

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/client/Tracer;->onReceive(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->messageType()B

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v2

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    const-string v3, "Received unexpected MQTT frame: %d"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->messageType()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lnet/aihelp/core/net/mqtt/client/Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->val$transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    sget-object v3, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->NOOP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-interface {v2, v3}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->access$1400(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object v2

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not connect. Received unexpected command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->messageType()B

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lnet/aihelp/core/net/mqtt/client/Callback;->onFailure(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_0
    new-instance v2, Lnet/aihelp/core/net/mqtt/codec/CONNACK;

    invoke-direct {v2}, Lnet/aihelp/core/net/mqtt/codec/CONNACK;-><init>()V

    invoke-virtual {v2, p1}, Lnet/aihelp/core/net/mqtt/codec/CONNACK;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/CONNACK;

    move-result-object p1

    sget-object v2, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$17;->$SwitchMap$net$aihelp$core$net$mqtt$codec$CONNACK$Code:[I

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/CONNACK;->code()Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    move-result-object v3

    invoke-virtual {v3}, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v2

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    const-string v3, "MQTT login rejected"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lnet/aihelp/core/net/mqtt/client/Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->val$transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    sget-object v3, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->NOOP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-interface {v2, v3}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->access$1400(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object v2

    new-instance v3, Lnet/aihelp/core/net/mqtt/client/MQTTException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not connect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/CONNACK;->code()Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lnet/aihelp/core/net/mqtt/client/MQTTException;-><init>(Ljava/lang/String;Lnet/aihelp/core/net/mqtt/codec/CONNACK;)V

    invoke-interface {v2, v3}, Lnet/aihelp/core/net/mqtt/client/Callback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object p1

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    const-string v2, "MQTT login accepted"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lnet/aihelp/core/net/mqtt/client/Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->val$transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-virtual {p1, v2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->onSessionEstablished(Lnet/aihelp/core/net/mqtt/tansport/Transport;)V

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->access$1400(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$1100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

    move-result-object p1

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/client/ExtendedListener;->onConnected()V

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$1600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object p1

    new-instance v2, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1$1;

    invoke-direct {v2, p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1$1;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;)V

    invoke-interface {p1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v2

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v1, "Protocol error: %s"

    invoke-virtual {v2, v1, v0}, Lnet/aihelp/core/net/mqtt/client/Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->val$transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    sget-object v1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->NOOP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->access$1400(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onTransportFailure(Ljava/io/IOException;)V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v0

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Transport failure: %s"

    invoke-virtual {v0, v2, v1}, Lnet/aihelp/core/net/mqtt/client/Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->val$transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    sget-object v1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->NOOP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method
