.class public Lcom/intlgame/pgna/network/AcceleratorCellularNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "AcceleratorCellularNetworkCallback.java"


# instance fields
.field private monitor:Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;


# direct methods
.method public constructor <init>(Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    iput-object p1, p0, Lcom/intlgame/pgna/network/AcceleratorCellularNetworkCallback;->monitor:Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    iget-object v0, p0, Lcom/intlgame/pgna/network/AcceleratorCellularNetworkCallback;->monitor:Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;

    invoke-virtual {v0, p1}, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->setCellularNetwork(Landroid/net/Network;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    iget-object p1, p0, Lcom/intlgame/pgna/network/AcceleratorCellularNetworkCallback;->monitor:Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/intlgame/pgna/network/AcceleratorNetworkMonitor;->setCellularNetwork(Landroid/net/Network;)V

    return-void
.end method
