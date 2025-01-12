.class public Lnet/aihelp/core/net/mqtt/client/FutureConnection;
.super Ljava/lang/Object;
.source "FutureConnection.java"


# instance fields
.field private volatile connected:Z

.field private final next:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

.field private receiveBuffer:J

.field private receiveBufferFull:Z

.field private receiveBufferRemaining:J

.field private final receiveFutures:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/aihelp/core/net/mqtt/client/Promise<",
            "Lnet/aihelp/core/net/mqtt/client/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private final receivedFrames:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/aihelp/core/net/mqtt/client/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveFutures:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receivedFrames:Ljava/util/LinkedList;

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveBuffer:J

    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveBufferRemaining:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveBufferFull:Z

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->next:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    new-instance v0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection$1;-><init>(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)V

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->listener(Lnet/aihelp/core/net/mqtt/client/Listener;)Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    return-void
.end method

.method static synthetic access$002(Lnet/aihelp/core/net/mqtt/client/FutureConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->connected:Z

    return p1
.end method

.method static synthetic access$100(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)J
    .locals 2

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveBufferRemaining:J

    return-wide v0
.end method

.method static synthetic access$102(Lnet/aihelp/core/net/mqtt/client/FutureConnection;J)J
    .locals 0

    iput-wide p1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveBufferRemaining:J

    return-wide p1
.end method

.method static synthetic access$200(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveBufferFull:Z

    return p0
.end method

.method static synthetic access$202(Lnet/aihelp/core/net/mqtt/client/FutureConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveBufferFull:Z

    return p1
.end method

.method static synthetic access$300(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveFutures:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$400(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)Lnet/aihelp/core/net/mqtt/client/CallbackConnection;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->next:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    return-object p0
.end method

.method static synthetic access$500(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receivedFrames:Ljava/util/LinkedList;

    return-object p0
.end method


# virtual methods
.method public connect()Lnet/aihelp/core/net/mqtt/client/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/aihelp/core/net/mqtt/client/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/client/Promise;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/client/Promise;-><init>()V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->next:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v1

    new-instance v2, Lnet/aihelp/core/net/mqtt/client/FutureConnection$2;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection$2;-><init>(Lnet/aihelp/core/net/mqtt/client/FutureConnection;Lnet/aihelp/core/net/mqtt/client/Promise;)V

    invoke-interface {v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-object v0
.end method

.method deliverMessage(Lnet/aihelp/core/net/mqtt/client/Message;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveFutures:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receivedFrames:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveFutures:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/net/mqtt/client/Promise;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/client/Promise;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public disconnect()Lnet/aihelp/core/net/mqtt/client/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/aihelp/core/net/mqtt/client/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/client/Promise;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/client/Promise;-><init>()V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->next:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v1

    new-instance v2, Lnet/aihelp/core/net/mqtt/client/FutureConnection$3;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection$3;-><init>(Lnet/aihelp/core/net/mqtt/client/FutureConnection;Lnet/aihelp/core/net/mqtt/client/Promise;)V

    invoke-interface {v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-object v0
.end method

.method public getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->next:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    return-object v0
.end method

.method public getReceiveBuffer()J
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->assertExecuting()V

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveBuffer:J

    return-wide v0
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->connected:Z

    return v0
.end method

.method public kill()Lnet/aihelp/core/net/mqtt/client/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/aihelp/core/net/mqtt/client/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/client/Promise;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/client/Promise;-><init>()V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->next:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v1

    new-instance v2, Lnet/aihelp/core/net/mqtt/client/FutureConnection$4;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection$4;-><init>(Lnet/aihelp/core/net/mqtt/client/FutureConnection;Lnet/aihelp/core/net/mqtt/client/Promise;)V

    invoke-interface {v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-object v0
.end method

.method public publish(Ljava/lang/String;[BLnet/aihelp/core/net/mqtt/client/QoS;Z)Lnet/aihelp/core/net/mqtt/client/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lnet/aihelp/core/net/mqtt/client/QoS;",
            "Z)",
            "Lnet/aihelp/core/net/mqtt/client/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->utf8(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-direct {v0, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([B)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->publish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/QoS;Z)Lnet/aihelp/core/net/mqtt/client/Future;

    move-result-object p1

    return-object p1
.end method

.method public publish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/QoS;Z)Lnet/aihelp/core/net/mqtt/client/Future;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;",
            "Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;",
            "Lnet/aihelp/core/net/mqtt/client/QoS;",
            "Z)",
            "Lnet/aihelp/core/net/mqtt/client/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v7, Lnet/aihelp/core/net/mqtt/client/Promise;

    invoke-direct {v7}, Lnet/aihelp/core/net/mqtt/client/Promise;-><init>()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->next:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v8

    new-instance v9, Lnet/aihelp/core/net/mqtt/client/FutureConnection$7;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lnet/aihelp/core/net/mqtt/client/FutureConnection$7;-><init>(Lnet/aihelp/core/net/mqtt/client/FutureConnection;Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/QoS;ZLnet/aihelp/core/net/mqtt/client/Promise;)V

    invoke-interface {v8, v9}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-object v7
.end method

.method putBackMessage(Lnet/aihelp/core/net/mqtt/client/Message;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveFutures:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receivedFrames:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveFutures:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/net/mqtt/client/Promise;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/client/Promise;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public receive()Lnet/aihelp/core/net/mqtt/client/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/aihelp/core/net/mqtt/client/Future<",
            "Lnet/aihelp/core/net/mqtt/client/Message;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/client/Promise;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/client/Promise;-><init>()V

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v1

    new-instance v2, Lnet/aihelp/core/net/mqtt/client/FutureConnection$8;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection$8;-><init>(Lnet/aihelp/core/net/mqtt/client/FutureConnection;Lnet/aihelp/core/net/mqtt/client/Promise;)V

    invoke-interface {v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-object v0
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->next:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->resume()V

    return-void
.end method

.method public setReceiveBuffer(J)V
    .locals 4

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveBuffer:J

    iput-wide p1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveBuffer:J

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveBufferRemaining:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveBufferRemaining:J

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveBufferFull:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveBufferFull:Z

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->suspend()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    cmp-long p1, p1, v1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receiveBufferFull:Z

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->resume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public subscribe([Lnet/aihelp/core/net/mqtt/client/Topic;)Lnet/aihelp/core/net/mqtt/client/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/aihelp/core/net/mqtt/client/Topic;",
            ")",
            "Lnet/aihelp/core/net/mqtt/client/Future<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/client/Promise;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/client/Promise;-><init>()V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->next:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v1

    new-instance v2, Lnet/aihelp/core/net/mqtt/client/FutureConnection$5;

    invoke-direct {v2, p0, p1, v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection$5;-><init>(Lnet/aihelp/core/net/mqtt/client/FutureConnection;[Lnet/aihelp/core/net/mqtt/client/Topic;Lnet/aihelp/core/net/mqtt/client/Promise;)V

    invoke-interface {v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-object v0
.end method

.method public suspend()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->next:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->suspend()V

    return-void
.end method

.method public unsubscribe([Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/client/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lnet/aihelp/core/net/mqtt/client/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    array-length v0, p1

    new-array v1, v0, [Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    aget-object v4, p1, v2

    invoke-direct {v3, v4}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->unsubscribe([Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/client/Future;

    move-result-object p1

    return-object p1
.end method

.method public unsubscribe([Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/client/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;",
            ")",
            "Lnet/aihelp/core/net/mqtt/client/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/client/Promise;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/client/Promise;-><init>()V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->next:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v1

    new-instance v2, Lnet/aihelp/core/net/mqtt/client/FutureConnection$6;

    invoke-direct {v2, p0, p1, v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection$6;-><init>(Lnet/aihelp/core/net/mqtt/client/FutureConnection;[Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/client/Promise;)V

    invoke-interface {v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-object v0
.end method
