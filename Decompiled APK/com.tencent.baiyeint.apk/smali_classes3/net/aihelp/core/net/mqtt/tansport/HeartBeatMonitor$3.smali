.class Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$3;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "HeartBeatMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->scheduleCheckWrites(S)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

.field final synthetic val$codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

.field final synthetic val$lastWriteCounter:J

.field final synthetic val$session:S


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;JLnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;S)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    iput-wide p2, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$3;->val$lastWriteCounter:J

    iput-object p4, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$3;->val$codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    iput-short p5, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$3;->val$session:S

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$3;->val$lastWriteCounter:J

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$3;->val$codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v2}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->getWriteCounter()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->onKeepAlive:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    iget-short v1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$3;->val$session:S

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->access$000(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;S)V

    return-void
.end method
