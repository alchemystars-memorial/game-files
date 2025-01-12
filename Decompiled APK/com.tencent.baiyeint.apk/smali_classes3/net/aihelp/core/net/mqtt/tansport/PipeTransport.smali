.class public Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;
.super Ljava/lang/Object;
.source "PipeTransport.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/tansport/Transport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$OneWay;
    }
.end annotation


# static fields
.field private static final EOF_TOKEN:Ljava/lang/Object;


# instance fields
.field private connected:Z

.field private dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

.field private dispatchSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource<",
            "Ljava/lang/Object;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

.field private marshal:Z

.field maxOutbound:I

.field private name:Ljava/lang/String;

.field outbound:I

.field peer:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

.field private protocolCodec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

.field private readCounter:J

.field private remoteAddress:Ljava/net/SocketAddress;

.field private final server:Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;

.field private stopping:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private trace:Z

.field private writeCounter:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->EOF_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->stopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->writeCounter:J

    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->readCounter:J

    const/4 v0, 0x0

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->outbound:I

    const/16 v0, 0x64

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->maxOutbound:I

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->server:Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->dispatchSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    return-object p0
.end method

.method static synthetic access$002(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->dispatchSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    return-object p1
.end method

.method static synthetic access$100(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->EOF_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$308(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)J
    .locals 4

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->readCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->readCounter:J

    return-wide v0
.end method

.method static synthetic access$400(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)Lnet/aihelp/core/net/mqtt/tansport/TransportListener;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    return-object p0
.end method

.method static synthetic access$500(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->fireConnected()V

    return-void
.end method

.method static synthetic access$602(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;Z)Z
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->connected:Z

    return p1
.end method

.method private fireConnected()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$2;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$2;-><init>(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method private transmit(Ljava/lang/Object;)V
    .locals 4

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->writeCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->writeCounter:J

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->outbound:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->outbound:I

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->peer:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->dispatchSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->merge(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public drainInbound()V
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->full()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/TransportListener;->onRefill()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/TransportListener;->onRefill()V

    return-void
.end method

.method public full()Z
    .locals 2

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->outbound:I

    iget v1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->maxOutbound:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBlockingExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getProtocolCodec()Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->protocolCodec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    return-object v0
.end method

.method public getReadChannel()Ljava/nio/channels/ReadableByteChannel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadCounter()J
    .locals 2

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->readCounter:J

    return-wide v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getTransportListener()Lnet/aihelp/core/net/mqtt/tansport/TransportListener;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    return-object v0
.end method

.method public getWriteChannel()Ljava/nio/channels/WritableByteChannel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWriteCounter()J
    .locals 2

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->writeCounter:J

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->stopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isMarshal()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->marshal:Z

    return v0
.end method

.method public isTrace()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->trace:Z

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->connected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->full()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->transmit(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public resumeRead()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->dispatchSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->resume()V

    return-void
.end method

.method public setBlockingExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    return-void
.end method

.method public setDispatchQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    return-void
.end method

.method public setMarshal(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->marshal:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->name:Ljava/lang/String;

    return-void
.end method

.method public setProtocolCodec(Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->protocolCodec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    return-void
.end method

.method public setRemoteAddress(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$3;

    invoke-direct {v0, p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$3;-><init>(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->remoteAddress:Ljava/net/SocketAddress;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTrace(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->trace:Z

    return-void
.end method

.method public setTransportListener(Lnet/aihelp/core/net/mqtt/tansport/TransportListener;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    return-void
.end method

.method public start(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->server:Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransportServer;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$1;-><init>(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dispatchQueue is not set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stop(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->connected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->peer:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->dispatchSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    sget-object v1, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->EOF_TOKEN:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->merge(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->dispatchSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->setCancelHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->dispatchSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->cancel()V

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->setDispatchQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    return-void
.end method

.method public suspendRead()V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->dispatchSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->suspend()V

    return-void
.end method
