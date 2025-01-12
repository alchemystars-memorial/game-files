.class public Lnet/aihelp/core/net/mqtt/callback/SubscribeCallback;
.super Ljava/lang/Object;
.source "SubscribeCallback.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/client/Callback<",
        "[B>;"
    }
.end annotation


# instance fields
.field private connectionId:I

.field private isFaqRequest:Z

.field private mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;


# direct methods
.method public constructor <init>(ZLnet/aihelp/core/net/mqtt/callback/IMqttCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/callback/SubscribeCallback;->isFaqRequest:Z

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/callback/SubscribeCallback;->mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    iput p3, p0, Lnet/aihelp/core/net/mqtt/callback/SubscribeCallback;->connectionId:I

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/callback/SubscribeCallback;)Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/callback/SubscribeCallback;->mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    return-object p0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lnet/aihelp/core/net/mqtt/callback/SubscribeCallback;->connectionId:I

    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getMqttConnectionId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "mqtt subscribe failure"

    invoke-static {v0, p1}, Lnet/aihelp/core/util/logger/AIHelpLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/net/mqtt/callback/SubscribeCallback$1;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/net/mqtt/callback/SubscribeCallback$1;-><init>(Lnet/aihelp/core/net/mqtt/callback/SubscribeCallback;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/callback/SubscribeCallback;->onSuccess([B)V

    return-void
.end method

.method public onSuccess([B)V
    .locals 2

    iget p1, p0, Lnet/aihelp/core/net/mqtt/callback/SubscribeCallback;->connectionId:I

    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getMqttConnectionId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lnet/aihelp/core/net/mqtt/callback/SubscribeCallback;->isFaqRequest:Z

    if-nez p1, :cond_0

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object p1

    invoke-static {}, Lnet/aihelp/ui/helper/LoginMqttHelper;->getLoginParams()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "login"

    invoke-virtual {p1, v1, v0}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->postToServer(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
