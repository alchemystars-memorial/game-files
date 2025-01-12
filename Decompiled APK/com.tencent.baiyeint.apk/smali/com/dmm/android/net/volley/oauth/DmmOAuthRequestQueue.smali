.class public Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;
.super Ljava/lang/Object;
.source "DmmOAuthRequestQueue.java"


# static fields
.field private static sConsumer:Loauth/signpost/OAuthConsumer;

.field private static sInstance:Lcom/dmm/games/android/volley/RequestQueue;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearOAuthToken()V
    .locals 2

    sget-object v0, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->sConsumer:Loauth/signpost/OAuthConsumer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/dmm/games/android/volley/RequestQueue;
    .locals 2

    const-class v0, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->sInstance:Lcom/dmm/games/android/volley/RequestQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initializeInstance(Loauth/signpost/OAuthConsumer;Ljavax/net/ssl/SSLSocketFactory;Z)V
    .locals 2

    const-class v0, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->sInstance:Lcom/dmm/games/android/volley/RequestQueue;

    if-nez v1, :cond_0

    sput-object p0, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->sConsumer:Loauth/signpost/OAuthConsumer;

    new-instance v1, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;

    invoke-direct {v1, p0, p1, p2}, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;-><init>(Loauth/signpost/OAuthConsumer;Ljavax/net/ssl/SSLSocketFactory;Z)V

    new-instance p0, Lcom/dmm/games/android/volley/RequestQueue;

    new-instance p1, Lcom/dmm/games/android/volley/toolbox/NoCache;

    invoke-direct {p1}, Lcom/dmm/games/android/volley/toolbox/NoCache;-><init>()V

    new-instance p2, Lcom/dmm/games/android/volley/toolbox/BasicNetwork;

    invoke-direct {p2, v1}, Lcom/dmm/games/android/volley/toolbox/BasicNetwork;-><init>(Lcom/dmm/games/android/volley/toolbox/BaseHttpStack;)V

    invoke-direct {p0, p1, p2}, Lcom/dmm/games/android/volley/RequestQueue;-><init>(Lcom/dmm/games/android/volley/Cache;Lcom/dmm/games/android/volley/Network;)V

    sput-object p0, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->sInstance:Lcom/dmm/games/android/volley/RequestQueue;

    invoke-virtual {p0}, Lcom/dmm/games/android/volley/RequestQueue;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setOAuthToken()V
    .locals 3

    invoke-static {}, Lcom/dmm/android/oauth/DmmApiAuthToken;->getInstance()Lcom/dmm/android/oauth/DmmApiAuthToken;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->sConsumer:Loauth/signpost/OAuthConsumer;

    invoke-virtual {v0}, Lcom/dmm/android/oauth/DmmApiAuthToken;->getOAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dmm/android/oauth/DmmApiAuthToken;->getOAuthTokenSecret()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
