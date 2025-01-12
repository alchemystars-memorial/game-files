.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;
.super Ljava/lang/Object;
.source "CallbackConnection.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/client/Callback<",
        "Lnet/aihelp/core/net/mqtt/tansport/Transport;",
        ">;"
    }
.end annotation


# instance fields
.field private final cb:Lnet/aihelp/core/net/mqtt/client/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final initialConnect:Z

.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/client/Callback;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->cb:Lnet/aihelp/core/net/mqtt/client/Callback;

    iput-boolean p3, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->initialConnect:Z

    return-void
.end method

.method static synthetic access$1400(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;)Lnet/aihelp/core/net/mqtt/client/Callback;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->cb:Lnet/aihelp/core/net/mqtt/client/Callback;

    return-object p0
.end method

.method private tryReconnect()Z
    .locals 7

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->initialConnect:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v0

    iget-wide v5, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connectAttemptsMax:J

    cmp-long v0, v5, v3

    if-ltz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$800(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)J

    move-result-wide v3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v0

    iget-wide v5, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connectAttemptsMax:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v0

    iget-wide v5, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectAttemptsMax:J

    cmp-long v0, v5, v3

    if-ltz v0, :cond_3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$800(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)J

    move-result-wide v3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v0

    iget-wide v5, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectAttemptsMax:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$1200(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->tryReconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {p1, p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->reconnect(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->cb:Lnet/aihelp/core/net/mqtt/client/Callback;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->onSuccess(Lnet/aihelp/core/net/mqtt/tansport/Transport;)V

    return-void
.end method

.method public onSuccess(Lnet/aihelp/core/net/mqtt/tansport/Transport;)V
    .locals 6

    new-instance v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;

    invoke-direct {v0, p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;Lnet/aihelp/core/net/mqtt/tansport/Transport;)V

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->setTransportListener(Lnet/aihelp/core/net/mqtt/tansport/TransportListener;)V

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->resumeRead()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v0

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->clientId()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$1700(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x17

    if-le v2, v3, :cond_0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v2

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->utf8(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->clientId(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v0

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->encode()Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object p1

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/mqtt/client/Tracer;->onSend(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)V

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object p1

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Logging in"

    invoke-virtual {p1, v1, v0}, Lnet/aihelp/core/net/mqtt/client/Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
