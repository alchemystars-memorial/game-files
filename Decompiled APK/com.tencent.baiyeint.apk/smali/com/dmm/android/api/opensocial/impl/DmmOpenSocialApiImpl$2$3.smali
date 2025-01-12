.class Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$3;
.super Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;
.source "DmmOpenSocialApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;


# direct methods
.method constructor <init>(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;ILjava/lang/String;Lorg/json/JSONObject;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V
    .locals 6

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$3;->this$1:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

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
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$3;->this$1:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;

    iget-object v0, v0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->access$000(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;)Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2$3;->this$1:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;

    iget-object v0, v0, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$2;->this$0:Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;->access$000(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl;)Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v1, p1, Lcom/dmm/games/android/volley/NetworkResponse;->statusCode:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f4

    :goto_0
    invoke-static {v0, v1}, Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;->access$402(Lcom/dmm/android/api/opensocial/impl/DmmOpenSocialApiImpl$RequestInternal;I)I

    :cond_1
    invoke-super {p0, p1}, Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;->parseNetworkResponse(Lcom/dmm/games/android/volley/NetworkResponse;)Lcom/dmm/games/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
