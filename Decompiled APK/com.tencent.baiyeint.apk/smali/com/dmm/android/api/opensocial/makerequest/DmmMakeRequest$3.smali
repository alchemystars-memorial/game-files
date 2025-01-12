.class Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$3;
.super Ljava/lang/Object;
.source "DmmMakeRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->connectAsyncWithSecurityTokenUpdate(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

.field final synthetic val$callback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

.field final synthetic val$networkCallback:Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;


# direct methods
.method constructor <init>(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$3;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    iput-object p2, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$3;->val$callback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    iput-object p3, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$3;->val$networkCallback:Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/dmm/android/concurrent/DmmApiMutex;->getInstance()Lcom/dmm/android/concurrent/DmmApiMutex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/concurrent/DmmApiMutex;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$3;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    new-instance v1, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;-><init>(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;)V

    invoke-static {v0, v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$002(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$3;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$000(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$3;->val$callback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    invoke-static {v0, v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->access$202(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    new-instance v0, Lcom/dmm/android/api/mobile/user/st/DmmUserStRequestCreateHelper;

    invoke-static {}, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->getInstance()Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dmm/android/api/mobile/DmmMobileApiEndpoint;->getUserStEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dmm/android/api/mobile/user/st/DmmUserStRequestCreateHelper;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/dmm/android/auth/DmmAuthData;->getInstance()Lcom/dmm/android/auth/DmmAuthData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dmm/android/auth/DmmAuthData;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/android/api/mobile/user/st/DmmUserStRequestCreateHelper;->setUniqueID(Ljava/lang/String;)V

    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->clearOAuthToken()V

    new-instance v1, Lcom/dmm/android/api/mobile/DmmApiRequest;

    iget-object v2, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$3;->val$networkCallback:Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;

    invoke-direct {v1, v0, v2}, Lcom/dmm/android/api/mobile/DmmApiRequest;-><init>(Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;)V

    new-instance v0, Lcom/dmm/android/sdk/olgid/net/volley/DmmOlgIdRetryPolicy;

    invoke-direct {v0}, Lcom/dmm/android/sdk/olgid/net/volley/DmmOlgIdRetryPolicy;-><init>()V

    invoke-virtual {v1, v0}, Lcom/dmm/android/api/mobile/DmmApiRequest;->setRetryPolicy(Lcom/dmm/games/android/volley/RetryPolicy;)Lcom/dmm/android/api/mobile/DmmApiRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$3;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$000(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dmm/android/api/mobile/DmmApiRequest;->getRequest()Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->access$302(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;Lcom/dmm/games/android/volley/Request;)Lcom/dmm/games/android/volley/Request;

    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->getInstance()Lcom/dmm/games/android/volley/RequestQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$3;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$000(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    move-result-object v1

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->access$300(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;)Lcom/dmm/games/android/volley/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/games/android/volley/RequestQueue;->add(Lcom/dmm/games/android/volley/Request;)Lcom/dmm/games/android/volley/Request;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;

    invoke-direct {v1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;-><init>()V

    sget-object v2, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;->Failure:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    invoke-virtual {v1, v2}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setKind(Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;)V

    new-instance v2, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;

    const-string v3, "Interrupted during mutex acquiring."

    sget-object v4, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;->Interrupted:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    invoke-direct {v2, v3, v0, v4}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;)V

    invoke-virtual {v1, v2}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setCause(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$3;->val$callback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$3;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-interface {v0, v2, v1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;->onFailure(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;)V

    :cond_0
    return-void
.end method
