.class Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;
.super Ljava/lang/Object;
.source "DmmOpenSocialApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->connectAsync(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

.field final synthetic val$callback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

.field final synthetic val$json:Lorg/json/JSONObject;

.field final synthetic val$queue:Lcom/dmm/games/android/volley/RequestQueue;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;Ljava/lang/String;Lorg/json/JSONObject;Lcom/dmm/games/android/volley/RequestQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    iput-object p2, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->val$callback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    iput-object p3, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->val$json:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->val$queue:Lcom/dmm/games/android/volley/RequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    invoke-static {}, Lcom/dmm/android/concurrent/DmmApiMutex;->getInstance()Lcom/dmm/android/concurrent/DmmApiMutex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/concurrent/DmmApiMutex;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    iget-object v0, v0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mType:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$RequestType;

    sget-object v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$RequestType;->Request:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$RequestType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->setOAuthToken()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->clearOAuthToken()V

    :goto_0
    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    new-instance v1, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;-><init>(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$1;)V

    invoke-static {v0, v1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->access$002(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;)Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->access$000(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;)Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->val$callback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    invoke-static {v0, v1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;->access$202(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->access$000(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;)Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    move-result-object v0

    new-instance v8, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$3;

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    iget-object v1, v1, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->mMethod:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    invoke-virtual {v1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;->get()I

    move-result v3

    iget-object v4, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->val$url:Ljava/lang/String;

    iget-object v5, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->val$json:Lorg/json/JSONObject;

    new-instance v6, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$1;

    invoke-direct {v6, p0}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$1;-><init>(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;)V

    new-instance v7, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$2;

    invoke-direct {v7, p0}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$2;-><init>(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;)V

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$3;-><init>(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;ILjava/lang/String;Lorg/json/JSONObject;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    invoke-static {v0, v8}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;->access$302(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;Lcom/dmm/games/android/volley/Request;)Lcom/dmm/games/android/volley/Request;

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->access$000(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;)Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    move-result-object v0

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;->access$300(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;)Lcom/dmm/games/android/volley/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->access$500(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->access$500(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/dmm/games/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/dmm/games/android/volley/Request;

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->val$queue:Lcom/dmm/games/android/volley/RequestQueue;

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->access$000(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;)Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    move-result-object v1

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;->access$300(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;)Lcom/dmm/games/android/volley/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/games/android/volley/RequestQueue;->add(Lcom/dmm/games/android/volley/Request;)Lcom/dmm/games/android/volley/Request;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;

    invoke-direct {v1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;-><init>()V

    sget-object v2, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;->Failure:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    invoke-virtual {v1, v2}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setKind(Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;)V

    new-instance v2, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;

    sget-object v3, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;->Interrupted:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    const-string v4, "Interrupted during mutex acquiring."

    invoke-direct {v2, v4, v0, v3}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;)V

    invoke-virtual {v1, v2}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setCause(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->val$callback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    invoke-interface {v0, v2, v1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;->onFailure(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;)V

    :cond_2
    return-void
.end method
