.class public Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;
.super Ljava/lang/Object;
.source "DmmGameStoreConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;,
        Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Values;,
        Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Keys;,
        Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;
    }
.end annotation


# static fields
.field private static final Endpoint:Ljava/lang/String; = "https://api-gamestore.dmm.co.jp/mobile/config.env"


# instance fields
.field private mCallback:Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;

.field private mEmulator:Z

.field private mSandbox:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->mSandbox:Z

    iput-boolean p2, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->mEmulator:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;)Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->mCallback:Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;)Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->mCallback:Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;

    return-object p1
.end method

.method private buildEndpoint()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->mSandbox:Z

    const-string v1, "https://api-gamestore.dmm.co.jp/mobile/config.env"

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->mEmulator:Z

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->mSandbox:Z

    const/16 v2, 0x3d

    if-eqz v1, :cond_1

    const-string v1, "environment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "sandbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->mEmulator:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->mEmulator:Z

    if-eqz v1, :cond_2

    const-string v1, "device"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "emulator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->getInstance()Lcom/dmm/games/android/volley/RequestQueue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/games/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->mCallback:Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->mCallback:Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;->onCancel(Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    new-instance v0, Lcom/dmm/android/api/error/DmmApiRuntimeException;

    const-string v1, "Uninitialized Request Queue"

    invoke-direct {v0, v1}, Lcom/dmm/android/api/error/DmmApiRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectAsync()V
    .locals 8

    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->getInstance()Lcom/dmm/games/android/volley/RequestQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v7, Lcom/dmm/games/android/volley/toolbox/JsonObjectRequest;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->buildEndpoint()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$1;

    invoke-direct {v5, p0}, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$1;-><init>(Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;)V

    new-instance v6, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$2;

    invoke-direct {v6, p0}, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$2;-><init>(Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/dmm/games/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/dmm/games/android/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)Lcom/dmm/games/android/volley/Request;

    invoke-virtual {v0, v7}, Lcom/dmm/games/android/volley/RequestQueue;->add(Lcom/dmm/games/android/volley/Request;)Lcom/dmm/games/android/volley/Request;

    return-void

    :cond_0
    new-instance v0, Lcom/dmm/android/api/error/DmmApiRuntimeException;

    const-string v1, "Uninitialized Request Queue"

    invoke-direct {v0, v1}, Lcom/dmm/android/api/error/DmmApiRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setCallback(Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;)Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;->mCallback:Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
