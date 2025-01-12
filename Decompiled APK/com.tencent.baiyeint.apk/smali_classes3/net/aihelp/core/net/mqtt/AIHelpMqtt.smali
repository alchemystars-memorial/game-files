.class public Lnet/aihelp/core/net/mqtt/AIHelpMqtt;
.super Ljava/lang/Object;
.source "AIHelpMqtt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/mqtt/AIHelpMqtt$ConnectingHandler;,
        Lnet/aihelp/core/net/mqtt/AIHelpMqtt$Holder;
    }
.end annotation


# static fields
.field private static mConnectingMonitor:Lnet/aihelp/core/net/mqtt/AIHelpMqtt$ConnectingHandler;


# instance fields
.field private connectionId:I

.field private faqMqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

.field private mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt$ConnectingHandler;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt$ConnectingHandler;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mConnectingMonitor:Lnet/aihelp/core/net/mqtt/AIHelpMqtt$ConnectingHandler;

    return-void
.end method

.method synthetic constructor <init>(Lnet/aihelp/core/net/mqtt/AIHelpMqtt$1;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;
    .locals 1

    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt$Holder;->access$000()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMqttConnectionId()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->connectionId:I

    return v0
.end method

.method public logoutMqttConnection()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->getIdentifier()I

    move-result v0

    iget v1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->connectionId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->unregisterListener()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnect(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    :cond_0
    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->setConnected(Z)V

    return-void
.end method

.method public onFaqDestroy()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->faqMqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnect(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->faqMqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    :cond_0
    return-void
.end method

.method public postToServer(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->newTopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string p2, "MQTT [send message] %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1, p2}, Lnet/aihelp/utils/TLog;->json(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    sget-object v4, Lnet/aihelp/core/net/mqtt/client/QoS;->AT_MOST_ONCE:Lnet/aihelp/core/net/mqtt/client/QoS;

    const/4 v5, 0x0

    new-instance v6, Lnet/aihelp/core/net/mqtt/callback/SendCallback;

    invoke-direct {v6}, Lnet/aihelp/core/net/mqtt/callback/SendCallback;-><init>()V

    invoke-virtual/range {v1 .. v6}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->publish(Ljava/lang/String;[BLnet/aihelp/core/net/mqtt/client/QoS;ZLnet/aihelp/core/net/mqtt/client/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MQTT postToServer error -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public prepare(ILnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->setLoginType(I)V

    :cond_1
    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v3

    invoke-virtual {v3}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-static {}, Lnet/aihelp/ui/helper/LoginMqttHelper;->getLoginParams()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "login"

    invoke-virtual {p0, p2, p1}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->postToServer(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_2
    invoke-interface {p2}, Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;->dismissMqttLoading()V

    return-void

    :cond_3
    sget-object p1, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mConnectingMonitor:Lnet/aihelp/core/net/mqtt/AIHelpMqtt$ConnectingHandler;

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, v1, v3, v4}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt$ConnectingHandler;->sendEmptyMessageDelayed(IJ)Z

    iget p1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->connectionId:I

    add-int/2addr p1, v0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->connectionId:I

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object p1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->connectionId:I

    invoke-virtual {p1, v2, v0}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getMqttConnection(ZI)Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    new-instance v0, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;

    iget v1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->connectionId:I

    invoke-direct {v0, v2, p2, v1}, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;-><init>(ZLnet/aihelp/core/net/mqtt/callback/IMqttCallback;I)V

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->connect(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    new-instance v0, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;

    sget-object v1, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mConnectingMonitor:Lnet/aihelp/core/net/mqtt/AIHelpMqtt$ConnectingHandler;

    iget v3, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->connectionId:I

    invoke-direct {v0, v2, p2, v1, v3}, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;-><init>(ZLnet/aihelp/core/net/mqtt/callback/IMqttCallback;Landroid/os/Handler;I)V

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->listener(Lnet/aihelp/core/net/mqtt/client/Listener;)Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getTopic(Z)[Lnet/aihelp/core/net/mqtt/client/Topic;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/net/mqtt/callback/SubscribeCallback;

    iget v3, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->connectionId:I

    invoke-direct {v1, v2, p2, v3}, Lnet/aihelp/core/net/mqtt/callback/SubscribeCallback;-><init>(ZLnet/aihelp/core/net/mqtt/callback/IMqttCallback;I)V

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->subscribe([Lnet/aihelp/core/net/mqtt/client/Topic;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    if-eqz v2, :cond_4

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->faqMqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    :cond_4
    return-void
.end method
