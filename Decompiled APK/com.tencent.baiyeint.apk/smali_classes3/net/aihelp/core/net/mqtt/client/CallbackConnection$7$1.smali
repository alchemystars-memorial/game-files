.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "CallbackConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;

.field final synthetic val$now:J

.field final synthetic val$suspends:J


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;JJ)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;

    iput-wide p2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7$1;->val$now:J

    iput-wide p4, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7$1;->val$suspends:J

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7$1;->val$now:J

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$2000(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7$1;->val$suspends:J

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$2200(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$2300(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v0

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "The connection has remained suspended for an extended period of time so it cannot do proper keep alive processing.  Did you forget to resume the connection?"

    invoke-virtual {v0, v2, v1}, Lnet/aihelp/core/net/mqtt/client/Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;

    move-result-object v0

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Ping timeout"

    invoke-virtual {v0, v2, v1}, Lnet/aihelp/core/net/mqtt/client/Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    new-instance v1, Ljava/net/ProtocolException;

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/ProtocolException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->handleSessionFailure(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
