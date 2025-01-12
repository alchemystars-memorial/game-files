.class public Lcom/gcore/abase/ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionChangeReceiver.java"


# static fields
.field private static LastState:Lcom/gcore/abase/NetworkState; = null

.field private static final TAG:Ljava/lang/String; = "ConnectionChangeReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    sput-object v0, Lcom/gcore/abase/ConnectionChangeReceiver;->LastState:Lcom/gcore/abase/NetworkState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    const-string p2, "ConnectionChangeReceiver"

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/gcore/abase/ConnectionChangeReceiver;->LastState:Lcom/gcore/abase/NetworkState;

    sget-object v1, Lcom/gcore/abase/NetworkState;->ReachableViaOthers:Lcom/gcore/abase/NetworkState;

    if-eq v0, v1, :cond_7

    sget-object v0, Lcom/gcore/abase/ConnectionChangeReceiver;->LastState:Lcom/gcore/abase/NetworkState;

    sget-object v1, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/gcore/abase/GCloudCore;->Instance:Lcom/gcore/abase/GCloudCore;

    sget-object v1, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    invoke-virtual {v1}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gcore/abase/GCloudCore;->NetworkStateChangeNotify(I)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network Type : Other Network Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/gcore/abase/NetworkState;->ReachableViaOthers:Lcom/gcore/abase/NetworkState;

    sput-object p1, Lcom/gcore/abase/ConnectionChangeReceiver;->LastState:Lcom/gcore/abase/NetworkState;

    sget-object p1, Lcom/gcore/abase/GCloudCore;->Instance:Lcom/gcore/abase/GCloudCore;

    sget-object p2, Lcom/gcore/abase/NetworkState;->ReachableViaOthers:Lcom/gcore/abase/NetworkState;

    invoke-virtual {p2}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gcore/abase/GCloudCore;->NetworkStateChangeNotify(I)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/gcore/abase/ConnectionChangeReceiver;->LastState:Lcom/gcore/abase/NetworkState;

    sget-object v0, Lcom/gcore/abase/NetworkState;->ReachableViaWiFi:Lcom/gcore/abase/NetworkState;

    if-eq p1, v0, :cond_7

    sget-object p1, Lcom/gcore/abase/ConnectionChangeReceiver;->LastState:Lcom/gcore/abase/NetworkState;

    sget-object v0, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    if-eq p1, v0, :cond_3

    sget-object p1, Lcom/gcore/abase/GCloudCore;->Instance:Lcom/gcore/abase/GCloudCore;

    sget-object v0, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    invoke-virtual {v0}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gcore/abase/GCloudCore;->NetworkStateChangeNotify(I)V

    :cond_3
    const-string p1, "Network State change to TYPE_WIFI"

    invoke-static {p2, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/gcore/abase/NetworkState;->ReachableViaWiFi:Lcom/gcore/abase/NetworkState;

    sput-object p1, Lcom/gcore/abase/ConnectionChangeReceiver;->LastState:Lcom/gcore/abase/NetworkState;

    sget-object p1, Lcom/gcore/abase/GCloudCore;->Instance:Lcom/gcore/abase/GCloudCore;

    sget-object p2, Lcom/gcore/abase/NetworkState;->ReachableViaWiFi:Lcom/gcore/abase/NetworkState;

    invoke-virtual {p2}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gcore/abase/GCloudCore;->NetworkStateChangeNotify(I)V

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/gcore/abase/ConnectionChangeReceiver;->LastState:Lcom/gcore/abase/NetworkState;

    sget-object v0, Lcom/gcore/abase/NetworkState;->ReachableViaWWAN:Lcom/gcore/abase/NetworkState;

    if-eq p1, v0, :cond_7

    sget-object p1, Lcom/gcore/abase/ConnectionChangeReceiver;->LastState:Lcom/gcore/abase/NetworkState;

    sget-object v0, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    if-eq p1, v0, :cond_5

    sget-object p1, Lcom/gcore/abase/GCloudCore;->Instance:Lcom/gcore/abase/GCloudCore;

    sget-object v0, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    invoke-virtual {v0}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gcore/abase/GCloudCore;->NetworkStateChangeNotify(I)V

    :cond_5
    const-string p1, "Network State change to TYPE_MOBILE"

    invoke-static {p2, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/gcore/abase/NetworkState;->ReachableViaWWAN:Lcom/gcore/abase/NetworkState;

    sput-object p1, Lcom/gcore/abase/ConnectionChangeReceiver;->LastState:Lcom/gcore/abase/NetworkState;

    sget-object p1, Lcom/gcore/abase/GCloudCore;->Instance:Lcom/gcore/abase/GCloudCore;

    sget-object p2, Lcom/gcore/abase/NetworkState;->ReachableViaWWAN:Lcom/gcore/abase/NetworkState;

    invoke-virtual {p2}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gcore/abase/GCloudCore;->NetworkStateChangeNotify(I)V

    goto :goto_1

    :cond_6
    :goto_0
    sget-object p1, Lcom/gcore/abase/ConnectionChangeReceiver;->LastState:Lcom/gcore/abase/NetworkState;

    sget-object v0, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    if-eq p1, v0, :cond_7

    const-string p1, "ApolloNetInfo : null or disConnected. Network State change to TYPE_None"

    invoke-static {p2, p1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    sput-object p1, Lcom/gcore/abase/ConnectionChangeReceiver;->LastState:Lcom/gcore/abase/NetworkState;

    sget-object p1, Lcom/gcore/abase/GCloudCore;->Instance:Lcom/gcore/abase/GCloudCore;

    sget-object p2, Lcom/gcore/abase/NetworkState;->NotReachable:Lcom/gcore/abase/NetworkState;

    invoke-virtual {p2}, Lcom/gcore/abase/NetworkState;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gcore/abase/GCloudCore;->NetworkStateChangeNotify(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public runNetworkStateChange(I)V
    .locals 0

    return-void
.end method
