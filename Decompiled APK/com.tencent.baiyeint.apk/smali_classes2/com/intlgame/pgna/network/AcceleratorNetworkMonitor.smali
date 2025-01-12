.class public Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;
.super Ljava/lang/Object;
.source "AcceleratorNetworkMonitor.java"

# interfaces
.implements Lcom/intlgame/core/dns/NetworkStateInterface;


# static fields
.field public static final NetworkStateAvailable:I = 0x1

.field public static final NetworkStateLost:I = 0x0

.field public static final NetworkTypeBroken:I = -0x1

.field public static final NetworkTypeCellular:I = 0x0

.field public static final NetworkTypeWifi:I = 0x1


# instance fields
.field private cellularNetwork:Landroid/net/Network;

.field private cellularNetworkCallback:Lcom/intlgame/pgna/network/AcceleratorCellularNetworkCallback;

.field private inited:Z

.field private wifiNetwork:Landroid/net/Network;

.field private wifiNetworkCallback:Lcom/intlgame/pgna/network/AcceleratorWifiNetworkCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->cellularNetworkCallback:Lcom/intlgame/pgna/network/AcceleratorCellularNetworkCallback;

    iput-object v0, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->cellularNetwork:Landroid/net/Network;

    iput-object v0, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->wifiNetworkCallback:Lcom/intlgame/pgna/network/AcceleratorWifiNetworkCallback;

    iput-object v0, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->wifiNetwork:Landroid/net/Network;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->inited:Z

    return-void
.end method

.method private registerCellularObserver()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/intlgame/pgna/network/AcceleratorCellularNetworkCallback;

    invoke-direct {v0, p0}, Lcom/intlgame/pgna/network/AcceleratorCellularNetworkCallback;-><init>(Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;)V

    iput-object v0, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->cellularNetworkCallback:Lcom/intlgame/pgna/network/AcceleratorCellularNetworkCallback;

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->cellularNetworkCallback:Lcom/intlgame/pgna/network/AcceleratorCellularNetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method private registerObserver()V
    .locals 1

    const-string v0, "[PGNA] ready to registerObserver"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->registerWifiObserver()V

    invoke-direct {p0}, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->registerCellularObserver()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->inited:Z

    return-void
.end method

.method private registerWifiObserver()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/intlgame/pgna/network/AcceleratorWifiNetworkCallback;

    invoke-direct {v0, p0}, Lcom/intlgame/pgna/network/AcceleratorWifiNetworkCallback;-><init>(Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;)V

    iput-object v0, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->wifiNetworkCallback:Lcom/intlgame/pgna/network/AcceleratorWifiNetworkCallback;

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->wifiNetworkCallback:Lcom/intlgame/pgna/network/AcceleratorWifiNetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public OnRecvNetworkStateChanged(Lcom/intlgame/core/dns/NetworkType;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PGNA] current network state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/intlgame/core/dns/NetworkType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_WIFI:Lcom/intlgame/core/dns/NetworkType;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {v1, v1}, Lcom/intlgame/pgna/AcceleratorPlugin;->onNetworkTypeChangeCallback(II)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_2G:Lcom/intlgame/core/dns/NetworkType;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_3G:Lcom/intlgame/core/dns/NetworkType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_4G:Lcom/intlgame/core/dns/NetworkType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_MOBILE:Lcom/intlgame/core/dns/NetworkType;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/intlgame/core/dns/NetworkType;->NETWORK_UNKNOWN:Lcom/intlgame/core/dns/NetworkType;

    if-ne p1, v0, :cond_3

    invoke-static {v2, v2}, Lcom/intlgame/pgna/AcceleratorPlugin;->onNetworkTypeChangeCallback(II)V

    invoke-static {v1, v2}, Lcom/intlgame/pgna/AcceleratorPlugin;->onNetworkTypeChangeCallback(II)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v2, v1}, Lcom/intlgame/pgna/AcceleratorPlugin;->onNetworkTypeChangeCallback(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getCellularNetwork()Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->cellularNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public getWifiNetwork()Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->wifiNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public registerNetworkChangeObserver()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->inited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->registerObserver()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/intlgame/core/dns/NetworkStateReceiver;->SetNetworkStateInterface(Lcom/intlgame/core/dns/NetworkStateInterface;)V

    :goto_0
    return-void
.end method

.method public setCellularNetwork(Landroid/net/Network;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "[PGNA] setCellularNetwork cellular available"

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->cellularNetwork:Landroid/net/Network;

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/intlgame/pgna/AcceleratorPlugin;->onNetworkTypeChangeCallback(II)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "[PGNA] setCellularNetwork cellular lost"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->cellularNetwork:Landroid/net/Network;

    invoke-static {v0, v0}, Lcom/intlgame/pgna/AcceleratorPlugin;->onNetworkTypeChangeCallback(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setWifiNetwork(Landroid/net/Network;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "[PGNA] setWifiNetwork wifi available"

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->wifiNetwork:Landroid/net/Network;

    invoke-static {v0, v0}, Lcom/intlgame/pgna/AcceleratorPlugin;->onNetworkTypeChangeCallback(II)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "[PGNA] setWifiNetwork wifi lost"

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->wifiNetwork:Landroid/net/Network;

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/intlgame/pgna/AcceleratorPlugin;->onNetworkTypeChangeCallback(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterObserver()V
    .locals 2

    const-string v0, "[PGNA] ready to unregisterObserver"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->cellularNetworkCallback:Lcom/intlgame/pgna/network/AcceleratorCellularNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v1, p0, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->wifiNetworkCallback:Lcom/intlgame/pgna/network/AcceleratorWifiNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method
