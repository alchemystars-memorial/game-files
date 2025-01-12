.class public Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;
.super Ljava/lang/Object;
.source "DmmOlgIdEndpoint.java"


# static fields
.field private static sInstance:Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;


# instance fields
.field private mApplicationID:Ljava/lang/String;

.field private mConfig:Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;

.field private mSandbox:Z


# direct methods
.method private constructor <init>(ZLjava/lang/String;Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;->mSandbox:Z

    iput-object p2, p0, Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;->mApplicationID:Ljava/lang/String;

    iput-object p3, p0, Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;->mConfig:Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;

    return-void
.end method

.method public static declared-synchronized createInstance(ZLjava/lang/String;Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;)Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;
    .locals 2

    const-class v0, Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;->sInstance:Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;

    if-nez v1, :cond_3

    new-instance v1, Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;

    invoke-direct {v1, p0, p1, p2}, Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;-><init>(ZLjava/lang/String;Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;)V

    sput-object v1, Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;->sInstance:Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getOpenSocialScheme()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getOpenSocialHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, p0

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getOpenSocialPath()Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-static {p1, v1, p0}, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;

    :cond_3
    sget-object p0, Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;->sInstance:Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance()Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;
    .locals 2

    const-class v0, Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;->sInstance:Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getApplicationID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;->mApplicationID:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterProfileURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;->mConfig:Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dmm/android/api/mobile/config/DmmConfigGetResponse;->getRegisterProfileURL()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isSandbox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dmm/android/sdk/olgid/net/DmmOlgIdEndpoint;->mSandbox:Z

    return v0
.end method
