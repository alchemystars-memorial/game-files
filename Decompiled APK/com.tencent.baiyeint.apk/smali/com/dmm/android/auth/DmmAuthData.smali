.class public Lcom/dmm/android/auth/DmmAuthData;
.super Ljava/lang/Object;
.source "DmmAuthData.java"


# static fields
.field private static sInstance:Lcom/dmm/android/auth/DmmAuthData;


# instance fields
.field private mSecureId:Ljava/lang/String;

.field private mUniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearInstance()V
    .locals 2

    const-class v0, Lcom/dmm/android/auth/DmmAuthData;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/dmm/android/auth/DmmAuthData;->sInstance:Lcom/dmm/android/auth/DmmAuthData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/dmm/android/auth/DmmAuthData;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmm/android/auth/DmmAuthData;->sInstance:Lcom/dmm/android/auth/DmmAuthData;

    if-nez v1, :cond_0

    new-instance v1, Lcom/dmm/android/auth/DmmAuthData;

    invoke-direct {v1}, Lcom/dmm/android/auth/DmmAuthData;-><init>()V

    sput-object v1, Lcom/dmm/android/auth/DmmAuthData;->sInstance:Lcom/dmm/android/auth/DmmAuthData;

    iput-object p0, v1, Lcom/dmm/android/auth/DmmAuthData;->mUniqueId:Ljava/lang/String;

    iput-object p1, v1, Lcom/dmm/android/auth/DmmAuthData;->mSecureId:Ljava/lang/String;
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

.method public static declared-synchronized getInstance()Lcom/dmm/android/auth/DmmAuthData;
    .locals 2

    const-class v0, Lcom/dmm/android/auth/DmmAuthData;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmm/android/auth/DmmAuthData;->sInstance:Lcom/dmm/android/auth/DmmAuthData;
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
.method public getSecureId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/auth/DmmAuthData;->mSecureId:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/auth/DmmAuthData;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/auth/DmmAuthData;->mUniqueId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/auth/DmmAuthData;->mSecureId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
