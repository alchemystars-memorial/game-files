.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;
.super Ljava/lang/Object;
.source "CallbackConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnect(Lnet/aihelp/core/net/mqtt/client/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private executed:Z

.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

.field final synthetic val$onComplete:Lnet/aihelp/core/net/mqtt/client/Callback;

.field final synthetic val$requestId:S


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;SLnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    iput-short p2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;->val$requestId:S

    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;->val$onComplete:Lnet/aihelp/core/net/mqtt/client/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;->executed:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;->executed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;->executed:Z

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$300(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Ljava/util/Map;

    move-result-object v0

    iget-short v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;->val$requestId:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$2400(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$2400(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->stop()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$2402(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;)Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$2100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/tansport/Transport;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$2100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/tansport/Transport;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9$1;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9$1;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    :cond_1
    return-void
.end method
