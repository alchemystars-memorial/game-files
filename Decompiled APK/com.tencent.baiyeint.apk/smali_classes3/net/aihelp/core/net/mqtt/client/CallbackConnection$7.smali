.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
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

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$1200(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$2000(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/PINGREQ;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/PINGREQ;-><init>()V

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/PINGREQ;->encode()Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$2100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/tansport/Transport;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$2100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/tansport/Transport;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v1

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    invoke-virtual {v1, v0}, Lnet/aihelp/core/net/mqtt/client/Tracer;->onSend(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$2200(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v6, v0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0, v4, v5}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$2002(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;J)J

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$1600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/client/MQTT;->getKeepAlive()S

    move-result v1

    int-to-long v8, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7$1;

    move-object v2, v10

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7$1;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;JJ)V

    invoke-interface {v0, v8, v9, v1, v10}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->executeAfter(JLjava/util/concurrent/TimeUnit;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    :cond_0
    return-void
.end method
