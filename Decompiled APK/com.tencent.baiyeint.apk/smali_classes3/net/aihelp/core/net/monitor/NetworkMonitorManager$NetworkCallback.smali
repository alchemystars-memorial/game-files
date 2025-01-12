.class Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkMonitorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/monitor/NetworkMonitorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/monitor/NetworkMonitorManager;


# direct methods
.method private constructor <init>(Lnet/aihelp/core/net/monitor/NetworkMonitorManager;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;->this$0:Lnet/aihelp/core/net/monitor/NetworkMonitorManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/aihelp/core/net/monitor/NetworkMonitorManager;Lnet/aihelp/core/net/monitor/NetworkMonitorManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;-><init>(Lnet/aihelp/core/net/monitor/NetworkMonitorManager;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    iget-object p1, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;->this$0:Lnet/aihelp/core/net/monitor/NetworkMonitorManager;

    invoke-static {p1}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->access$400(Lnet/aihelp/core/net/monitor/NetworkMonitorManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->access$200(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sget-object p1, Lnet/aihelp/core/net/monitor/NetworkState;->CELLULAR:Lnet/aihelp/core/net/monitor/NetworkState;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/aihelp/core/net/monitor/NetworkState;->WIFI:Lnet/aihelp/core/net/monitor/NetworkState;

    goto :goto_0

    :cond_1
    sget-object p1, Lnet/aihelp/core/net/monitor/NetworkState;->NONE:Lnet/aihelp/core/net/monitor/NetworkState;

    :goto_0
    iget-object v0, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;->this$0:Lnet/aihelp/core/net/monitor/NetworkMonitorManager;

    invoke-static {v0, p1}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->access$300(Lnet/aihelp/core/net/monitor/NetworkMonitorManager;Lnet/aihelp/core/net/monitor/NetworkState;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    iget-object p1, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager$NetworkCallback;->this$0:Lnet/aihelp/core/net/monitor/NetworkMonitorManager;

    sget-object v0, Lnet/aihelp/core/net/monitor/NetworkState;->NONE:Lnet/aihelp/core/net/monitor/NetworkState;

    invoke-static {p1, v0}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->access$300(Lnet/aihelp/core/net/monitor/NetworkMonitorManager;Lnet/aihelp/core/net/monitor/NetworkState;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 0

    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    return-void
.end method
