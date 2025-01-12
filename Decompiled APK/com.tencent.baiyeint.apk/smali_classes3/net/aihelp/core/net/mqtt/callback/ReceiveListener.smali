.class public Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;
.super Ljava/lang/Object;
.source "ReceiveListener.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/Listener;


# instance fields
.field private final callback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

.field private final connectionId:I

.field private final handler:Landroid/os/Handler;

.field private final isFaq:Z


# direct methods
.method public constructor <init>(ZLnet/aihelp/core/net/mqtt/callback/IMqttCallback;Landroid/os/Handler;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;->isFaq:Z

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;->callback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;->handler:Landroid/os/Handler;

    iput p4, p0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;->connectionId:I

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;)Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;->callback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    return-object p0
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;->callback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;->onMqttConnected()V

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;->connectionId:I

    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getMqttConnectionId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->setConnected(Z)V

    const-string v0, "ReceiveListener onFailure"

    invoke-static {v0, p1}, Lnet/aihelp/core/util/logger/AIHelpLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onPublish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Ljava/lang/Runnable;)V
    .locals 6

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;->isFaq:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;->connectionId:I

    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getMqttConnectionId()I

    move-result v1

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;->callback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p1, p1, v0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->toByteArray()[B

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "login"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    const-string v1, "MQTT %s [onResponse] %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lnet/aihelp/utils/TLog;->json(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener$1;

    invoke-direct {v1, p0, p1, p2}, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener$1;-><init>(Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
