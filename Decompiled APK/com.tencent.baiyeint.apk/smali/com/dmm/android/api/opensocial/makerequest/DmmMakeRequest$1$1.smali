.class Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$1;
.super Ljava/lang/Object;
.source "DmmMakeRequest.java"

# interfaces
.implements Lcom/dmm/games/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dmm/games/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;


# direct methods
.method constructor <init>(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$1;->this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$1;->this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;

    iget-object v0, v0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$1;->this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;

    iget-object v1, v1, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$000(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$1;->this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;

    iget-object v2, v2, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-static {v2}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$000(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$1;->this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;

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

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->access$400(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setHttpStatus(I)V

    :try_start_1
    iget-object v2, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$1;->this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;

    iget-object v2, v2, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-static {v2, p1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$500(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setJsonResponse(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    sget-object p1, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;->Success:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    invoke-virtual {v0, p1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setKind(Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;)V

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->access$200(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;)Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->access$200(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;)Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    move-result-object p1

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$1;->this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;

    iget-object v1, v1, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-interface {p1, v1, v0}, Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;->onSuccess(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
