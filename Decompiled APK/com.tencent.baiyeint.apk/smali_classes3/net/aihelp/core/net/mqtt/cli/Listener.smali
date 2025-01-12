.class public Lnet/aihelp/core/net/mqtt/cli/Listener;
.super Ljava/lang/Object;
.source "Listener.java"


# instance fields
.field private debug:Z

.field private final mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

.field private showTopic:Z

.field private final topics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/core/net/mqtt/client/Topic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/client/MQTT;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Listener;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Listener;->topics:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/cli/Listener;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/aihelp/core/net/mqtt/cli/Listener;->debug:Z

    return p0
.end method

.method static synthetic access$100(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stderr(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lnet/aihelp/core/net/mqtt/cli/Listener;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/aihelp/core/net/mqtt/cli/Listener;->showTopic:Z

    return p0
.end method

.method static synthetic access$300(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lnet/aihelp/core/net/mqtt/cli/Listener;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/cli/Listener;->topics:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static displayHelpAndExit(I)V
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, "This is a simple mqtt client that will subscribe to topics and print all messages it receives."

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, "Arguments: [-h host] [-k keepalive] [-c] [-i id] [-u username [-p password]]"

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, "           [--will-topic topic [--will-payload payload] [--will-qos qos] [--will-retain]]"

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, "           [-d] [-s]"

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, "           ( [-q qos] -t topic )+"

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, " -h : mqtt host uri to connect to. Defaults to tcp://localhost:1883."

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, " -k : keep alive in seconds for this client. Defaults to 60."

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, " -c : disable \'clean session\' (store subscription and pending messages when client disconnects)."

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, " -i : id to use for this client. Defaults to a random id."

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, " -u : provide a username (requires MQTT 3.1 broker)"

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, " -p : provide a password (requires MQTT 3.1 broker)"

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, " --will-topic : the topic on which to publish the client Will."

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, " --will-payload : payload for the client Will, which is sent by the broker in case of"

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, "                  unexpected disconnection. If not given and will-topic is set, a zero"

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, "                  length message will be sent."

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, " --will-qos : QoS level for the client Will."

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, " --will-retain : if given, make the client Will retained."

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, " -d : dispaly debug info on stderr"

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, " -s : show message topics in output"

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, " -q : quality of service level to use for the subscription. Defaults to 0."

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, " -t : mqtt topic to subscribe to. May be repeated multiple times."

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    const-string v1, " -v : MQTT version to use 3.1 or 3.1.1. (default: 3.1)"

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stdout(Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private execute()V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Listener;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/MQTT;->callbackConnection()Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Lnet/aihelp/core/net/mqtt/cli/Listener$1;

    invoke-direct {v3, p0, v0, v1}, Lnet/aihelp/core/net/mqtt/cli/Listener$1;-><init>(Lnet/aihelp/core/net/mqtt/cli/Listener;Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    new-instance v2, Lnet/aihelp/core/net/mqtt/cli/Listener$2;

    invoke-direct {v2, p0}, Lnet/aihelp/core/net/mqtt/cli/Listener$2;-><init>(Lnet/aihelp/core/net/mqtt/cli/Listener;)V

    invoke-virtual {v0, v2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->listener(Lnet/aihelp/core/net/mqtt/client/Listener;)Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->resume()V

    new-instance v2, Lnet/aihelp/core/net/mqtt/cli/Listener$3;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/core/net/mqtt/cli/Listener$3;-><init>(Lnet/aihelp/core/net/mqtt/cli/Listener;Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)V

    invoke-virtual {v0, v2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->connect(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/cli/Listener;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;-><init>()V

    sget-object v1, Lnet/aihelp/core/net/mqtt/client/QoS;->AT_MOST_ONCE:Lnet/aihelp/core/net/mqtt/client/QoS;

    new-instance v2, Ljava/util/LinkedList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_12

    :try_start_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v5, "--help"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3}, Lnet/aihelp/core/net/mqtt/cli/Listener;->displayHelpAndExit(I)V

    goto :goto_0

    :cond_0
    const-string v5, "-v"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Listener;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/cli/Listener;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v5, "-h"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Listener;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/cli/Listener;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setHost(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v5, "-k"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Listener;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/cli/Listener;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    invoke-virtual {p0, v3}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setKeepAlive(S)V

    goto :goto_0

    :cond_3
    const-string v5, "-c"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Listener;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-virtual {p0, v3}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setCleanSession(Z)V

    goto :goto_0

    :cond_4
    const-string v3, "-i"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Listener;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/cli/Listener;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setClientId(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v3, "-u"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Listener;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/cli/Listener;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setUserName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "-p"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Listener;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/cli/Listener;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "--will-topic"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Listener;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/cli/Listener;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setWillTopic(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "--will-payload"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Listener;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/cli/Listener;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setWillMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "--will-qos"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "Invalid qos value : "

    if-eqz v3, :cond_b

    :try_start_1
    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/cli/Listener;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/QoS;->values()[Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v3

    array-length v3, v3

    if-le p0, v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stderr(Ljava/lang/Object;)V

    invoke-static {v4}, Lnet/aihelp/core/net/mqtt/cli/Listener;->displayHelpAndExit(I)V

    :cond_a
    iget-object v3, v0, Lnet/aihelp/core/net/mqtt/cli/Listener;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/QoS;->values()[Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v5

    aget-object p0, v5, p0

    invoke-virtual {v3, p0}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setWillQos(Lnet/aihelp/core/net/mqtt/client/QoS;)V

    goto/16 :goto_0

    :cond_b
    const-string v3, "--will-retain"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Listener;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-virtual {p0, v4}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setWillRetain(Z)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "-d"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iput-boolean v4, v0, Lnet/aihelp/core/net/mqtt/cli/Listener;->debug:Z

    goto/16 :goto_0

    :cond_d
    const-string v3, "-s"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iput-boolean v4, v0, Lnet/aihelp/core/net/mqtt/cli/Listener;->showTopic:Z

    goto/16 :goto_0

    :cond_e
    const-string v3, "-q"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/cli/Listener;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/QoS;->values()[Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v3

    array-length v3, v3

    if-le p0, v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stderr(Ljava/lang/Object;)V

    invoke-static {v4}, Lnet/aihelp/core/net/mqtt/cli/Listener;->displayHelpAndExit(I)V

    :cond_f
    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/QoS;->values()[Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v3

    aget-object p0, v3, p0

    move-object v1, p0

    goto/16 :goto_0

    :cond_10
    const-string v3, "-t"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Listener;->topics:Ljava/util/ArrayList;

    new-instance v3, Lnet/aihelp/core/net/mqtt/client/Topic;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/cli/Listener;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v1}, Lnet/aihelp/core/net/mqtt/client/Topic;-><init>(Ljava/lang/String;Lnet/aihelp/core/net/mqtt/client/QoS;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid usage: unknown option: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stderr(Ljava/lang/Object;)V

    invoke-static {v4}, Lnet/aihelp/core/net/mqtt/cli/Listener;->displayHelpAndExit(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    const-string p0, "Invalid usage: argument not a number"

    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stderr(Ljava/lang/Object;)V

    invoke-static {v4}, Lnet/aihelp/core/net/mqtt/cli/Listener;->displayHelpAndExit(I)V

    goto/16 :goto_0

    :cond_12
    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Listener;->topics:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "Invalid usage: no topics specified."

    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stderr(Ljava/lang/Object;)V

    invoke-static {v4}, Lnet/aihelp/core/net/mqtt/cli/Listener;->displayHelpAndExit(I)V

    :cond_13
    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->execute()V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private static shift(Ljava/util/LinkedList;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Invalid usage: Missing argument"

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->stderr(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->displayHelpAndExit(I)V

    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static stderr(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private static stdout(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method
