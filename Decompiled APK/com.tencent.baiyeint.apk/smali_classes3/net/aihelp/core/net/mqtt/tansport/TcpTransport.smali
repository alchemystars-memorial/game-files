.class public Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;
.super Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;
.source "TcpTransport.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/tansport/Transport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$OneWay;,
        Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$RateLimitingChannel;,
        Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELED;,
        Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CANCELING;,
        Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;,
        Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTING;,
        Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$DISCONNECTED;,
        Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;
    }
.end annotation


# static fields
.field public static final IPTOS_LOWCOST:I = 0x2

.field public static final IPTOS_LOWDELAY:I = 0x10

.field public static final IPTOS_RELIABILITY:I = 0x4

.field public static final IPTOS_THROUGHPUT:I = 0x8

.field static localhost:Ljava/net/InetAddress;


# instance fields
.field private final CANCEL_HANDLER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

.field protected blockingExecutor:Ljava/util/concurrent/Executor;

.field protected channel:Ljava/nio/channels/SocketChannel;

.field closeOnCancel:Z

.field protected codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

.field protected dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

.field protected drainOutboundSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field keepAlive:Z

.field protected listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

.field localAddress:Ljava/net/SocketAddress;

.field protected localLocation:Ljava/net/URI;

.field maxReadRate:I

.field maxWriteRate:I

.field protected rateLimitingChannel:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$RateLimitingChannel;

.field private readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

.field receiveBufferSize:I

.field rejectingOffers:Z

.field remoteAddress:Ljava/net/SocketAddress;

.field protected remoteLocation:Ljava/net/URI;

.field sendBufferSize:I

.field protected socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

.field trafficClass:I

.field protected useLocalHost:Z

.field writeResumedForCodecFlush:Z

.field private writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

.field protected yieldSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;-><init>()V

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$DISCONNECTED;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$DISCONNECTED;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->useLocalHost:Z

    const/high16 v1, 0x10000

    iput v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->receiveBufferSize:I

    iput v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->sendBufferSize:I

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->closeOnCancel:Z

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->keepAlive:Z

    const/16 v0, 0x8

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->trafficClass:I

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$1;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$1;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->CANCEL_HANDLER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->writeResumedForCodecFlush:Z

    return-void
.end method

.method private _resumeRead()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->resume()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$9;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$9;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    return-object p0
.end method

