.class Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$1;
.super Ljava/lang/Object;
.source "DmmOpenSocialApiImpl.java"

# interfaces
.implements Lcom/dmm/games/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dmm/games/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;


# direct methods
.method constructor <init>(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$1;->this$1:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$1;->this$1:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;

    iget-object v0, v0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$1;->this$1:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;

    iget-object v1, v1, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->access$000(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;)Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$1;->this$1:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;

    iget-object v2, v2, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    invoke-static {v2}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->access$000(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;)Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$1;->this$1:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;

    iget-object v2, v2, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->access$002(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;)Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/dmm/android/concurrent/DmmApiMutex;->getInstance()Lcom/dmm/android/concurrent/DmmApiMutex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/concurrent/DmmApiMutex;->release()V

    new-instance v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;

    invoke-direct {v0}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;-><init>()V

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;->access$400(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setHttpStatus(I)V

    invoke-virtual {v0, p1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setJsonResponse(Lorg/json/JSONObject;)V

    sget-object p1, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;->Success:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    invoke-virtual {v0, p1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setKind(Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;)V

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;->access$200(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;)Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;->access$200(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;)Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    move-result-object p1

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$1;->this$1:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;

    iget-object v1, v1, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    invoke-interface {p1, v1, v0}, Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;->onSuccess(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
