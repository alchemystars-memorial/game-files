.class Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$2;
.super Ljava/lang/Object;
.source "DmmMakeRequest.java"

# interfaces
.implements Lcom/dmm/games/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;


# direct methods
.method constructor <init>(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$2;->this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/dmm/games/android/volley/VolleyError;)V
    .locals 4

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$2;->this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;

    iget-object v0, v0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$2;->this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;

    iget-object v1, v1, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$000(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$2;->this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;

    iget-object v2, v2, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-static {v2}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$000(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$2;->this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;

    iget-object v2, v2, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$002(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/dmm/android/concurrent/DmmApiMutex;->getInstance()Lcom/dmm/android/concurrent/DmmApiMutex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/concurrent/DmmApiMutex;->release()V

    new-instance v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;

    invoke-direct {v0}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;-><init>()V

    sget-object v2, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;->Failure:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    invoke-virtual {v0, v2}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setKind(Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;)V

    iget-object v2, p1, Lcom/dmm/games/android/volley/VolleyError;->networkResponse:Lcom/dmm/games/android/volley/NetworkResponse;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/dmm/games/android/volley/VolleyError;->networkResponse:Lcom/dmm/games/android/volley/NetworkResponse;

    iget v2, v2, Lcom/dmm/games/android/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v0, v2}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setHttpStatus(I)V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setCause(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->access$200(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;)Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->access$200(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;)Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    move-result-object p1

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$2;->this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;

    iget-object v1, v1, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-interface {p1, v1, v0}, Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;->onFailure(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