.method static synthetic access$102(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    return-object p1
.end method

.method static synthetic access$200(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    return-object p0
.end method

.method static synthetic access$300(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->dispose()V

    return-void
.end method

.method static synthetic access$400(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->_resumeRead()V

    return-void
.end method

.method static synthetic access$500(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->CANCEL_HANDLER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-object p0
.end method

.method static synthetic access$600(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->schedualRateAllowanceReset()V

    return-void
.end method

.method private assertConnected()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->onTransportFailure(Ljava/io/IOException;)V

    const/4 v0, 0x0

    return v0
.end method

.method private dispose()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->cancel()V

    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->cancel()V

    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    :cond_1
    return-void
.end method

.method public static declared-synchronized getLocalHost()Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const-class v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->localhost:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    sput-object v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->localhost:Ljava/net/InetAddress;

    :cond_0
    sget-object v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->localhost:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initRateLimitingChannel()V
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->maxReadRate:I

    if-nez v0, :cond_0

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->maxWriteRate:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->rateLimitingChannel:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$RateLimitingChannel;

    if-nez v0, :cond_1

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$RateLimitingChannel;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$RateLimitingChannel;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->rateLimitingChannel:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$RateLimitingChannel;

    :cond_1
    return-void
.end method

.method private schedualRateAllowanceReset()V
    .locals 5

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$8;

    invoke-direct {v2, p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$8;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    const-wide/16 v3, 0x1

    invoke-interface {v0, v3, v4, v1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->executeAfter(JLjava/util/concurrent/TimeUnit;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method private trace(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public _start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    const-class v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTING;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;->is(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->blockingExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$2;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    const-class v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;->is(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$3;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$3;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot be started.  socket state is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->trace(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    :cond_3
    throw v0
.end method

.method public _stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopping.. at state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;->onStop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public connected(Ljava/nio/channels/SocketChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->initializeChannel()V

    new-instance p1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;

    invoke-direct {p1, p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    return-void
.end method

.method public connecting(Ljava/net/URI;Ljava/net/URI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->initializeChannel()V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->remoteLocation:Ljava/net/URI;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->localLocation:Ljava/net/URI;

    new-instance p1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTING;

    invoke-direct {p1, p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTING;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    return-void
.end method

.method public drainInbound()V
    .locals 6

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->getServiceState()Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->getReadCounter()J

    move-result-wide v0

    :cond_1
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v2}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->getReadCounter()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v4}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->getReadBufferSize()I

    move-result v4

    shl-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v2}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->read()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    invoke-interface {v3, v2}, Lnet/aihelp/core/net/mqtt/tansport/TransportListener;->onTransportCommand(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Transport listener failure."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->onTransportFailure(Ljava/io/IOException;)V

    :goto_0
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->getServiceState()Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    move-result-object v2

    sget-object v3, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->STOPPED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    invoke-interface {v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->isSuspended()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->yieldSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->merge(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->onTransportFailure(Ljava/io/IOException;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public flush()V
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->getServiceState()Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    move-result-object v0

    sget-object v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->STARTED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    const-class v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;->is(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->flush()Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    move-result-object v0

    sget-object v1, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->EMPTY:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->transportFlush()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->writeResumedForCodecFlush:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->writeResumedForCodecFlush:Z

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->suspendWrite()V

    :cond_1
    iput-boolean v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->rejectingOffers:Z

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/TransportListener;->onRefill()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->writeResumedForCodecFlush:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->writeResumedForCodecFlush:Z

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->resumeWrite()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->onTransportFailure(Ljava/io/IOException;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public full()Z
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->full()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    const-class v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;->is(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->getServiceState()Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    move-result-object v0

    sget-object v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->STARTED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getBlockingExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->blockingExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->localAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getMaxReadRate()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->maxReadRate:I

    return v0
.end method

.method public getMaxWriteRate()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->maxWriteRate:I

    return v0
.end method

.method public getProtocolCodec()Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    return-object v0
.end method

.method public getReadChannel()Ljava/nio/channels/ReadableByteChannel;
    .locals 1

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->initRateLimitingChannel()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->rateLimitingChannel:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$RateLimitingChannel;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->receiveBufferSize:I

    return v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getSendBufferSize()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->sendBufferSize:I

    return v0
.end method

.method public getSocketChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public getTrafficClass()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->trafficClass:I

    return v0
.end method

.method public getTransportListener()Lnet/aihelp/core/net/mqtt/tansport/TransportListener;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    return-object v0
.end method

.method public getWriteChannel()Ljava/nio/channels/WritableByteChannel;
    .locals 1

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->initRateLimitingChannel()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->rateLimitingChannel:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$RateLimitingChannel;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method protected initializeChannel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    invoke-virtual {v0, v2, v1}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    iget v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->trafficClass:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTrafficClass(I)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    iget-boolean v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->keepAlive:Z

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    iget v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->receiveBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    iget v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->sendBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->initializeCodec()V

    :cond_0
    return-void
.end method

.method protected initializeCodec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v0, p0}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->setTransport(Lnet/aihelp/core/net/mqtt/tansport/Transport;)V

    return-void
.end method

.method public isCloseOnCancel()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->closeOnCancel:Z

    return v0
.end method

.method public isClosed()Z
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->getServiceState()Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    move-result-object v0

    sget-object v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->STOPPED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;

    const-class v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$CONNECTED;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;->is(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isKeepAlive()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->keepAlive:Z

    return v0
.end method

.method public isUseLocalHost()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->useLocalHost:Z

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->full()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v2, p1}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->write(Ljava/lang/Object;)Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    move-result-object p1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v2}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->full()Z

    move-result v2

    iput-boolean v2, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->rejectingOffers:Z

    sget-object v2, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$10;->$SwitchMap$net$aihelp$core$net$mqtt$tansport$ProtocolCodec$BufferState:[I

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->drainOutboundSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->merge(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return v1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->onTransportFailure(Ljava/io/IOException;)V

    :goto_0
    return v0
.end method

.method protected onConnected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators;->INTEGER_ADD:Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->createSource(Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->yieldSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$4;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$4;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->yieldSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->resume()V

    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators;->INTEGER_ADD:Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->createSource(Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->drainOutboundSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$5;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$5;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->drainOutboundSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->resume()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->createSource(Ljava/nio/channels/SelectableChannel;ILnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->createSource(Ljava/nio/channels/SelectableChannel;ILnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->CANCEL_HANDLER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setCancelHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->CANCEL_HANDLER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setCancelHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$6;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$6;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$7;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$7;-><init>(Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->initRateLimitingChannel()V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->rateLimitingChannel:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$RateLimitingChannel;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->schedualRateAllowanceReset()V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/TransportListener;->onTransportConnected()V

    return-void
.end method

.method public onTransportFailure(Ljava/io/IOException;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/TransportListener;->onTransportFailure(Ljava/io/IOException;)V

    return-void
.end method

.method protected resolveHostName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->isUseLocalHost()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "localhost"

    :cond_0
    return-object p1
.end method

.method public resumeRead()V
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->rateLimitingChannel:Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$RateLimitingChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$RateLimitingChannel;->resumeRead()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->_resumeRead()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected resumeWrite()V
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->resume()V

    :cond_0
    return-void
.end method

.method public setBlockingExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->blockingExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public setCloseOnCancel(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->closeOnCancel:Z

    return-void
.end method

.method public setDispatchQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->drainOutboundSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->yieldSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    :cond_3
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->keepAlive:Z

    return-void
.end method

.method public setMaxReadRate(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->maxReadRate:I

    return-void
.end method

.method public setMaxWriteRate(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->maxWriteRate:I

    return-void
.end method

.method public setProtocolCodec(Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->initializeCodec()V

    :cond_0
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 1

    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->receiveBufferSize:I

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 1

    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->sendBufferSize:I

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->channel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->trafficClass:I

    return-void
.end method

.method public setTransportListener(Lnet/aihelp/core/net/mqtt/tansport/TransportListener;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    return-void
.end method

.method public setUseLocalHost(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->useLocalHost:Z

    return-void
.end method

.method public suspendRead()V
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->suspend()V

    :cond_0
    return-void
.end method

.method protected suspendWrite()V
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->suspend()V

    :cond_0
    return-void
.end method

.method protected transportFlush()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
