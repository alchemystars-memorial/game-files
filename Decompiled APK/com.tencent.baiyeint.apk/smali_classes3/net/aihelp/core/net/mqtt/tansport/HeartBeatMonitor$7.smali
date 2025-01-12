.class Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$7;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "HeartBeatMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$7;->this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$7;->this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    iget-short v1, v0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->session:S

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->access$100(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;S)V

    return-void
.end method
