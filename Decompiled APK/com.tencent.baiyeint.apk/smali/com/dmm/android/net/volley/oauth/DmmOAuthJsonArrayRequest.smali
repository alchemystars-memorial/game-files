.class public Lcom/dmm/android/net/volley/oauth/DmmOAuthJsonArrayRequest;
.super Lcom/dmm/games/android/volley/toolbox/JsonArrayRequest;
.source "DmmOAuthJsonArrayRequest.java"

# interfaces
.implements Lcom/dmm/android/net/volley/oauth/DmmOAuthRequest;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dmm/games/android/volley/Response$Listener<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/dmm/games/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/dmm/games/android/volley/toolbox/JsonArrayRequest;-><init>(Ljava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

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

    invoke-super {p0}, Lcom/dmm/games/android/volley/toolbox/JsonArrayRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
