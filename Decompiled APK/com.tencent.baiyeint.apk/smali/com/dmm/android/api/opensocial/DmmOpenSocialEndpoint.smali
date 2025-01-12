.class public Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;
.super Ljava/lang/Object;
.source "DmmOpenSocialEndpoint.java"


# static fields
.field private static final MAKE_REQUEST_API_PATH:Ljava/lang/String; = "/gadgets/makeRequest"

.field private static sInstance:Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;


# instance fields
.field private mHost:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mScheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;
    .locals 2

    const-class v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->sInstance:Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;

    if-nez v1, :cond_0

    new-instance v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;

    invoke-direct {v1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;-><init>()V

    sput-object v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->sInstance:Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;

    iput-object p0, v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->mScheme:Ljava/lang/String;

    iput-object p1, v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->mHost:Ljava/lang/String;

    iput-object p2, v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->mPath:Ljava/lang/String;

    :cond_0
    sget-object p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->sInstance:Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance()Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;
    .locals 2

    const-class v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->sInstance:Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;
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
.method public getEndpoint()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->mScheme:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->mHost:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->mPath:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->mScheme:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->mHost:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->mPath:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "%s://%s%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMakeRequestEndpoint()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->mScheme:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->mHost:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->mScheme:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->mHost:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "/gadgets/makeRequest"

    aput-object v3, v1, v2

    const-string v2, "%s://%s%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
