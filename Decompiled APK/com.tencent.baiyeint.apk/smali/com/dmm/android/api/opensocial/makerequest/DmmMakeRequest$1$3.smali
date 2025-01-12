.class Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$3;
.super Lcom/dmm/android/net/volley/oauth/DmmOAuthStringRequest;
.source "DmmMakeRequest.java"


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
.method constructor <init>(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;ILjava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$3;->this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/dmm/android/net/volley/oauth/DmmOAuthStringRequest;-><init>(ILjava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected parseNetworkResponse(Lcom/dmm/games/android/volley/NetworkResponse;)Lcom/dmm/games/android/volley/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/android/volley/NetworkResponse;",
            ")",
            "Lcom/dmm/games/android/volley/Response<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$3;->this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;

    iget-object v0, v0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$000(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1$3;->this$1:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;

    iget-object v0, v0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;->this$0:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->access$000(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v1, p1, Lcom/dmm/games/android/volley/NetworkResponse;->statusCode:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f4

    :goto_0
    invoke-static {v0, v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->access$402(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;I)I

    :cond_1
    invoke-super {p0, p1}, Lcom/dmm/android/net/volley/oauth/DmmOAuthStringRequest;->parseNetworkResponse(Lcom/dmm/games/android/volley/NetworkResponse;)Lcom/dmm/games/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
