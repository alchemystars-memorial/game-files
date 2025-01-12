.class Lnet/aihelp/core/net/mqtt/client/BlockingConnection$3;
.super Ljava/lang/Object;
.source "BlockingConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->getReceiveBuffer()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/BlockingConnection;

.field final synthetic val$done:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/BlockingConnection;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection$3;->this$0:Lnet/aihelp/core/net/mqtt/client/BlockingConnection;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection$3;->val$result:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection$3;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection$3;->val$result:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection$3;->this$0:Lnet/aihelp/core/net/mqtt/client/BlockingConnection;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->access$000(Lnet/aihelp/core/net/mqtt/client/BlockingConnection;)Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->getReceiveBuffer()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection$3;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection$3;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
