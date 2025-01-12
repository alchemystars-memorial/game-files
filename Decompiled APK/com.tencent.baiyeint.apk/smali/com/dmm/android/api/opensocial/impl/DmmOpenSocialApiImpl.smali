.class public abstract Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;
.super Ljava/lang/Object;
.source "DmmOpenSocialApiImpl.java"

# interfaces
.implements Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;
    }
.end annotation


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mCallback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

.field protected mGuid:Ljava/lang/String;

.field protected mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMethod:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

.field protected final mParameter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRequest:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

.field protected mSelector:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field protected mType:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;->Get:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    iput-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mMethod:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    sget-object v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$RequestType;->Batch:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$RequestType;

    iput-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mType:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$RequestType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mIds:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mParameter:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;)Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mRequest:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;)Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mRequest:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    return-object p1
.end method

.method static synthetic access$500(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method private buildUrl()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->getInstance()Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->buildUrl(Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;

    sget-object v1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;->Uninitialized:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    const-string v2, "Api endpoint is not initialized."

    invoke-direct {v0, v2, v1}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;-><init>(Ljava/lang/String;Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;)V

    throw v0
.end method

.method private declared-synchronized connectAsync(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mRequest:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->getInstance()Lcom/dmm/games/android/volley/RequestQueue;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->buildUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->createJson()Lorg/json/JSONObject;

    move-result-object v5

    sget-object v0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->sHandler:Landroid/os/Handler;

    new-instance v7, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;-><init>(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;Ljava/lang/String;Lorg/json/JSONObject;Lcom/dmm/games/android/volley/RequestQueue;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;

    const-string v0, "Uninitialized Request Queue"

    sget-object v1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;->Uninitialized:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    invoke-direct {p1, v0, v1}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;-><init>(Ljava/lang/String;Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Request now executing in this instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private createJson()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mParameter:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mParameter:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public addParameter(Lcom/dmm/android/api/opensocial/DmmParameterHelper;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mParameter:Ljava/util/Map;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/dmm/android/api/opensocial/DmmParameterHelper;->getParameterMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->addParameter(Ljava/util/Map;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mParameter:Ljava/util/Map;

    monitor-enter v0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mParameter:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mParameter:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mParameter:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addParameter(Ljava/util/Map;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 4

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mParameter:Ljava/util/Map;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addParameter(Lorg/json/JSONObject;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mParameter:Ljava/util/Map;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/dmm/android/util/Util;->convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->addParameter(Ljava/util/Map;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract buildUrl(Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;)Ljava/lang/String;
.end method

.method public declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mRequest:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;->access$300(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;)Lcom/dmm/games/android/volley/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/games/android/volley/Request;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mRequest:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;->access$300(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;)Lcom/dmm/games/android/volley/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/games/android/volley/Request;->cancel()V

    sget-object v0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$3;

    invoke-direct {v1, p0}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$3;-><init>(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearParameter()Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mParameter:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mParameter:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized connectAsync()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mCallback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    invoke-direct {p0, v0}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->connectAsync(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connectSync()Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;
    .locals 5

    invoke-static {}, Lcom/dmm/android/util/Util;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;

    invoke-direct {v0}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;-><init>()V

    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    new-instance v2, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$1;-><init>(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;Ljava/util/concurrent/Semaphore;)V

    invoke-direct {p0, v2}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->connectAsync(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)V

    :goto_0
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method can not call from Main Thread..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCallback(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mCallback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    return-object p0
.end method

.method public setGuid(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;->get()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->setGuid(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public setGuid(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mGuid:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setId(Ljava/util/List;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public setId([Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setMethod(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mMethod:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    return-object p0
.end method

.method public setRequestType(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$RequestType;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mType:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$RequestType;

    return-object p0
.end method

.method public setSelector(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;->get()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->setSelector(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public setSelector(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mSelector:Ljava/lang/String;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mTag:Ljava/lang/String;

    return-object p0
.end method
