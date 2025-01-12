.class public Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;
.super Ljava/lang/Object;
.source "DmmMakeRequestParameter.java"

# interfaces
.implements Lcom/dmm/android/api/opensocial/DmmParameterHelper;


# instance fields
.field private mCallbackUrl:Ljava/lang/String;

.field private mPostData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSignaturePublicKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;->mPostData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized addPostData(Ljava/lang/String;Ljava/lang/String;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;->mPostData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object p0
.end method

.method public declared-synchronized addPostData(Ljava/util/Map;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;->addPostData(Ljava/lang/String;Ljava/lang/String;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    monitor-exit p0

    return-object p0
.end method

.method public declared-synchronized clearPostData()Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;->mPostData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getCallbackUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;->mCallbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;

    const-string v1, "getParameterMap method is not supported in this class"

    invoke-direct {v0, v1}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method declared-synchronized getPostData()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;->mPostData:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getSignaturePublicKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;->mSignaturePublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public setCallbackUrl(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;->mCallbackUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setOAuthSignaturePublicKey(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;->mSignaturePublicKey:Ljava/lang/String;

    return-object p0
.end method
