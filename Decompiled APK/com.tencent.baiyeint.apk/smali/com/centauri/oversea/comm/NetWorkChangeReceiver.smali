.class public Lcom/centauri/oversea/comm/NetWorkChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/centauri/oversea/comm/NetWorkChangeReceiver;->a:J

    return-void
.end method

.method public static a()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/centauri/oversea/comm/NetWorkChangeReceiver$a;

    invoke-direct {v1}, Lcom/centauri/oversea/comm/NetWorkChangeReceiver$a;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "noConnectivity"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/centauri/oversea/comm/NetWorkChangeReceiver;->a:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iput-wide p1, p0, Lcom/centauri/oversea/comm/NetWorkChangeReceiver;->a:J

    :cond_0
    invoke-static {}, Lcom/centauri/oversea/comm/NetWorkChangeReceiver;->a()V

    :cond_1
    return-void
.end method
