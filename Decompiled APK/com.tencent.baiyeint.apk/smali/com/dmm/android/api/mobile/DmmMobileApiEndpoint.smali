.class public Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;
.super Ljava/lang/Object;
.source "DmmMobileApiEndpoint.java"


# static fields
.field private static sInstance:Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;


# instance fields
.field private mConfigGetEndpoint:Ljava/lang/String;

.field private mUserCheckEndpoint:Ljava/lang/String;

.field private mUserStEndpoint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->sInstance:Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;

    if-nez v1, :cond_0

    new-instance v1, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;

    invoke-direct {v1}, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;-><init>()V

    sput-object v1, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->sInstance:Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;

    iput-object p0, v1, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->mConfigGetEndpoint:Ljava/lang/String;

    iput-object p1, v1, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->mUserCheckEndpoint:Ljava/lang/String;

    iput-object p2, v1, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->mUserStEndpoint:Ljava/lang/String;
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

.method public static declared-synchronized getInstance()Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;
    .locals 2

    const-class v0, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->sInstance:Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;
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
.method public getConfigGetEndpoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->mConfigGetEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCheckEndpoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->mUserCheckEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStEndpoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->mUserStEndpoint:Ljava/lang/String;

    return-object v0
.end method
