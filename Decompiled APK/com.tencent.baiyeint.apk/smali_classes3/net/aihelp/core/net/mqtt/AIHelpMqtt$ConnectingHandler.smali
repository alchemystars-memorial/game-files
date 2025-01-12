.class public Lnet/aihelp/core/net/mqtt/AIHelpMqtt$ConnectingHandler;
.super Landroid/os/Handler;
.source "AIHelpMqtt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/AIHelpMqtt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectingHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lnet/aihelp/ui/helper/LoginMqttHelper;->getLoginParams()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getMqConfig()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "mqtt[%s] connect for more than 5s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lnet/aihelp/core/util/logger/AIHelpLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
