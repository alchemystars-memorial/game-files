.class public Lcom/dmm/games/android/volley/CacheDispatcher;
.super Ljava/lang/Thread;
.source "CacheDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/games/android/volley/CacheDispatcher$WaitingRequestManager;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCache:Lcom/dmm/games/android/volley/Cache;

.field private final mCacheQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/dmm/games/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/dmm/games/android/volley/ResponseDelivery;

.field private final mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/dmm/games/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z

.field private final mWaitingRequestManager:Lcom/dmm/games/android/volley/CacheDispatcher$WaitingRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dmm/games/android/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/dmm/games/android/volley/CacheDispatcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/dmm/games/android/volley/Cache;Lcom/dmm/games/android/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/dmm/games/android/volley/Request<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/dmm/games/android/volley/Request<",
            "*>;>;",
            "Lcom/dmm/games/android/volley/Cache;",
            "Lcom/dmm/games/android/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mQuit:Z

    iput-object p1, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mCache:Lcom/dmm/games/android/volley/Cache;

    iput-object p4, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mDelivery:Lcom/dmm/games/android/volley/ResponseDelivery;

    new-instance p1, Lcom/dmm/games/android/volley/CacheDispatcher$WaitingRequestManager;

    invoke-direct {p1, p0}, Lcom/dmm/games/android/volley/CacheDispatcher$WaitingRequestManager;-><init>(Lcom/dmm/games/android/volley/CacheDispatcher;)V

    iput-object p1, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/dmm/games/android/volley/CacheDispatcher$WaitingRequestManager;

    return-void
.end method

.method static synthetic access$100(Lcom/dmm/games/android/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dmm/games/android/volley/CacheDispatcher;)Lcom/dmm/games/android/volley/ResponseDelivery;
    .locals 0

    iget-object p0, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mDelivery:Lcom/dmm/games/android/volley/ResponseDelivery;

    return-object p0
.end method

.method private processRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dmm/games/android/volley/Request;

    invoke-virtual {p0, v0}, Lcom/dmm/games/android/volley/CacheDispatcher;->processRequest(Lcom/dmm/games/android/volley/Request;)V

    return-void
.end method


# virtual methods
.method processRequest(Lcom/dmm/games/android/volley/Request;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "cache-queue-take"

    invoke-virtual {p1, v0}, Lcom/dmm/games/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dmm/games/android/volley/Request;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cache-discard-canceled"

    invoke-virtual {p1, v0}, Lcom/dmm/games/android/volley/Request;->finish(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mCache:Lcom/dmm/games/android/volley/Cache;

    invoke-virtual {p1}, Lcom/dmm/games/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dmm/games/android/volley/Cache;->get(Ljava/lang/String;)Lcom/dmm/games/android/volley/Cache$Entry;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "cache-miss"

    invoke-virtual {p1, v0}, Lcom/dmm/games/android/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/dmm/games/android/volley/CacheDispatcher$WaitingRequestManager;

    invoke-static {v0, p1}, Lcom/dmm/games/android/volley/CacheDispatcher$WaitingRequestManager;->access$000(Lcom/dmm/games/android/volley/CacheDispatcher$WaitingRequestManager;Lcom/dmm/games/android/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/dmm/games/android/volley/Cache$Entry;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "cache-hit-expired"

    invoke-virtual {p1, v1}, Lcom/dmm/games/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/dmm/games/android/volley/Request;->setCacheEntry(Lcom/dmm/games/android/volley/Cache$Entry;)Lcom/dmm/games/android/volley/Request;

    iget-object v0, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/dmm/games/android/volley/CacheDispatcher$WaitingRequestManager;

    invoke-static {v0, p1}, Lcom/dmm/games/android/volley/CacheDispatcher$WaitingRequestManager;->access$000(Lcom/dmm/games/android/volley/CacheDispatcher$WaitingRequestManager;Lcom/dmm/games/android/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    const-string v1, "cache-hit"

    invoke-virtual {p1, v1}, Lcom/dmm/games/android/volley/Request;->addMarker(Ljava/lang/String;)V

    new-instance v1, Lcom/dmm/games/android/volley/NetworkResponse;

    iget-object v2, v0, Lcom/dmm/games/android/volley/Cache$Entry;->data:[B

    iget-object v3, v0, Lcom/dmm/games/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lcom/dmm/games/android/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    invoke-virtual {p1, v1}, Lcom/dmm/games/android/volley/Request;->parseNetworkResponse(Lcom/dmm/games/android/volley/NetworkResponse;)Lcom/dmm/games/android/volley/Response;

    move-result-object v1

    const-string v2, "cache-hit-parsed"

    invoke-virtual {p1, v2}, Lcom/dmm/games/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dmm/games/android/volley/Cache$Entry;->refreshNeeded()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mDelivery:Lcom/dmm/games/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, v1}, Lcom/dmm/games/android/volley/ResponseDelivery;->postResponse(Lcom/dmm/games/android/volley/Request;Lcom/dmm/games/android/volley/Response;)V

    goto :goto_0

    :cond_5
    const-string v2, "cache-hit-refresh-needed"

    invoke-virtual {p1, v2}, Lcom/dmm/games/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/dmm/games/android/volley/Request;->setCacheEntry(Lcom/dmm/games/android/volley/Cache$Entry;)Lcom/dmm/games/android/volley/Request;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/dmm/games/android/volley/Response;->intermediate:Z

    iget-object v0, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/dmm/games/android/volley/CacheDispatcher$WaitingRequestManager;

    invoke-static {v0, p1}, Lcom/dmm/games/android/volley/CacheDispatcher$WaitingRequestManager;->access$000(Lcom/dmm/games/android/volley/CacheDispatcher$WaitingRequestManager;Lcom/dmm/games/android/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mDelivery:Lcom/dmm/games/android/volley/ResponseDelivery;

    new-instance v2, Lcom/dmm/games/android/volley/CacheDispatcher$1;

    invoke-direct {v2, p0, p1}, Lcom/dmm/games/android/volley/CacheDispatcher$1;-><init>(Lcom/dmm/games/android/volley/CacheDispatcher;Lcom/dmm/games/android/volley/Request;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/dmm/games/android/volley/ResponseDelivery;->postResponse(Lcom/dmm/games/android/volley/Request;Lcom/dmm/games/android/volley/Response;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mDelivery:Lcom/dmm/games/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, v1}, Lcom/dmm/games/android/volley/ResponseDelivery;->postResponse(Lcom/dmm/games/android/volley/Request;Lcom/dmm/games/android/volley/Response;)V

    :goto_0
    return-void
.end method

.method public quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mQuit:Z

    invoke-virtual {p0}, Lcom/dmm/games/android/volley/CacheDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 2

    sget-boolean v0, Lcom/dmm/games/android/volley/CacheDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "start new dispatcher"

    invoke-static {v1, v0}, Lcom/dmm/games/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mCache:Lcom/dmm/games/android/volley/Cache;

    invoke-interface {v0}, Lcom/dmm/games/android/volley/Cache;->initialize()V

    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/dmm/games/android/volley/CacheDispatcher;->processRequest()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/dmm/games/android/volley/CacheDispatcher;->mQuit:Z

    if-eqz v0, :cond_1

    return-void
.end method
