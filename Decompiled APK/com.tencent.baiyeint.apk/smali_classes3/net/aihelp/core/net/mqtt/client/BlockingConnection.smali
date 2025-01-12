.class public Lnet/aihelp/core/net/mqtt/client/BlockingConnection;
.super Ljava/lang/Object;
.source "BlockingConnection.java"


# instance fields
.field private final next:Lnet/aihelp/core/net/mqtt/client/FutureConnection;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->next:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/client/BlockingConnection;)Lnet/aihelp/core/net/mqtt/client/FutureConnection;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->next:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    return-object p0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->next:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->connect()Lnet/aihelp/core/net/mqtt/client/Future;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/client/Future;->await()Ljava/lang/Object;

    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->next:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->disconnect()Lnet/aihelp/core/net/mqtt/client/Future;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/client/Future;->await()Ljava/lang/Object;

    return-void
.end method

.method public getReceiveBuffer()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->next:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v2

    new-instance v3, Lnet/aihelp/core/net/mqtt/client/BlockingConnection$3;

    invoke-direct {v3, p0, v1, v0}, Lnet/aihelp/core/net/mqtt/client/BlockingConnection$3;-><init>(Lnet/aihelp/core/net/mqtt/client/BlockingConnection;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->next:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->isConnected()Z

    move-result v0

    return v0
.end method

.method public kill()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->next:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->kill()Lnet/aihelp/core/net/mqtt/client/Future;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/client/Future;->await()Ljava/lang/Object;

    return-void
.end method

.method public publish(Ljava/lang/String;[BLnet/aihelp/core/net/mqtt/client/QoS;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->utf8(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-direct {v0, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([B)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->publish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/QoS;Z)V

    return-void
.end method

.method public publish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/QoS;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->next:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->publish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/QoS;Z)Lnet/aihelp/core/net/mqtt/client/Future;

    move-result-object p1

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/client/Future;->await()Ljava/lang/Object;

    return-void
.end method

.method public receive()Lnet/aihelp/core/net/mqtt/client/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->next:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receive()Lnet/aihelp/core/net/mqtt/client/Future;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/client/Future;->await()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/net/mqtt/client/Message;

    return-object v0
.end method

.method public receive(JLjava/util/concurrent/TimeUnit;)Lnet/aihelp/core/net/mqtt/client/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->next:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receive()Lnet/aihelp/core/net/mqtt/client/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lnet/aihelp/core/net/mqtt/client/Future;->await(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/net/mqtt/client/Message;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p1, Lnet/aihelp/core/net/mqtt/client/Message;->blocking:Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    new-instance p1, Lnet/aihelp/core/net/mqtt/client/BlockingConnection$1;

    invoke-direct {p1, p0}, Lnet/aihelp/core/net/mqtt/client/BlockingConnection$1;-><init>(Lnet/aihelp/core/net/mqtt/client/BlockingConnection;)V

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/client/Future;->then(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->next:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->resume()V

    return-void
.end method

.method public setReceiveBuffer(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->next:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v1

    new-instance v2, Lnet/aihelp/core/net/mqtt/client/BlockingConnection$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lnet/aihelp/core/net/mqtt/client/BlockingConnection$2;-><init>(Lnet/aihelp/core/net/mqtt/client/BlockingConnection;JLjava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method public subscribe([Lnet/aihelp/core/net/mqtt/client/Topic;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->next:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->subscribe([Lnet/aihelp/core/net/mqtt/client/Topic;)Lnet/aihelp/core/net/mqtt/client/Future;

    move-result-object p1

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/client/Future;->await()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public suspend()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->next:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->suspend()V

    return-void
.end method

.method public unsubscribe([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->next:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->unsubscribe([Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/client/Future;

    move-result-object p1

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/client/Future;->await()Ljava/lang/Object;

    return-void
.end method

.method public unsubscribe([Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;->next:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->unsubscribe([Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/client/Future;

    move-result-object p1

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/client/Future;->await()Ljava/lang/Object;

    return-void
.end method
