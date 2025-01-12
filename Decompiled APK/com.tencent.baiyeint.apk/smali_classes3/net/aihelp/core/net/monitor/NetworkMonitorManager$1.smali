.class Lnet/aihelp/core/net/monitor/NetworkMonitorManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/monitor/NetworkMonitorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/monitor/NetworkMonitorManager;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/monitor/NetworkMonitorManager;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager$1;->this$0:Lnet/aihelp/core/net/monitor/NetworkMonitorManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager$1;->this$0:Lnet/aihelp/core/net/monitor/NetworkMonitorManager;

    invoke-static {v0}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->access$100(Lnet/aihelp/core/net/monitor/NetworkMonitorManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->access$200(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    sget-object p1, Lnet/aihelp/core/net/monitor/NetworkState;->CELLULAR:Lnet/aihelp/core/net/monitor/NetworkState;

    goto :goto_0

    :cond_1
    sget-object p1, Lnet/aihelp/core/net/monitor/NetworkState;->WIFI:Lnet/aihelp/core/net/monitor/NetworkState;

    goto :goto_0

    :cond_2
    sget-object p1, Lnet/aihelp/core/net/monitor/NetworkState;->NONE:Lnet/aihelp/core/net/monitor/NetworkState;

    :goto_0
    iget-object p2, p0, Lnet/aihelp/core/net/monitor/NetworkMonitorManager$1;->this$0:Lnet/aihelp/core/net/monitor/NetworkMonitorManager;

    invoke-static {p2, p1}, Lnet/aihelp/core/net/monitor/NetworkMonitorManager;->access$300(Lnet/aihelp/core/net/monitor/NetworkMonitorManager;Lnet/aihelp/core/net/monitor/NetworkState;)V

    :cond_3
    return-void
.end method
