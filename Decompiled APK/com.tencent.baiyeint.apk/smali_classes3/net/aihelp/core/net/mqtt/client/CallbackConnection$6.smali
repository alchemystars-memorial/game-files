.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$6;
.super Lnet/aihelp/core/net/mqtt/tansport/DefaultTransportListener;
.source "CallbackConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->onSessionEstablished(Lnet/aihelp/core/net/mqtt/tansport/Transport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$6;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/DefaultTransportListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefill()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$6;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$1902(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Z)Z

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$6;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$1500(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)V

    return-void
.end method

.method public onTransportCommand(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$6;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v0

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/client/Tracer;->onReceive(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$6;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$1800(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)V

    return-void
.end method

.method public onTransportFailure(Ljava/io/IOException;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$6;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->handleSessionFailure(Ljava/lang/Throwable;)V

    return-void
.end method
