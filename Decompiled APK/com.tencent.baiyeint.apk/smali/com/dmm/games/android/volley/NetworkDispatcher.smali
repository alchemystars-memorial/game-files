.class public Lcom/dmm/games/android/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final mCache:Lcom/dmm/games/android/volley/Cache;

.field private final mDelivery:Lcom/dmm/games/android/volley/ResponseDelivery;

.field private final mNetwork:Lcom/dmm/games/android/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/dmm/games/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/dmm/games/android/volley/Network;Lcom/dmm/games/android/volley/Cache;Lcom/dmm/games/android/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/dmm/games/android/volley/Request<",
            "*>;>;",
            "Lcom/dmm/games/android/volley/Network;",
            "Lcom/dmm/games/android/volley/Cache;",
            "Lcom/dmm/games/android/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dmm/games/android/volley/NetworkDispatcher;->mQuit:Z

    iput-object p1, p0, Lcom/dmm/games/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/dmm/games/android/volley/NetworkDispatcher;->mNetwork:Lcom/dmm/games/android/volley/Network;

    iput-object p3, p0, Lcom/dmm/games/android/volley/NetworkDispatcher;->mCache:Lcom/dmm/games/android/volley/Cache;

    iput-object p4, p0, Lcom/dmm/games/android/volley/NetworkDispatcher;->mDelivery:Lcom/dmm/games/android/volley/ResponseDelivery;

    return-void
.end method

.method private addTrafficStatsTag(Lcom/dmm/games/android/volley/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/dmm/games/android/volley/Request;->getTrafficStatsTag()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    return-void
.end method

.method private parseAndDeliverNetworkError(Lcom/dmm/games/android/volley/Request;Lcom/dmm/games/android/volley/VolleyError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/android/volley/Request<",
            "*>;",
            "Lcom/dmm/games/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/dmm/games/android/volley/Request;->parseNetworkError(Lcom/dmm/games/android/volley/VolleyError;)Lcom/dmm/games/android/volley/VolleyError;

    move-result-object p2

    iget-object v0, p0, Lcom/dmm/games/android/volley/NetworkDispatcher;->mDelivery:Lcom/dmm/games/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lcom/dmm/games/android/volley/ResponseDelivery;->postError(Lcom/dmm/games/android/volley/Request;Lcom/dmm/games/android/volley/VolleyError;)V

    return-void
.end method

.method private processRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/games/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dmm/games/android/volley/Request;

    invoke-virtual {p0, v0}, Lcom/dmm/games/android/volley/NetworkDispatcher;->processRequest(Lcom/dmm/games/android/volley/Request;)V

    return-void
.end method


# virtual methods
.method processRequest(Lcom/dmm/games/android/volley/Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_0
    const-string v2, "network-queue-take"

    invoke-virtual {p1, v2}, Lcom/dmm/games/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dmm/games/android/volley/Request;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "network-discard-cancelled"

    invoke-virtual {p1, v2}, Lcom/dmm/games/android/volley/Request;->finish(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dmm/games/android/volley/Request;->notifyListenerResponseNotUsable()V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/dmm/games/android/volley/NetworkDispatcher;->addTrafficStatsTag(Lcom/dmm/games/android/volley/Request;)V

    iget-object v2, p0, Lcom/dmm/games/android/volley/NetworkDispatcher;->mNetwork:Lcom/dmm/games/android/volley/Network;

    invoke-interface {v2, p1}, Lcom/dmm/games/android/volley/Network;->performRequest(Lcom/dmm/games/android/volley/Request;)Lcom/dmm/games/android/volley/NetworkResponse;

    move-result-object v2

    const-string v3, "network-http-complete"

    invoke-virtual {p1, v3}, Lcom/dmm/games/android/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/dmm/games/android/volley/NetworkResponse;->notModified:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/dmm/games/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "not-modified"

    invoke-virtual {p1, v2}, Lcom/dmm/games/android/volley/Request;->finish(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dmm/games/android/volley/Request;->notifyListenerResponseNotUsable()V

    return-void

    :cond_1
    invoke-virtual {p1, v2}, Lcom/dmm/games/android/volley/Request;->parseNetworkResponse(Lcom/dmm/games/android/volley/NetworkResponse;)Lcom/dmm/games/android/volley/Response;

    move-result-object v2

    const-string v3, "network-parse-complete"

    invoke-virtual {p1, v3}, Lcom/dmm/games/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dmm/games/android/volley/Request;->shouldCache()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/dmm/games/android/volley/Response;->cacheEntry:Lcom/dmm/games/android/volley/Cache$Entry;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/dmm/games/android/volley/NetworkDispatcher;->mCache:Lcom/dmm/games/android/volley/Cache;

    invoke-virtual {p1}, Lcom/dmm/games/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/dmm/games/android/volley/Response;->cacheEntry:Lcom/dmm/games/android/volley/Cache$Entry;

    invoke-interface {v3, v4, v5}, Lcom/dmm/games/android/volley/Cache;->put(Ljava/lang/String;Lcom/dmm/games/android/volley/Cache$Entry;)V

    const-string v3, "network-cache-written"

    invoke-virtual {p1, v3}, Lcom/dmm/games/android/volley/Request;->addMarker(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/dmm/games/android/volley/Request;->markDelivered()V

    iget-object v3, p0, Lcom/dmm/games/android/volley/NetworkDispatcher;->mDelivery:Lcom/dmm/games/android/volley/ResponseDelivery;

    invoke-interface {v3, p1, v2}, Lcom/dmm/games/android/volley/ResponseDelivery;->postResponse(Lcom/dmm/games/android/volley/Request;Lcom/dmm/games/android/volley/Response;)V

    invoke-virtual {p1, v2}, Lcom/dmm/games/android/volley/Request;->notifyListenerResponseReceived(Lcom/dmm/games/android/volley/Response;)V
    :try_end_0
    .catch Lcom/dmm/games/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Unhandled exception %s"

    invoke-static {v2, v4, v3}, Lcom/dmm/games/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/dmm/games/android/volley/VolleyError;

    invoke-direct {v3, v2}, Lcom/dmm/games/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/dmm/games/android/volley/VolleyError;->setNetworkTimeMs(J)V

    iget-object v0, p0, Lcom/dmm/games/android/volley/NetworkDispatcher;->mDelivery:Lcom/dmm/games/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, v3}, Lcom/dmm/games/android/volley/ResponseDelivery;->postError(Lcom/dmm/games/android/volley/Request;Lcom/dmm/games/android/volley/VolleyError;)V

    invoke-virtual {p1}, Lcom/dmm/games/android/volley/Request;->notifyListenerResponseNotUsable()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/dmm/games/android/volley/VolleyError;->setNetworkTimeMs(J)V

    invoke-direct {p0, p1, v2}, Lcom/dmm/games/android/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/dmm/games/android/volley/Request;Lcom/dmm/games/android/volley/VolleyError;)V

    invoke-virtual {p1}, Lcom/dmm/games/android/volley/Request;->notifyListenerResponseNotUsable()V

    :goto_0
    return-void
.end method

.method public quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dmm/games/android/volley/NetworkDispatcher;->mQuit:Z

    invoke-virtual {p0}, Lcom/dmm/games/android/volley/NetworkDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/dmm/games/android/volley/NetworkDispatcher;->processRequest()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/dmm/games/android/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v0, :cond_0

    return-void
.end method
