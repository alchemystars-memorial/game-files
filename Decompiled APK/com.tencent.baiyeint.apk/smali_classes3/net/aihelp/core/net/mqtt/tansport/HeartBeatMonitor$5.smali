.class Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$5;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "HeartBeatMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->scheduleCheckReads(S)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

.field final synthetic val$codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

.field final synthetic val$lastReadCounter:J

.field final synthetic val$session:S


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;JLnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;S)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$5;->this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    iput-wide p2, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$5;->val$lastReadCounter:J

    iput-object p4, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$5;->val$codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    iput-short p5, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$5;->val$session:S

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$5;->val$lastReadCounter:J

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$5;->val$codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v2}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->getReadCounter()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$5;->this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    iget-boolean v0, v0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->readSuspendedInterval:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$5;->this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    iget-short v0, v0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->readSuspendCount:S

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$5;->this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->onDead:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$5;->this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->readSuspendedInterval:Z

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$5;->this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    iget-short v1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$5;->val$session:S

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->access$100(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;S)V

    return-void
.end method
