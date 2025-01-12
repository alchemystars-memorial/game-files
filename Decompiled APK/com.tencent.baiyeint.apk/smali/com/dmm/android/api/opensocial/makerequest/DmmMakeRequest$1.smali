.class Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;
.super Ljava/lang/Object;
.source "DmmMakeRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->connectAsyncWithoutSecurityTokenUpdate(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

.field final synthetic val$callback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

.field final synthetic val$queue:Lcom/dmm/games/android/volley/RequestQueue;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;Ljava/lang/String;Lcom/dmm/games/android/volley/RequestQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    iput-object p2, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->val$callback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    iput-object p3, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->val$queue:Lcom/dmm/games/android/volley/RequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    invoke-static {}, Lcom/dmm/android/concurrent/DmmApiMutex;->getInstance()Lcom/dmm/android/concurrent/DmmApiMutex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/concurrent/DmmApiMutex;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->setOAuthToken()V

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    new-instance v1, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;-><init>(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;)V

    invoke-static {v0, v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$002(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$000(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->val$callback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    invoke-static {v0, v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->access$202(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$000(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    move-result-object v0

    new-instance v7, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$3;

    sget-object v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;->Post:Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;

    invoke-virtual {v1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;->get()I

    move-result v3

    iget-object v4, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->val$url:Ljava/lang/String;

    new-instance v5, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$1;

    invoke-direct {v5, p0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$1;-><init>(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;)V

    new-instance v6, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$2;

    invoke-direct {v6, p0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$2;-><init>(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;)V

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$3;-><init>(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;ILjava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    invoke-static {v0, v7}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->access$302(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;Lcom/dmm/games/android/volley/Request;)Lcom/dmm/games/android/volley/Request;

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$000(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    move-result-object v0

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->access$300(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;)Lcom/dmm/games/android/volley/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$600(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$600(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/dmm/games/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/dmm/games/android/volley/Request;

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->val$queue:Lcom/dmm/games/android/volley/RequestQueue;

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$000(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    move-result-object v1

    invoke-static {v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->access$300(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;)Lcom/dmm/games/android/volley/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/games/android/volley/RequestQueue;->add(Lcom/dmm/games/android/volley/Request;)Lcom/dmm/games/android/volley/Request;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;

    sget-object v2, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;->Interrupted:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    const-string v3, "Interrupted during mutex acquiring."

    invoke-direct {v1, v3, v0, v2}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;)V

    throw v1
.end method
