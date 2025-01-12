.class public Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;
.super Ljava/lang/Object;
.source "ConnectCallback.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/client/Callback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

.field private final connectionId:I

.field private final isFaq:Z


# direct methods
.method public constructor <init>(ZLnet/aihelp/core/net/mqtt/callback/IMqttCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;->isFaq:Z

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;->callback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    iput p3, p0, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;->connectionId:I

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;)Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;->callback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    return-object p0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;->connectionId:I

    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getMqttConnectionId()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "mqtt connect failure"

    invoke-static {v0, p1}, Lnet/aihelp/core/util/logger/AIHelpLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;->isFaq:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback$1;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback$1;-><init>(Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    iget p1, p0, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;->connectionId:I

    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getMqttConnectionId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;->isFaq:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->setConnected(Z)V

    :cond_1
    return-void
.end method
