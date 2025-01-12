.class public Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;
.super Lcom/dmm/games/android/volley/toolbox/JsonObjectRequest;
.source "DmmOAuthJsonObjectRequest.java"

# interfaces
.implements Lcom/dmm/android/net/volley/oauth/DmmOAuthRequest;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/dmm/games/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/dmm/games/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/dmm/games/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/dmm/games/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/dmm/games/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v2, v0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dmm/games/android/volley/AuthFailureError;
        }
    .end annotation

    invoke-super {p0}, Lcom/dmm/games/android/volley/toolbox/JsonObjectRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
