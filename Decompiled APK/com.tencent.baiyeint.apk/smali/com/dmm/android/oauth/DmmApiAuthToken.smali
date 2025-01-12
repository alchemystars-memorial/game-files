.class public Lcom/dmm/android/oauth/DmmApiAuthToken;
.super Ljava/lang/Object;
.source "DmmApiAuthToken.java"


# static fields
.field private static sInstance:Lcom/dmm/android/oauth/DmmApiAuthToken;


# instance fields
.field private mOAuthRequesterId:Ljava/lang/String;

.field private mOAuthToken:Ljava/lang/String;

.field private mOAuthTokenSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearInstance()V
    .locals 2

    const-class v0, Lcom/dmm/android/oauth/DmmApiAuthToken;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/dmm/android/oauth/DmmApiAuthToken;->sInstance:Lcom/dmm/android/oauth/DmmApiAuthToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/dmm/android/oauth/DmmApiAuthToken;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmm/android/oauth/DmmApiAuthToken;->sInstance:Lcom/dmm/android/oauth/DmmApiAuthToken;

    if-nez v1, :cond_0

    new-instance v1, Lcom/dmm/android/oauth/DmmApiAuthToken;

    invoke-direct {v1}, Lcom/dmm/android/oauth/DmmApiAuthToken;-><init>()V

    sput-object v1, Lcom/dmm/android/oauth/DmmApiAuthToken;->sInstance:Lcom/dmm/android/oauth/DmmApiAuthToken;

    iput-object p0, v1, Lcom/dmm/android/oauth/DmmApiAuthToken;->mOAuthToken:Ljava/lang/String;

    iput-object p1, v1, Lcom/dmm/android/oauth/DmmApiAuthToken;->mOAuthTokenSecret:Ljava/lang/String;

    iput-object p2, v1, Lcom/dmm/android/oauth/DmmApiAuthToken;->mOAuthRequesterId:Ljava/lang/String;
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

.method public static declared-synchronized getInstance()Lcom/dmm/android/oauth/DmmApiAuthToken;
    .locals 2

    const-class v0, Lcom/dmm/android/oauth/DmmApiAuthToken;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmm/android/oauth/DmmApiAuthToken;->sInstance:Lcom/dmm/android/oauth/DmmApiAuthToken;
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
.method public getOAuthRequesterId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/oauth/DmmApiAuthToken;->mOAuthRequesterId:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/oauth/DmmApiAuthToken;->mOAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthTokenSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/oauth/DmmApiAuthToken;->mOAuthTokenSecret:Ljava/lang/String;

    return-object v0
.end method
