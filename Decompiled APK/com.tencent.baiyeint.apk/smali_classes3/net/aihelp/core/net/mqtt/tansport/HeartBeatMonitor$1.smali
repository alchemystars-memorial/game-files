.class Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "HeartBeatMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->schedule(SJLnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

.field final synthetic val$func:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

.field final synthetic val$session:S


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;SLnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    iput-short p2, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$1;->val$session:S

    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$1;->val$func:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    iget-short v1, v1, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->session:S

    iget-short v2, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$1;->val$session:S

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$1;->val$func:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
